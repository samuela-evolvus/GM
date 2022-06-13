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

public partial class adminhome : System.Web.UI.Page
{
    private SqlConnection con2 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");

    int qty;
    private int id;
    private object dt;

    

    public void filldata1()
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select itemname,qty from adminitem where qty='" + 0 + "'", con2);
        DataSet ds = new DataSet();   
        da1.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        filldata1();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from adminitem where qty='" + 0 + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (!dr.HasRows)
        {
            Panel2.Visible = false;
            Label2.Visible = false;
        }
        else
        {
            Panel2.Visible = true;
            Label2.Visible = true;
        }

        dr.Close();
        con.Close();

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adminadd.aspx");
    }
    
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admindel.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adminedit.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("viewreport.aspx");
    }
   
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(".aspx");
    }
 
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("offerupdate.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("viewfeed.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("stock.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("customersbooking.aspx");
    }
}