<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            height: 45px;
        }
        .style2
        {
            width: 100%;
            height: 350px;
        }
        .style3
        {
            font-size: x-large;
            width: 492px;
        }
        .style7
        {
            width: 44%;
            height: 255px;
        }
        .style8
        {
            width: 200px;
            text-align: right;
        }
        .style9
        {
            width: 200px;
        }
        .style10
        {
            text-align: center;
            font-size: xx-large;
            height: 70px;
        }
        .style11
        {
            width: 200px;
            text-align: right;
            height: 62px;
        }
        .style12
        {
            width: 200px;
            height: 62px;
        }
        .style13
        {
            font-size: x-small;
        }
    </style>
</head>
<body>
    <h1 class="style1">
        &nbsp; </h1>
    <p class="style1">
        &nbsp;</p>
    <form id="form1" runat="server" autocomplete="off">
    <div>
    
        <table class="style2">
            <tr>
                <td class="style3">
                    <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/bg_img/admin login.png" 
                        Width="507px" />
                </td>
                <td style="background-color: #FFFFFF">
                    <table class="style7">
                        <tr>
                            <td class="style10" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <strong>Login</strong></td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label1" runat="server" Text="Employee ID :"></asp:Label>
                            </td>
                            <td class="style9">
                                <asp:TextBox ID="TextBox1" runat="server" Height="22px" MaxLength="6"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label>
                            </td>
                            <td class="style9">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Password :</td>
                            <td class="style9">
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                </td>
                            <td class="style12">
                                <asp:Label ID="Label3" runat="server" CssClass="style13"></asp:Label>
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                                    Width="60px" />
&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Back" 
                                    Width="60px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
