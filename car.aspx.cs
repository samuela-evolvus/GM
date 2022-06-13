using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

public partial class car : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd;

    SqlConnection con1 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");

    int x;

    private void filldata()
    {

        SqlDataAdapter da = new SqlDataAdapter("select id,username,image,itemname,qty,qtytype,price,discount,catagory,tp from cart where username='" + Session["log"] + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }

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

    public int cartitem()
    {

        String query = "select * from cart where username='" + Session["log"] + "'";
        con.Open();

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            con.Close();
            return 1;
        }
        con.Close();

        return 0;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            filldata();

        if (cartitem() == 0)
        {
            Button3.Visible = true;
            Button2.Visible = false;
            Label15.Text = "Cart is empty Please shop and visit to cart...";
            return;
        }
        else
        {
            Button3.Visible = false;
            Button2.Visible = true;
            Label15.Text = "";
            filldata();
        }

        int tp = DataList1.Items.Count;



        Label total = DataList1.FindControl("total") as Label;

        for (int i = 0; i <= tp; i++)
        {
            int a = tp + Convert.ToInt32(total.Text);
            Label16.Text = a.ToString();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (!IsPostBack)
            filldata();

        if (cartitem() == 0)
        {
            Button3.Visible = true;
            Button2.Visible = false;
            Label15.Text = "Cart is empty Please shop and visit to cart...";
            return;
        }
        else
        {
            Button3.Visible = false;
            Button2.Visible = true;
            Label15.Text = "";
            filldata();
        }

        if (e.CommandName == "remove")
        {
            String id = ((Label)e.Item.FindControl("Label9")).Text;
            SqlCommand cmd = new SqlCommand("delete from cart where id='" + id + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            filldata();
        }

        if (e.CommandName == "pay")
        {
            String id = ((Label)e.Item.FindControl("Label14")).Text;



        }


    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
}