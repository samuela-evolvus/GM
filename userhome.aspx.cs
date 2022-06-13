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

public partial class userhome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlConnection con2 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlConnection con3 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
     private SqlConnection con4 = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd2;
    private SqlCommand cmd;

    int qty;
    private int id;
    private object dt;

    public void filldata()
    {
        SqlDataAdapter da1= new SqlDataAdapter("select num,image,itemname,qty,qtytype,price,discount,catagory,description from adminitem", con);
        DataSet ds = new DataSet();
        da1.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        DataList1.Visible = true;
        Label11.Visible = false;
    }
   
    public void filldata1()
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select num,image,itemname,qty,qtytype,price,discount,catagory,description from adminitem where catagory='"+DropDownList1.SelectedItem+"'", con);
        DataSet ds = new DataSet();
        da1.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        DataList1.Visible = true;
        Label11.Visible = false;
    }

    public void filldata2()
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select num,image,itemname,qty,qtytype,price,discount,catagory,description from adminitem where itemname='" + TextBox1.Text + "'", con);
        DataSet ds = new DataSet();
        da1.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        DataList1.Visible = true;
        Label11.Visible = false;
    }


    public int checkitemname()
    {
        String query = "select * from adminitem where itemname like'" + TextBox1.Text + "'";
        con4.Open();

        SqlCommand cmd3 = new SqlCommand(query, con4);
        SqlDataReader dr = cmd3.ExecuteReader();

        if (dr.HasRows)
        {
            con4.Close();
            return 1;
        }
        con4.Close();

        return 0;
    }
    
    
    public int getqty(int id)
    {
       
        con2.Open();
        SqlCommand cmd2 = con2.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "select * from adminitem";
        cmd2.ExecuteNonQuery();
        con2.Close();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            qty = Convert.ToInt32(dr["qty"].ToString());
        }
        return qty;

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con22 = new SqlConnection("Data Source=HP-PC;Initial Catalog=GM;Integrated Security=True;Pooling=False");
        con22.Open();
        SqlCommand cmd1 = new SqlCommand("select news1,news2,news3,news4,news5 from updates where id='" + 1 + "'", con22);
        SqlDataReader dr1 = cmd1.ExecuteReader();

        if (dr1.Read())
        {

            Label3.Text = dr1.GetValue(0).ToString();
            Label4.Text = dr1.GetValue(1).ToString();
            Label5.Text = dr1.GetValue(2).ToString();
            Label1.Text = dr1.GetValue(3).ToString();
            Label6.Text = dr1.GetValue(4).ToString();
            dr1.Close();
            con22.Close();
        }
        if (DropDownList1.Text == "All")
        {
            filldata();
            foreach (DataListItem item in DataList1.Items)
            {
                LinkButton lb7 = item.FindControl("LinkButton7") as LinkButton;
                Label l3 = item.FindControl("Label10") as Label;
                Label q = item.FindControl("Label4") as Label;
                if (q.Text == "0")
                {
                    l3.Visible = true;
                    l3.Text = "stock not availabel";
                    lb7.Visible = false;
                }

            }
        }
        else
        {
            filldata1();
            foreach (DataListItem item in DataList1.Items)
            {
                LinkButton lb7 = item.FindControl("LinkButton7") as LinkButton;
                Label l3 = item.FindControl("Label10") as Label;
                Label q = item.FindControl("Label4") as Label;
                if (q.Text == "0")
                {
                    l3.Visible = true;
                    l3.Text = "stock not availabel";
                    lb7.Visible = false;
                }

            }
        }
    }
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["item"] = DataList.SelectCommandName.Equals("product");
        Response.Redirect("itemsbook.aspx");
    }

    protected void DataList1_ItemCommand2(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "cart")
        {
            string cart = ((LinkButton)e.Item.FindControl("LinkButton7")).Text;
            Session["it"] = ((Label)e.Item.FindControl("Label2")).Text;
            Session["dis"] = ((Label)e.Item.FindControl("Label6")).Text;
            Session["pri"] = ((Label)e.Item.FindControl("Label7")).Text;
            Session["cat"] = ((Label)e.Item.FindControl("Label8")).Text;
            Session["qty"] = ((Label)e.Item.FindControl("Label5")).Text;
            Session["num"] = ((Label)e.Item.FindControl("Label3")).Text;
            Session["img"] = ((Image)e.Item.FindControl("Image5")).ImageUrl;
            Session["des"] = ((Label)e.Item.FindControl("Label9")).Text;
            Response.Redirect("product.aspx");

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       

        if (checkitemname() == 1)
        {
            filldata2();
        }
        else
        {
            Label11.Text = TextBox1.Text + " " + "Product does not availabel";
            DataList1.Visible = false;
            Label11.Visible = true;
            TextBox1.Text = "";
        }
     
   }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
