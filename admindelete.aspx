<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admindelete.aspx.cs" Inherits="admindelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: left;
        }
        .style2
        {
            width: 100%;
            height: 186px;
        }
        .style5
        {
            text-align: center;
            width: 441px;
        }
        .style4
        {
            font-size: large;
        }
        .style8
        {
            width: 101%;
            font-size: small;
        }
        .style10
        {
            height: 24px;
        }
        .style12
        {
            height: 24px;
            text-align: right;
            width: 191px;
            }
        .style13
        {
            text-align: right;
            width: 191px;
        }
        .style15
        {
            width: 509px;
            font-size: xx-large;
        }
        .style59
        {
            width: 100%;
            height: 151px;
        }
        .style77
        {
            width: 53px;
            font-size: small;
            text-align: right;
            height: 25px;
        }
        .style78
        {
            text-align: left;
            width: 388px;
            height: 25px;
        }
        .style65
        {
            width: 53px;
            height: 23px;
            font-size: small;
            text-align: right;
        }
        .style66
        {
            text-align: left;
            height: 23px;
            width: 388px;
        }
        .style89
        {
            font-size: small;
        }
        .style84
        {
            width: 53px;
            font-size: small;
            text-align: right;
        }
        .style69
        {
            text-align: left;
            width: 388px;
        }
        .style87
        {
            width: 53px;
            font-size: small;
            text-align: right;
            height: 19px;
        }
        .style88
        {
            text-align: left;
            width: 388px;
            height: 19px;
        }
        .style86
        {
            width: 388px;
        }
        .style90
        {
            text-align: center;
            width: 399px;
            height: 106px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        DELETE ITEM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Large" 
            onclick="LinkButton4_Click">Back</asp:LinkButton>
    </h1>
                                <asp:DataList ID="DataList1" runat="server" 
        GridLines="Both" Height="16px" 
                                    Width="1265px" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        ForeColor="Black" onitemcommand="DataList1_ItemCommand" 
    CellSpacing="2" onselectedindexchanged="DataList1_SelectedIndexChanged">
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <ItemStyle BackColor="White" />
                                    <ItemTemplate>
                                        <table class="style2">
                                            <tr>
                                                <td class="style90">
                                                    <asp:Image ID="Image2" runat="server" Height="130px" 
                                                        ImageUrl='<%# Eval("image") %>' Width="160px" />
                                                </td>
                                                <td class="style15">
                                                    &nbsp;<table class="style8">
                                                        <tr>
                                                            <td class="style13">
                                                                ITEM ID:</td>
                                                            <td>
                                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("num") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                NAME:</td>
                                                            <td>
                                                                <asp:Label ID="Label8" runat="server" 
                                                                    Text='<%# Eval("itemname") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                QTY:</td>
                                                            <td>
                                                                <asp:Label ID="Label2" runat="server" 
                                                                    Text='<%# Eval("qty") %>'></asp:Label>
                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("qtytype") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                PRICE</td>
                                                            <td>
                                                                <asp:Label ID="Label3" runat="server" 
                                                                    Text='<%# Eval("price") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style12">
                                                                DISCOUNT:</td>
                                                            <td class="style10">
                                                                <asp:Label ID="Label4" runat="server" 
                                                                    Text='<%# Eval("discount") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style13">
                                                                CATAGORY:</td>
                                                            <td>
                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("catagory") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                </td>
                                                <td class="style1">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" 
                                                        CssClass="style4" Font-Bold="True" ForeColor="Red">Delete</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                </asp:DataList>
    <br />
    <br />
    <br />
        <asp:DataList ID="DataList2" runat="server" DataKeyField="num" 
            DataSourceID="SqlDataSource1" RepeatColumns="5" 
            RepeatDirection="Horizontal" 
            onitemcommand="DataList1_ItemCommand1" Width="1330px" Height="289px">
            <ItemTemplate>
                <br />
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image5" runat="server" Height="80px" 
                    ImageUrl='<%# Eval("image") %>' Width="80px" />
                <br />
                <br />
                <table class="style59">
                    <tr>
                        <td class="style77">
                            Name:</td>
                        <td class="style78">
                            <asp:Label ID="itemnameLabel" runat="server" CssClass="style82" 
                                Text='<%# Eval("itemname") %>' style="font-size: small" />
                            <asp:Label ID="Label2" runat="server" CssClass="style85" 
                                Text='<%# Eval("num") %>' Visible="False" style="font-size: small"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style65">
                            Qty:</td>
                        <td class="style66">
                            <span class="style89">1</span><asp:Label 
                                ID="qtytypeLabel" runat="server" 
                                CssClass="style82" style="font-size: small" 
                                Text='<%# Eval("qtytype") %>' />
                            <asp:Label ID="qtyLabel" runat="server" CssClass="style82" 
                                Text='<%# Eval("qty") %>' style="font-size: small" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style84">
                            Discount:</td>
                        <td class="style69">
                            <asp:Label ID="discountLabel" runat="server" CssClass="style82" 
                                Text='<%# Eval("discount") %>' style="font-size: small" />
                            <span class="style89">%</span></td>
                    </tr>
                    <tr>
                        <td class="style87">
                            Price:</td>
                        <td class="style88">
                            <asp:Label ID="priceLabel" runat="server" CssClass="style82" 
                                Text='<%# Eval("price") %>' style="font-size: small" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style65">
                            Catagory:</td>
                        <td class="style66">
                            <asp:Label ID="catagoryLabel" runat="server" CssClass="style82" 
                                Text='<%# Eval("catagory") %>' style="font-size: small" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style84">
                            &nbsp;</td>
                        <td class="style69">
                            <asp:Label ID="descriptionLabel" runat="server" CssClass="style82" 
                                Text='<%# Eval("description") %>' Visible="False" 
                                style="font-size: small" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style84">
                            &nbsp;</td>
                        <td class="style86">
                            <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="Red" 
                                Visible="False" CssClass="style89"></asp:Label>
                            <br class="style89" />
                            <asp:LinkButton ID="LinkButton7" runat="server" CommandArgument="cart" 
                                CommandName="cart" CssClass="style71" style="font-size: small">View</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
        
        
        
        SelectCommand="SELECT [itemname], [num], [qty], [price], [discount], [image], [catagory], [qtytype], [description] FROM [adminitem]">
    </asp:SqlDataSource>
    <br />
                            </asp:Content>

