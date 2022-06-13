using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{

    SqlConnection Conn = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");
    SqlConnection Conn1 = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");
    SqlConnection Conn2 = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");
    SqlConnection Conn3 = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");


    public int checkemail()
    {
        String query = "select * from login where email='" + TextBox1.Text + "'";
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

    public int check_uname()
    {
        String query = "select * from login where name='" + TextBox1.Text + "'";
        Conn1.Open();

        SqlCommand cmd = new SqlCommand(query, Conn1);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            Conn1.Close();
            return 1;
        }
        Conn1.Close();
        return 0;
    }

    public int check_admin()
    {
        String query = "select * from admin where empid='" + TextBox1.Text + "'";
        Conn3.Open();

        SqlCommand cmd = new SqlCommand(query, Conn3);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            Conn3.Close();
            return 1;
        }
        Conn3.Close();
        return 0;
    }

    public int checkphonenumber()
    {
        String query = "select * from admin where empid='" + TextBox3.Text + "' and name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        Conn2.Open();

        SqlCommand cmd = new SqlCommand(query, Conn2);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            Conn2.Close();
            return 1;
        }
        Conn2.Close();
        return 0;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (check_admin() == 0)
        {

        }


        String query = "select * from login where name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        
        Label1.Text = "";
        if (dr.HasRows)
        {
            Session["log"] = TextBox1.Text;
            Conn.Close();
            Response.Redirect("userhome.aspx");
        }
        else if (check_uname() == 1)
        {
            Session["log"] = TextBox1.Text;
            Label1.Text = "Incorrect Password";
            LinkButton1.Visible = true;
        }
        else
        {
            Label1.Text = "Invalid login Please check your Username/Password...";
            LinkButton1.Visible = true;
        }

        Conn.Close();

       

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        RegularExpressionValidator1.Enabled = true;
        TextBox1.Text = "";
        Label2.Visible = false;
        Label3.Visible = false;
        TextBox2.Visible = false;
        LinkButton1.Visible = false;
        Label4.Visible = true;
        Label1.Visible = false;
        Button1.Visible = false;
        Button2.Visible = false;
        Button3.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        
          RegularExpressionValidator1.Enabled = false;
        
        Label5.Text = "";
        if (checkemail() == 0)
        {
            Label5.Text = "*Email does not exists...";
            return;
        }
        else if(checkemail() == 1)
        {
            TextBox1.Text = Session["log"].ToString();
            TextBox1.ReadOnly = true;
            Button3.Visible = false;
            Label4.Visible = false;
            TextBox2.Visible = true;
            Button4.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label6.Visible = true;
            TextBox3.Visible = true;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != TextBox3.Text)
        {
            Label5.Text = "password mismatch.....";
            return;
        }

        String query;
        query = "update login set password='" + TextBox2.Text + "' where name='" + TextBox1.Text + "'";

        SqlCommand cmd = new SqlCommand(query, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();
        TextBox1.Text = "";
        TextBox1.ReadOnly = false;
        TextBox1.Text = Session["log"].ToString();
        Button3.Visible = false;
        Label4.Visible = false;
        TextBox2.Visible = true;
        Button4.Visible = false;
        Label2.Visible = true;
        Label3.Visible = true;
        Label6.Visible = false;
        TextBox3.Visible = false;
        Button1.Visible = true;
        Button2.Visible = true;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}