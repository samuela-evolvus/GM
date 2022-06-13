using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class adminadd : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlConnection con1 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd;
    private SqlCommand cmd1;
    int x;
    private int i;

    public int getslno(int i)
    {
        con1.Open();
        SqlCommand cmd1 = con1.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select * from adminitem";
        cmd1.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            x = Convert.ToInt32(dr["num"].ToString());
        }
        return x;
    }


    protected void Page_Load(object sender, EventArgs e)
    {

        x = getslno(i);
        if (i<x)
        {
            x++;
           TextBox1.Text = x.ToString();
        }

    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {

        Label1.Text = "";
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || FileUpload1.FileName == "")
        {
            Label1.Text = "*All fields mandatory...";
            return;
        }
        FileUpload1.SaveAs(Server.MapPath("~/uploads/" + FileUpload1.FileName));
        String pic1 = "~/uploads/" + FileUpload1.FileName;
        cmd = new SqlCommand("insert into adminitem values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + pic1 + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + TextBox6.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Items Added Successfully.....";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        Response.Redirect("adminadd.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}