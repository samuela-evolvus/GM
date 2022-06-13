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

public partial class cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd;

    SqlConnection con1 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");

    private void filldata()
    {

        SqlDataAdapter da = new SqlDataAdapter("select id,username,image,itemname,qty,qtytype,price,discount,catagory,tp from cart where username='" + Session["log"] + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();  
    }

     private void total()
    {


        SqlConnection conn = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True"); 
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter("SELECT SUM(tp) FROM cart where username='" + Session["log"] + "'", conn);
        conn.Close();
        DataTable dt = new DataTable();
        sda.Fill(dt);
        Label15.Text = dt.Rows[0][0].ToString();

    }


    public int cartitem()
    {

        String query = "select * from cart where username='" + Session["log"] + "'";
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
        if (!IsPostBack)
            filldata();

        if (cartitem() == 0)
        {
            Button3.Visible = true;
            Button2.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Label13.Text = "Cart is empty Please shop and visit to cart...";
            return;
        }
        else
        {
            Button3.Visible = true;
            Button2.Visible = true;
            Label17.Visible = true;
            Label18.Visible = true;
            Label13.Text = "";
            filldata();
        }

        total();

        Label16.Text = DataList1.Items.Count.ToString();

    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
        Session["payment"] = Label15.Text;
    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "remove")
        {
            String id = ((Label)e.Item.FindControl("Label9")).Text;
            SqlCommand cmd = new SqlCommand("delete from cart where id='" + id + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            filldata();
        }

       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userhome.aspx");
    }


    protected void DataList1_Load(object sender, EventArgs e)
    {

    }
}