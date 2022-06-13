using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            this.Label1.Text = string.Format("Welcome: {0}", Session["admin"].ToString());
            Button1.Visible = true;
        }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("admin");
        Response.Redirect("adminlogin.aspx");
    }
}
