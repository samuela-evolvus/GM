<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 899px;
        }
        .style4
        {
            text-align: left;
            height: 67px;
        width: 1320px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .style5
        {
            font-size: x-large;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            text-align: left;
            height: 30px;
        }
        .style8
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="56px" 
            ImageUrl="~/bg_img/viewfeedback.png" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style5" 
            onclick="LinkButton1_Click">Back</asp:LinkButton>
    </h1>
    <p class="style8">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="name" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" Height="30px" Width="1324px" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="User Name" ReadOnly="True" 
                        SortExpression="name" />
                    <asp:BoundField DataField="shopping_experience" 
                        HeaderText="Shopping Experience" SortExpression="shopping_experience" />
                    <asp:BoundField DataField="useage" HeaderText="Useage" 
                        SortExpression="useage" />
                    <asp:BoundField DataField="recommend" HeaderText="Recommend" 
                        SortExpression="recommend" />
                    <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" />
                    <asp:BoundField DataField="product_quality" HeaderText="Product Quality" 
                        SortExpression="product_quality" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <PagerTemplate>
                    <table class="style2">
                        <tr>
                            <td class="style1">
                                UserName</td>
                            <td class="style1">
                                Shopping Experience</td>
                            <td class="style1">
                                Product Availability</td>
                            <td class="style1">
                                Recommend</td>
                            <td class="style3">
                                Stock</td>
                            <td class="style1">
                                Product Quality</td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp; &nbsp;</td>
                            <td class="style1">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("shopping_experience") %>'></asp:Label>
                            </td>
                            <td class="style1">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("useage") %>'></asp:Label>
                            </td>
                            <td class="style1">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("recommend") %>'></asp:Label>
                            </td>
                            <td class="style3">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("stock") %>'></asp:Label>
                            </td>
                            <td class="style1">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("product_quality") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </PagerTemplate>
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                    <div class="style1">
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
            SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
    &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

