using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");
    SqlConnection Conn1 = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");
    SqlConnection Conn2 = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");
    SqlConnection Conn3 = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");


    public int checkempid()
    {
        String query = "select * from admin where empid='" + TextBox1.Text + "' and name='" + TextBox2.Text + "' and password='" + TextBox3.Text + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            Conn.Close();
            return 1;
        }
        else
        {
            Conn.Close();
            return 0;
        }
    }


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String query = "select * from admin where name='" + TextBox2.Text + "' and password='" + TextBox3.Text + "' and empid='" + TextBox1.Text + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();


        Label3.Text = "";
        if (dr.HasRows)
        {
            Session["admin"] = TextBox2.Text;
            Conn.Close();
            Response.Redirect("adminhome.aspx");
        }
        else
        {
            Label3.Text = "Invalid login Please check your EmpID/Username/Password...";
        }

        Conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
}