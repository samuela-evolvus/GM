using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
{
    private SqlConnection con;
    private SqlCommand cmd;
    private SqlDataReader dr;

    public int check_uname()
    {
        String query = "select * from login where name='" + TextBox1.Text + "'";
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
        con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (check_uname() == 1)
        {
            Label1.Text = "*Username already exists...";
            return;
        }
        Label1.Text = "";
        if (TextBox2.Text != TextBox3.Text)
        {
            Label1.Text = "password mismatch.....";
            return;
        }

        Label1.Text = "";
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
        {
            Label1.Text = "*All fields are mandatory...";
            return;
        }

        con.Open();
        cmd = new SqlCommand("insert into login values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("login.aspx");
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}