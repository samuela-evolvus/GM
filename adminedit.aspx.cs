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


public partial class adminedit : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Server=HP-PC;Database=GM;" + "Integrated Security=True");
    private SqlCommand cmd;


    private void filldata()
    {

        SqlDataAdapter da = new SqlDataAdapter("select num,image,itemname,qty,qtytype,price,discount,catagory,description from adminitem", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            filldata();
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            DataList1.EditItemIndex = e.Item.ItemIndex;
            filldata();
        }
        else if (e.CommandName == "cancel")
        {
            DataList1.EditItemIndex = -1;
            filldata();
        }
        else if (e.CommandName == "update")
        {
            string id = ((Label)e.Item.FindControl("Label9")).Text;
            string name = ((TextBox)e.Item.FindControl("TextBox2")).Text;
            string qty = ((TextBox)e.Item.FindControl("TextBox3")).Text;
            string price = ((TextBox)e.Item.FindControl("TextBox4")).Text;
            string discount = ((TextBox)e.Item.FindControl("TextBox5")).Text;
            string description = ((TextBox)e.Item.FindControl("TextBox6")).Text;
            string path = ((FileUpload)e.Item.FindControl("FileUpload1")).FileName;
            ((FileUpload)e.Item.FindControl("FileUpload1")).SaveAs(Server.MapPath("~/uploads/" + path));
            string image = "~/uploads/" + path;
            string qtytype = ((DropDownList)e.Item.FindControl("DropDownList1")).SelectedValue;
            string catagory = ((DropDownList)e.Item.FindControl("DropDownList2")).SelectedValue;
            SqlCommand cmd = new SqlCommand("update adminitem set itemname='" + name + "',qty='" + qty + "',price='" + price + "',discount='" + discount + "',image='" + image + "',catagory='" + catagory + "',qtytype='" + qtytype + "',description='" + description + "' where num='" + id + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            DataList1.EditItemIndex = -1;
            filldata();
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
    
}