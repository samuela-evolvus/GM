using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class feedback : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd;

    public int check_uname()
    {
        String query = "select * from feedback where name='" + Session["log"] + "'";
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
           if (check_uname() == 1)
            {
                Button2.Visible = false;
                Panel1.Visible = false;
                Label2.Text = Session["log"].ToString();
                Label3.Text = "Your feedback has been posted successfully Enjoy your shopping<br/><br/><br/><br/><br/><br/><br/>";
                return;
            }
      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue == "" || RadioButtonList2.SelectedValue == "" || RadioButtonList3.SelectedValue == "" || RadioButtonList4.SelectedValue == "" || RadioButtonList5.SelectedValue == "")
        {
            Label3.Text = "Please Select all fields...!!!";
        }
        else
        {
            String StrQueryInsert;
            StrQueryInsert = "Insert into feedback values('" + Session["log"] + "','" + RadioButtonList1.SelectedValue + "','" + RadioButtonList2.SelectedValue + "','" + RadioButtonList3.SelectedValue + "','" + RadioButtonList4.SelectedValue + "','" + RadioButtonList5.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(StrQueryInsert, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("feedback.aspx");
        }
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
}