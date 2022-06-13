using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

public partial class billing : System.Web.UI.Page
{
    private decimal totalprice = (decimal)0.0;
    private decimal totaldiscount = (decimal)0.0;

    private void filldata()
    {
      DataTable dt = new DataTable();
      string mycon = "Data Source=HP-PC;Initial Catalog=GM;Integrated Security=True;Pooling=False";
      string query = "select id,itemname,qty,qtytype,discount,dp,price,tp,catagory from cart  where username='" + Session["log"].ToString() + "'";
      SqlConnection con = new SqlConnection(mycon);
      SqlCommand cmd = new SqlCommand();
      cmd.CommandText = query;
      cmd.Connection = con;
      SqlDataAdapter da = new SqlDataAdapter();
      da.SelectCommand = cmd;
      DataSet ds = new DataSet();
      da.Fill(dt);
      GridView1.DataSource = dt;
      GridView1.DataBind();
     
    }
  


    protected void Page_Load(object sender, EventArgs e)
    {

        Label14.Text = "GROSMAN" + DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();

        Label15.Text = Session["pay"].ToString();

        Label5.Text=DateTime.Now.Date.ToShortDateString();

        SqlConnection con1 = new SqlConnection("Data Source=HP-PC;Initial Catalog=GM;Integrated Security=True;Pooling=False");
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("select name,phonenumber,email,address from login where name='" + Session["log"].ToString() + "'", con1);
        SqlDataReader dr1 = cmd1.ExecuteReader();

        if (dr1.Read())
        {

            Label1.Text = dr1.GetValue(0).ToString();
            Label2.Text = dr1.GetValue(1).ToString();
            Label3.Text = dr1.GetValue(2).ToString();
            Label4.Text = dr1.GetValue(3).ToString();
            dr1.Close();
            con1.Close();
        }

        filldata();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=HP-PC;Initial Catalog=GM;Integrated Security=True;Pooling=False");       
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            SqlCommand cmd2 = new SqlCommand("insert into bill (id,name,number,email,address,date,itemname,qty,qtytype,discount,totaldiscount,price,totalprice,catagory,grandtotal,amountsaved,paymentmode)values('" + GridView1.Rows[i].Cells[0].Text + "','" + Label1.Text + "','" + Label2.Text + "','" + Label3.Text + "','" + Label4.Text + "','" + Label5.Text + "','" + GridView1.Rows[i].Cells[1].Text + "','" + GridView1.Rows[i].Cells[2].Text + "','" + GridView1.Rows[i].Cells[3].Text + "','" + GridView1.Rows[i].Cells[4].Text + "','" + GridView1.Rows[i].Cells[5].Text + "','" + GridView1.Rows[i].Cells[6].Text + "','" + GridView1.Rows[i].Cells[7].Text + "','" + GridView1.Rows[i].Cells[8].Text + "','" + Session["tp"].ToString() + "','" + Session["td"].ToString() + "','" + Label15.Text + "')", conn);
            conn.Open();           
            cmd2.ExecuteNonQuery();
            conn.Close();
        }

        Response.Redirect("thankyou.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("cart.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totalprice += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "tp"));
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {

            e.Row.Cells[7].Text = totalprice.ToString();
            Session["tp"] = e.Row.Cells[7].Text;
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            totaldiscount += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "dp"));
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {

            e.Row.Cells[5].Text = totaldiscount.ToString();
            Session["td"] = e.Row.Cells[5].Text;
        }
    }
}