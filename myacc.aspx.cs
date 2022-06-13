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

public partial class myacc : System.Web.UI.Page
{
 
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
        Panel4.Visible = true;
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Panel3.Visible = true;
        Panel4.Visible = false;
    }
}