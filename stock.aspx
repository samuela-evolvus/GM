<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="stock.aspx.cs" Inherits="stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            text-align: center;
        }
        .style6
        {
            text-align: left;
        }
        .style7
        {
            text-align: left;
            height: 43px;
        }
        .style12
        {
            text-align: center;
            height: 232px;
            width: 1247px;
            margin-bottom: 0px;
        }
        .style13
        {
            text-align: left;
            font-size: large;
        }
        .style14
        {
            font-size: large;
        }
        .style15
        {
            width: 98%;
        }
        .style16
        {
            width: 130px;
            text-align: center;
        }
        .style10
        {
            width: 102%;
        }
        .style9
        {
            font-size: small;
        }
        .style18
        {
            text-align: right;
            width: 100px;
        }
        .style19
        {
            text-align: center;
            height: 60px;
            width: 1249px;
        }
        .style20
        {
            font-weight: normal;
        }
        .style21
        {
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style19">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image4" runat="server" Height="50px" 
            ImageUrl="~/bg_img/stock.png" Width="165px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style14" 
            onclick="LinkButton1_Click">Back</asp:LinkButton>
    </h1>
    <p>
        <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
            GroupName="stock" oncheckedchanged="RadioButton1_CheckedChanged" 
            Text="Stock Inbound" />
&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
            GroupName="stock" oncheckedchanged="RadioButton2_CheckedChanged" 
            Text="Stock Outbound" />
    </p>
    <asp:Panel ID="Panel2" runat="server" Visible="False" Width="1256px">
        <div class="style12">
            <h1 class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h1>
            <h1 class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style21">Stock Outbound</span><br />
            </h1>
            <asp:GridView ID="GridView3" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource2" 
                ForeColor="Black" GridLines="Vertical" Height="114px" 
                onselectedindexchanged="GridView3_SelectedIndexChanged" Width="1249px" 
                ondatabound="GridView3_DataBound" onrowdatabound="GridView3_RowDataBound" 
                ShowFooter="True">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderText="Date" 
                        SortExpression="date" />
                    <asp:BoundField DataField="id" HeaderText="Product ID" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="itemname" HeaderText="Name" 
                        SortExpression="itemname" />
                    <asp:BoundField DataField="qty" HeaderText="Qty" SortExpression="qty" />
                    <asp:BoundField DataField="qtytype" HeaderText="QtyType" 
                        SortExpression="qtytype" />
                    <asp:BoundField DataField="discount" HeaderText="Discount" 
                        SortExpression="discount" />
                    <asp:BoundField DataField="price" HeaderText="Selling Price" 
                        SortExpression="price" />
                    <asp:BoundField DataField="catagory" HeaderText="Catagory" 
                        SortExpression="catagory" >
                    <FooterStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField DataField="totalprice" HeaderText="Total Sales" 
                        SortExpression="totalprice" >
                    <FooterStyle Font-Bold="True" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" 
                    Height="30px" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" 
                    Height="30px" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </asp:Panel>
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="261px" Visible="False" 
        Width="1254px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
            
            
            SelectCommand="SELECT [num], [itemname], [qty], [qtytype], [discount], [price], [catagory], [image] FROM [adminitem]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
            
            SelectCommand="SELECT [id], [itemname], [qty], [qtytype], [discount], [price], [catagory], [date], [totalprice] FROM [bill]">
        </asp:SqlDataSource>
        <h1 class="style7">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
            <span class="style21">Stock 
            Inbound</span></h1>
        <h1 class="style7">
            <span class="style14"><span class="style20">Total Number of Products=</span></span><asp:Label 
                ID="Label3" runat="server" CssClass="style14"></asp:Label>
            <br />
            <asp:DataList ID="DataList2" runat="server" DataKeyField="num" 
                DataSourceID="SqlDataSource1" GridLines="Both" RepeatColumns="5" 
                ShowFooter="False" Width="1250px" 
                onselectedindexchanged="DataList2_SelectedIndexChanged1">
                <ItemTemplate>
                    <table class="style15">
                        <tr>
                            <td class="style16">
                                <asp:Image ID="Image3" runat="server" Height="90px" 
                                    ImageUrl='<%# Eval("image") %>' Width="90px" />
                            </td>
                            <td>
                                <table class="style10">
                                    <tr>
                                        <td class="style18">
                                            <span class="style9">ProductID: </span>
                                        </td>
                                        <td class="style14">
                                            <asp:Label ID="numLabel0" runat="server" CssClass="style9" 
                                                Text='<%# Eval("num") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style18">
                                            <span class="style9">Name: </span>
                                        </td>
                                        <td class="style14">
                                            <asp:Label ID="itemnameLabel0" runat="server" CssClass="style9" 
                                                Text='<%# Eval("itemname") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style18">
                                            <span class="style9">Qty:</span></td>
                                        <td class="style14">
                                            <asp:Label ID="qtyLabel0" runat="server" CssClass="style9" 
                                                Text='<%# Eval("qty") %>' />
                                            <asp:Label ID="qtytypeLabel0" runat="server" CssClass="style9" 
                                                Text='<%# Eval("qtytype") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style18">
                                            <span class="style9">Discount: </span>
                                        </td>
                                        <td class="style14">
                                            <asp:Label ID="discountLabel0" runat="server" CssClass="style9" 
                                                Text='<%# Eval("discount") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style18">
                                            <span class="style9">Price: </span>
                                        </td>
                                        <td class="style14">
                                            <asp:Label ID="priceLabel0" runat="server" CssClass="style9" 
                                                Text='<%# Eval("price") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style18">
                                            <span class="style9">Catagory: </span>
                                        </td>
                                        <td class="style14">
                                            <asp:Label ID="catagoryLabel0" runat="server" CssClass="style9" 
                                                Text='<%# Eval("catagory") %>' />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <br />
        </h1>
        <div class="style6">
           
           
        </div>
    </asp:Panel>
    <p>
        <br />
    </p>
</asp:Content>

