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

public partial class admindelete : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd;

    
    private void filldata()
    {
       
        SqlDataAdapter da = new SqlDataAdapter("select num,image,itemname,qty,qtytype,price,discount,catagory from adminitem", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        filldata();
    }
   

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            String id = ((Label)e.Item.FindControl("Label9")).Text;             
            SqlCommand cmd = new SqlCommand("delete from adminitem where num='" + id + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            filldata();
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}