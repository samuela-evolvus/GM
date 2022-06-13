using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class product : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlConnection con1 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd;
    private SqlCommand cmd1;

    int p,c,tp,qty;
    decimal d;
    private int id;

    public int getqty(int id)
    {
        con1.Open();
        SqlCommand cmd2 = con1.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "select num,itemname,qty,qtytype,discount,image,catagory from adminitem where num='" + Label17.Text + "'";
        cmd2.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        da.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
            qty = Convert.ToInt32(dr["qty"].ToString());
        }
        return qty;

    }


    protected void Page_Load(object sender, EventArgs e)
    {


        Label9.Text =  DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
        Label2.Text = Session["it"].ToString();
        Label3.Text = Session["pri"].ToString();
        if (Session["dis"].ToString() == "Nill")
        {
            Label4.Text = Session["dis"].ToString();
        }
        else
        {
            Label4.Text = Session["dis"].ToString();
            Label12.Visible = true;
        }
        Label16.Text=Session["des"].ToString();
        Label5.Text = Session["cat"].ToString();
        Label7.Text = Session["qty"].ToString();
        Label17.Text = Session["num"].ToString();
        Image2.ImageUrl=Session["img"].ToString();


        qty = getqty(id);

        if (qty <= 0)
        {
            Label8.Text = "there is no available qty of this product";
        }     
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Label8.Text = "Please select the quantity";
        }
        else
        {
            string pic1 = Image2.ImageUrl;
            cmd = new SqlCommand("insert into cart values('" + Session["log"] + "','" + Label2.Text + "','" + TextBox1.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + pic1 + "','" + Label5.Text + "','" + Label7.Text + "','" + Label9.Text + "','" + Label10.Text + "','" + Label11.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label8.Text = "*Items Added To Cart Successfully.......:-)";
            Button3.Visible = true;
            Button4.Visible = true;
            Button2.Visible = false;
        }


        if (con1.State == ConnectionState.Open)
        {
            con1.Close();
        }
        
        SqlCommand cmd1 = con1.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "update adminitem set qty=qty- " + TextBox1.Text + "where num="+Label17.Text;
        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();

        }
    
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

            if (Label4.Text == "Nill")
            {
                Label4.Text = "Nill";
                p = int.Parse(Label3.Text);
                c = p * int.Parse(TextBox1.Text);
                Label10.Text = c.ToString();
                Label11.Text = "0";
                Label13.Visible = true;
                Label14.Visible = true;
            }
            else
            {
                c = int.Parse(Label3.Text) * int.Parse(TextBox1.Text);
                d = (c * int.Parse(Label4.Text) / 100);
                tp = c - Convert.ToInt32(d);
                Label11.Text = d.ToString();
                Label10.Text = tp.ToString();
                Label13.Visible = true;
                Label14.Visible = true;
            }

        }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
}
