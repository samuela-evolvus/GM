<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style15
    {
        text-align: center;
        width: 270px;
            height: 180px;
        }
        .style61
        {
            text-align: center;
            width: 1275px;
            height: 298px;
            font-size: x-large;
            table-layout: fixed;
        }
        .style62
        {
            font-size: large;
        }
        .style64
        {
            height: 180px;
        width: 457px;
    }
        .style66
        {
            width: 270px;
            height: 180px;
        }
        .style68
        {
            width: 100%;
        }
        .style69
        {
            width: 46px;
        }
        .style70
        {
            width: 161px;
        }
        .style71
        {
            width: 123%;
            height: 35px;
        }
        .style72
    {
        width: 1027px;
    }
        .style73
    {
        width: 1225px;
    }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" Height="35px">
        <table class="style71">
            <tr>
                <td class="style69">
                    <asp:Label ID="Label2" runat="server" Text="NOTE" 
                    Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
                <td class="style72">
                    <marquee class="style73"><asp:Panel ID="Panel2" runat="server" CssClass="style67" 
                    Height="23px">
                        <table cellpadding="0" cellspacing="0" class="style68">
                            <tr>
                                <td class="style70">
                                    The Out of Stock Product are:</td>
                                <td>
                                    <asp:DataList ID="DataList1" runat="server" 
                                    Font-Bold="True" ForeColor="Blue" Height="16px" RepeatDirection="Horizontal" 
                                    Width="16px">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server"
                                            Text='<%# Eval("itemname") %>' ForeColor="DarkBlue"></asp:Label>,
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel></marquee>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Height="392px" Width="1200px">
     <table class="style61" bordercolor="#E8E8E8" cellpadding="4" cellspacing="2" 
            frame="border" rules="all" style="border-collapse: separate; empty-cells: hide">
            <tr>
                <td class="style66">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="110px" 
                        ImageUrl="~/img/addcart.JPG" Width="130px" onclick="ImageButton1_Click" />
                    <br />
                    <br />
                    <span class="style62">ADD ITEMS</span></td>
                <td class="style66">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="110px" 
                        ImageUrl="~/img/deletecart.JPG" Width="148px" 
                        onclick="ImageButton2_Click" />
                    <br />
                    <br />
                    <span class="style62">DELETE ITEMS</span></td>
                <td class="style15">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="110px" 
                        ImageUrl="~/img/modifycart.JPG" Width="110px" 
                        onclick="ImageButton3_Click" />
                    <br />
                    <br />
                    <span class="style62">MODIFY ITEMS</span></td>
                <td class="style64">
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="110px" Width="110px" 
                        onclick="ImageButton8_Click" ImageUrl="~/img/stock.jpg" />
                    <br />
                    <br />
                    <span class="style62">STOCK</span></td>
            </tr>
            <tr>
                <td class="style66">
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="122px" 
                        ImageUrl="~/admin/report.jpg" Width="147px" onclick="ImageButton4_Click" />
                    <br />
                    <br />
                    <span class="style62">VIEW REPORT</span></td>
                <td class="style66">
                    <br />
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="81px" 
                        onclick="ImageButton7_Click" Width="92px" ImageUrl="~/img/tracking.JPG" />
                    <br />
                    <br />
                    <span class="style62">VIEW FEEDBACK</span></td>
                <td class="style66">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="100px" 
                        onclick="ImageButton6_Click" Width="100px" 
                        ImageUrl="~/img/free-offer-icon-photos-31.jpg" />
                    <br />
                    <br />
                    <span class="style62">OFFER UPDATE</span></td>
                <td>
                    <asp:ImageButton ID="ImageButton9" runat="server" 
                        onclick="ImageButton9_Click" Height="100px" ImageUrl="~/bg_img/bill.png" 
                        Width="100px" />
                    <br />
                    <br />
                    <span class="style62">BILL STATEMENT</span></td>
            </tr>
        </table>
    </asp:Panel>
       
    <br />
</asp:Content>

