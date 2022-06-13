<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.master" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="userhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20
        {
            width: 100%;
            height: 431px;
        }
        .style21
        {
            width: 300px;
            height: 457px;
        }
        .style22
        {
            width: 101%;
            height: 330px;
        }
    .style9
    {
        margin-right: 0px;
            margin-left: 0px;
        }
        .style24
        {
            text-align: center;
            font-size: large;
            height: 60px;
            color: #0000FF;
        width: 330px;
    }
        .style25
        {
            color: #333333;
        }
        .style26
        {
            font-size: x-large;
        }
        .style17
        {
            font-size: medium;
        }
        .style29
        {
            height: 457px;
        }
        .style30
        {
            width: 99%;
            height: 140px;
            margin-top: 0px;
        }
        .style33
        {
            width: 79px;
            text-align: right;
            font-size: small;
        }
        .style34
        {
            font-size: small;
        }
        .style35
        {
            font-size: medium;
        }
        .style38
        {
            text-align: left;
            height: 63px;
        }
        .style39
        {
            font-size: xx-large;
            color: #0000FF;
            height: 23px;
        }
        .style40
        {
            width: 79px;
            text-align: right;
            font-size: small;
            height: 19px;
        }
        .style41
        {
            height: 19px;
        }
        .style42
        {
            text-align: center;
        }
        .style43
        {
            font-size: xx-large;
            color: #0000FF;
            height: 6px;
            margin-bottom: 0px;
        }
        .style44
        {
            text-align: left;
            height: 22px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table class="style20" bordercolor="#E0E0E0" cellpadding="5">
            <tr>
                <td class="style21">
                    <table class="style22">
                        <tr>
                            <td class="style24">
                                <strong><span class="style26">
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Image ID="Image3" runat="server" Height="46px" 
                                    ImageUrl="~/bg_img/todays update.gif" Width="183px" />
&nbsp;</span></strong><br />
                                <br />
                                <br />
                                <marquee class="style25"><asp:Panel ID="Panel2" runat="server" Height="287px">
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label4" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                   <br />
                                    <br />
                                   <asp:Label ID="Label1" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                   <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </asp:Panel></marquee><br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
&nbsp;</td>
                        </tr>
                        </table>
                </td>
                <td class="style29">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" CssClass="style9" Height="434px" 
        ImageAlign="Left" ImageUrl="~/bg_img/Capture1.JPG" Width="900px" />
                </td>
            </tr>
        </table>
</p>
    <p class="style39">
        <strong>Offer for You&nbsp;&nbsp;&nbsp; </strong></p>
    <p class="style43">
        &nbsp;</p>
    <p class="style38">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="700px"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" Height="26px" onclick="Button2_Click" 
                    Text="Search" Width="66px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Filter by Catagory:<asp:DropDownList ID="DropDownList1" runat="server" Height="24px" 
                    AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True">All</asp:ListItem>
                    <asp:ListItem>Vegitable</asp:ListItem>
                    <asp:ListItem>Fruits</asp:ListItem>
                    <asp:ListItem>Oil</asp:ListItem>
                    <asp:ListItem>Grains</asp:ListItem>
                    <asp:ListItem>Atta</asp:ListItem>
                    <asp:ListItem>Spices</asp:ListItem>
                    <asp:ListItem>Chacolate</asp:ListItem>
                    <asp:ListItem>Biscuits</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </p>
    <p class="style44">
                &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" Height="289px" 
            onitemcommand="DataList1_ItemCommand2" RepeatColumns="5" 
            RepeatDirection="Horizontal" Width="1330px" CellPadding="3" 
            CellSpacing="3" BorderColor="#CCCCCC" BorderStyle="Outset">
            <ItemTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image5" runat="server" Height="74px" 
                    ImageUrl='<%# Eval("image") %>' Width="74px" />
                <br />
                <table class="style30">
                    <tr>
                        <td class="style33">
                            Name:</td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("itemname") %>' 
                                CssClass="style34"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("num") %>' 
                                CssClass="style34" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                            Qty:</td>
                        <td>
                            <span class="style34">1</span><asp:Label ID="Label5" runat="server" Text='<%# Eval("qtytype") %>' 
                                CssClass="style34"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("qty") %>' 
                                CssClass="style34" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style33">
                            Price:</td>
                        <td>
                            <asp:Label ID="Label7" runat="server" CssClass="style34" 
                                Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style40">
                            Discount:</td>
                        <td class="style41">
                            <asp:Label ID="Label6" runat="server" CssClass="style34" 
                                Text='<%# Eval("discount") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style40">
                            Catagory</td>
                        <td class="style41">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("catagory") %>' 
                                CssClass="style34"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style40">
                            </td>
                        <td class="style41">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("description") %>' 
                                CssClass="style34" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style40">
                            </td>
                        <td class="style41">
                            <span class="style34">&nbsp;&nbsp;&nbsp;</span><asp:LinkButton ID="LinkButton7" runat="server" 
                                CommandName="cart" CssClass="style35">View</asp:LinkButton>
                            <span class="style34">&nbsp; </span>
                            <asp:Label ID="Label10" runat="server" CssClass="style34" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
    <p class="style42">
        <asp:Label ID="Label11" runat="server" CssClass="style26"></asp:Label>
    </p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
    <p class="style42">&nbsp;</p>
</asp:Content>

