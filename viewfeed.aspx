<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewfeed.aspx.cs" Inherits="viewfeed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
        {
            text-align: left;
            height: 67px;
        width: 1320px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .style20
        {
            width: 1105px;
            text-align: center;
        }
        .style21
        {
            height: 106px;
            width: 1325px;
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style4">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="56px" 
            ImageUrl="~/bg_img/viewfeedback.png" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style21" 
            onclick="LinkButton1_Click">Back</asp:LinkButton>
    </h1>
    <br />
    <p class="style20">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 CellPadding="4" DataKeyNames="name" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" Height="30px" Width="1324px" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            HorizontalAlign="Left">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="User Name" ReadOnly="True" 
                        SortExpression="name" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="shopping_experience" 
                        HeaderText="Shopping Experience" SortExpression="shopping_experience" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="useage" HeaderText="Useage" 
                        SortExpression="useage" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="recommend" HeaderText="Recommend" 
                        SortExpression="recommend" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="product_quality" HeaderText="Product Quality" 
                        SortExpression="product_quality" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
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
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
            SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
    </asp:Content>

