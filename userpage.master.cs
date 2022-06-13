﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class userpage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["log"] != null)
        {
            this.Label1.Text = string.Format("Welcome: {0}", Session["log"].ToString());
            Button1.Visible = true;
        }


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("myacc.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("log");
        Response.Redirect("login.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("feedback.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("reports.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("aboutus.aspx");
    }
}
