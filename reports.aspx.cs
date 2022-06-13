using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class reports : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("data source=HP-PC; database=GM; integrated security=true");

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.Date.ToShortDateString() + "  " + DateTime.Now.ToShortTimeString();
        Label3.Text = "ReportID" + DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
        Label4.Text = Session["log"].ToString(); 
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.MaxLength > 50)
        {
            Label5.Text = "Please report your complaint less than 50 charecters";
        }
        else
        {
            String StrQueryInsert;
            StrQueryInsert = "Insert into report values('" + Label3.Text + "','" + Label2.Text + "','" + Label4.Text + "','" + TextBox1.Text + "')";
            SqlCommand cmd = new SqlCommand(StrQueryInsert, Conn);
            Conn.Open();
            cmd.ExecuteNonQuery();
            Conn.Close();
            TextBox1.Text = " ";
            Label5.Text = "Your Report has been successfully posted.....";
        }
    }
}