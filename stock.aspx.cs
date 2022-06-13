using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class stock : System.Web.UI.Page
{
    private decimal totalsale = (decimal)0.0;

    private SqlConnection con1 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd1;
    int x;

    private int i;
    private object dt;

    public int getslno(int i)
    {
        con1.Open();
        SqlCommand cmd1 = con1.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from adminitem";
        cmd1.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            x = Convert.ToInt32(dr["qty"].ToString());
        }
        return x;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        x = getslno(i);

        Label3.Text = DataList2.Items.Count.ToString();

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    
    }
   
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        string ts = ((Label)e.Item.FindControl("Label2")).Text;
        string st = ((Label)e.Item.FindControl("numLabel")).Text;

        int j = Convert.ToInt32(st);

        for (int i = 0; i < j; i++)
        {
            ts = i.ToString();
        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
    }
  
    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalsale += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "totalprice"));
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[7].Text = "Total Sales";
            e.Row.Cells[8].Text = totalsale.ToString();
            Session["totalprice"] = e.Row.Cells[8].Text;
        }
    }
 
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
  
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
