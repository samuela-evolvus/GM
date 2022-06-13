using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class payment : System.Web.UI.Page
{
    int tot = 0;
    string s;
    string t;
    string[] a = new string[6];
    string ordernumber;

    private void total()
    {

        SqlConnection conn = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True"); //connect to the database here
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT SUM(tp) FROM cart where username='" + Session["log"] + "'", conn);
        conn.Close();
        DataTable dt = new DataTable();
        sda.Fill(dt);
        string total = dt.Rows[0][0].ToString();

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            Session["pay"]="Cash on Delivery";
            Response.Redirect("billing.aspx");
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        ordernumber = "GROSMAN" + DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();

        Session["orderno"] = ordernumber;

        Response.Write("<form action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post' name='buycredit' id='buycredit'>");
        Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
        Response.Write("<input type='hidden' name='business' value='paypalemailid'>");
        Response.Write("<input type='hidden' name='currency_code' value='USD'>");
        Response.Write("<input type='hidden' name='itemname' value='payment for purchase'>");
        Response.Write("<input type='hidden' name='itemnumber' value='0'>");
        Response.Write("<input type='hidden' name='amount' value='total amount'>");
        Response.Write("<input type='hidden' name='return' value='http://localhost:1155/GM/billing.aspx'>");
        Response.Write("</form>");

        Response.Write("<script type='text/javascript'>");
        Response.Write("document.getElementById('buycredit').submit();");
        Response.Write("</script>");
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        Response.Write("<form action='https://tez.google.com/pay' method='post' name='buycredit' id='buycredit'>");
        Response.Write("<input type='hidden' name='pa' value='_xclick'>");
        Response.Write("<input type='hidden' name='business' value='paypalemailid'>");
        Response.Write("<input type='hidden' name='currency_code' value='USD'>");
        Response.Write("<input type='hidden' name='itemname' value='payment for purchase'>");
        Response.Write("<input type='hidden' name='itemnumber' value='0'>");
        Response.Write("<input type='hidden' name='amount' value='total amount'>");
        Response.Write("<input type='hidden' name='return' value='http://localhost:1155/GM/billing.aspx'>");
        Response.Write("</form>");

        Response.Write("<script type='text/javascript'>");
        Response.Write("document.getElementById('buycredit').submit();");
        Response.Write("</script>");
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel3.Visible = false;
    }

   
    protected void RadioButton7_CheckedChanged1(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel3.Visible = true;
        SqlConnection conn = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True"); //connect to the database here
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT SUM(tp) FROM cart where username='" + Session["log"] + "'", conn);
        conn.Close();
        DataTable dt = new DataTable();
        sda.Fill(dt);
        TextBox9.Text = dt.Rows[0][0].ToString();
    }
    protected void RadioButton5_CheckedChanged1(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Label2.Text = "Debit Card Transaction";
        SqlConnection conn = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True"); //connect to the database here
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT SUM(tp) FROM cart where username='" + Session["log"] + "'", conn);
        conn.Close();
        DataTable dt = new DataTable();
        sda.Fill(dt);
        TextBox8.Text = dt.Rows[0][0].ToString();
    }
    protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = true;
        Panel3.Visible = false;
        Label2.Text = "Credit Card Transaction";
        SqlConnection conn = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True"); //connect to the database here
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT SUM(tp) FROM cart where username='" + Session["log"] + "'", conn);
        conn.Close();
        DataTable dt = new DataTable();
        sda.Fill(dt);
        TextBox8.Text = dt.Rows[0][0].ToString();
    }
    protected void Button2_Click2(object sender, EventArgs e)
    {

        SqlConnection Conn = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");


        String query = "select * from debit where number='" + TextBox1.Text + "' and pin='" + TextBox2.Text + "' and expire='" + TextBox3.Text + "' and cvc='" + TextBox4.Text + "' and zipcode='" + TextBox5.Text + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        Label3.Text = "";

        if (dr.HasRows)
        {
            Session["pay"] = Label2.Text;
            Response.Redirect("billing.aspx");
            Conn.Close();

        }
        else
        {
            Label3.Text = "Invalid Bank Account Number/Pin/cvc/Zipcode </br>*Please Enter a valid Details";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection Conn = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");


        String query = "select * from gpay where number='" + TextBox6.Text + "' and pin='" + TextBox7.Text + "'";
        Conn.Open();

        SqlCommand cmd = new SqlCommand(query, Conn);
        SqlDataReader dr = cmd.ExecuteReader();

        Label4.Text = "";

        if (dr.HasRows)
        {
            Session["pay"] = "G-Pay";
            Response.Redirect("billing.aspx");
            Conn.Close();

        }
        else
        {
            Label4.Text = "Invalid G-Pay Registered Number/Pin </br>*Please Enter a valid Details";
        }
    }
}