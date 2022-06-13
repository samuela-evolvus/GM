using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class thankyou : System.Web.UI.Page
{
    private SqlConnection Conn = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["log"].ToString();
        Session.Remove("tp");
        Session.Remove("td");
        Session.Remove("pay");

        String query;
        query = "delete from cart where username='" + Session["log"] + "'";
        SqlCommand cmd = new SqlCommand(query, Conn);
        Conn.Open();
        cmd.ExecuteNonQuery();
        Conn.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
}