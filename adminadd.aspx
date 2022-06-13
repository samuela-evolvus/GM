<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminadd.aspx.cs" Inherits="adminadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 122%;
            height: 492px;
        }
        .style5
        {
            text-align: center;
        }
        .style11
        {
            text-align: right;
            width: 96px;
            font-size: small;
            height: 30px;
            color: #000000;
        }
        .style12
        {
            height: 30px;
            width: 551px;
        }
        .style22
    {
            text-align: right;
            width: 96px;
            font-size: small;
            color: #000000;
        }
        .style15
        {
            width: 551px;
        }
        .style9
        {
            text-align: right;
            width: 96px;
            font-size: small;
            height: 35px;
            color: #000000;
        }
        .style10
        {
            height: 35px;
            width: 551px;
        }
        .style13
        {
            text-align: left;
            font-size: medium;
            height: 50px;
        }
        .style7
        {
            font-size: medium;
        }
        .style23
        {
            width: 98%;
            height: 366px;
            margin-left: 0px;
        }
        .style24
        {
            font-size: x-small;
            color: #FF0000;
        }
        .style25
        {
            font-size: small;
            color: #FF0000;
        }
        .style26
    {
        width: 375px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" bordercolor="#DFDFDF" cellpadding="5" cellspacing="2" 
        rules="all">
        <tr>
            <td class="style26">
                <br />
&nbsp;<asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/bg_img/grocery1.png" 
                    Width="800px" Height="450px" />
            </td>
            <td>
    <table class="style23">
        <tr>
            <td class="style11">
                SL.NO:</td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="140px" ReadOnly="True" 
                    Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22" height="30">
                ITEM NAME:</td>
            <td height="30" class="style15">
                <asp:TextBox ID="TextBox2" runat="server" Width="140px" MaxLength="30" 
                    Height="20px"></asp:TextBox>
                <strong>&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="style11">
                QTY:</td>
            <td class="style12">
                <asp:TextBox ID="TextBox3" runat="server" Width="140px" Height="20px"></asp:TextBox>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="20px">
                    <asp:ListItem>K.G</asp:ListItem>
                    <asp:ListItem>Liters</asp:ListItem>
                    <asp:ListItem>Pkt</asp:ListItem>
                    <asp:ListItem>pieces</asp:ListItem>
                </asp:DropDownList>
                <strong>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="TextBox3" CssClass="style24" 
                    ErrorMessage="Please select a valid quantity(1-59) " 
                    ValidationExpression="^[1-5]?[0-9]$"></asp:RegularExpressionValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style22" height="30">
                PRICE:</td>
            <td height="30" class="style15">
                <asp:TextBox ID="TextBox4" runat="server" Width="140px" Height="20px"></asp:TextBox>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox4" CssClass="style24" 
                    ErrorMessage="Please enter a numeric charecter range (1-9999)" 
                    ValidationExpression="^(?:[1-9][0-9]{3}|[1-9][0-9]{2}|[1-9][0-9]|[1-9])$"></asp:RegularExpressionValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style22" height="30">
                DISCOUNT:</td>
            <td height="30" class="style15">
                <asp:TextBox ID="TextBox5" runat="server" Width="140px" Height="20px"></asp:TextBox>
                <strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox5" CssClass="style24" 
                    ErrorMessage="Please enter a numeric charecter (1-100 in percentage)" 
                    ValidationExpression="^[1-9]?[0-9]{1}$|^100$"></asp:RegularExpressionValidator>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style22" height="30">
                IMAGE:</td>
            <td height="30" class="style15">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="190px" />
            &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                CATAGORY:</td>
            <td class="style10">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px">
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
            </td>
        </tr>
        <tr>
            <td class="style9">
                DESCRIPTION:</td>
            <td class="style10">
                <asp:TextBox ID="TextBox6" runat="server" Width="140px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" CssClass="style25"></asp:Label>
                </strong>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="ADD" 
                    Width="75px" CssClass="style7" Height="25px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="BACK" 
                    Width="75px" Height="25px" />
                <br />
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
    </asp:Content>

