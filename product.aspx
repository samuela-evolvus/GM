<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20
        {
            width: 98%;
            height: 585px;
        }
        .style21
        {
            width: 764px;
            height: 94px;
        }
        .style22
        {
            width: 764px;
            height: 219px;
        }
        .style11
        {
            font-size: medium;
        }
        .style25
        {
            width: 99%;
        }
        .style9
        {
            font-size: x-large;
        }
        .style18
        {
            background-color: #FFFF66;
        }
        .style26
        {
            text-align: left;
        }
        .style27
        {
            width: 185px;
            text-align: left;
            height: 23px;
        }
        .style28
        {
            height: 23px;
        }
        .style29
        {
            width: 185px;
            text-align: left;
            height: 30px;
        }
        .style30
        {
            font-size: x-large;
            height: 30px;
            }
        .style33
        {
            height: 65px;
            text-align: left;
        }
        .style34
        {
            text-align: left;
            height: 23px;
        }
        .style36
        {
            font-size: xx-small;
        }
        .style38
        {
            height: 23px;
            width: 232px;
        }
        .style35
        {
            font-size: medium;
            color: #202020;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style20">
            <tr>
                <td class="style22" bordercolor="#E2E2E2">
    <p>
        &nbsp;&nbsp;
        <asp:Image 
            ID="Image2" runat="server" Height="350px" Width="720px" BorderColor="#E4E4E4" 
            BorderStyle="Ridge" BorderWidth="2px" />
    </p>
                </td>
                <td class="style22" bordercolor="#E2E2E2">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Panel ID="Panel1" runat="server" BorderColor="#E1E1E1" 
                        BorderStyle="Outset" Height="250px">
                        <strong>About</strong><br />
                        <br />
                        <asp:Label ID="Label16" runat="server" CssClass="style35"></asp:Label>
                        <br />
                        <br />
                    </asp:Panel>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style21" bordercolor="#E2E2E2" colspan="2">
                    <table class="style25" bordercolor="#E1E1E1">
                        <tr>
                            <td class="style34" colspan="3">
    <p>
        <span class="style11">Name:</span><asp:Label ID="Label2" runat="server" 
            CssClass="style11"></asp:Label>
        <asp:Label ID="Label17" runat="server" CssClass="style36" Visible="False"></asp:Label>
    </p>
                            </td>
                        </tr>
                        <tr>
                            <td class="style27">
                                <span class="style11">Discount:</span><span class="style9"><asp:Label 
            ID="Label4" runat="server" 
            CssClass="style2" style="font-size: medium"></asp:Label>
                                <strong>
        <asp:Label ID="Label12" runat="server" CssClass="style2" Visible="False" 
            style="font-size: medium">%</asp:Label>
                                &nbsp;</strong></span></td>
                            <td class="style38">
        <span class="style2"><span class="style9">
        <asp:Label ID="Label13" runat="server" Text="Discount Price:" 
            CssClass="style11" Visible="False"></asp:Label>
        </span></span><asp:Label ID="Label11" runat="server" CssClass="style11"></asp:Label>
                                &nbsp;&nbsp;</td>
                            <td class="style28">
                                <asp:Label ID="Label6" 
            runat="server" Font-Size="Large" Text="QTY:" CssClass="style2" style="font-size: medium"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" 
            AutoCompleteType="Disabled" AutoPostBack="True" 
            ontextchanged="TextBox1_TextChanged" MaxLength="2" CssClass="style18" 
            BackColor="#F0F0F0"></asp:TextBox>
&nbsp;<asp:Label ID="Label7" runat="server" CssClass="style2" style="font-size: medium"></asp:Label>
        <asp:Label ID="Label15" runat="server" CssClass="style11"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style29">
                                <span class="style11">Price:</span><asp:Label ID="Label3" runat="server" 
            CssClass="style2" style="font-size: medium"></asp:Label>
                            </td>
                            <td class="style30" colspan="2">
        <asp:Label ID="Label14" runat="server" Text="Total Price:" CssClass="style11" Visible="False"></asp:Label>
        <asp:Label ID="Label10" runat="server" CssClass="style11"></asp:Label>
                                <strong>
        &nbsp;</strong><asp:Label ID="Label9" runat="server" Visible="False" 
            CssClass="style11"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style34" colspan="3">
                                <span class="style11">Catagory:</span><asp:Label ID="Label5" runat="server" CssClass="style11"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style26" colspan="3">
        <asp:Label ID="Label8" runat="server" CssClass="style2"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style33" colspan="3">
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Height="30px" Text="Add To Cart" 
            Width="160px" onclick="Button2_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Height="30px" onclick="Button3_Click1" 
            Text="Back" Width="120px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" Height="30px" onclick="Button4_Click" 
                                    Text="View Cart" Visible="False" Width="120px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
    </p>
    </asp:Content>

