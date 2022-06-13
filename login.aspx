<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        
        .style24
        {
            font-size: large;
        }
        .style25
        {
            font-size: medium;
        }
        .style3
        {
            font-size: x-large;
            width: 502px;
        }
        .style7
        {
            width: 129%;
            height: 255px;
        }
        .style10
        {
            text-align: center;
            font-size: xx-large;
            height: 70px;
        }
        .style8
        {
            width: 194px;
            text-align: right;
        }
        .style9
        {
            width: 274px;
        }
        .style11
        {
            width: 194px;
            text-align: right;
            height: 62px;
        }
        .style12
        {
            width: 274px;
            height: 62px;
        }
        .style36
        {
            width: 1008px;
            height: 47px;
        }
        .style37
        {
            width: 194px;
            text-align: right;
            height: 38px;
        }
        .style38
        {
            width: 274px;
            height: 38px;
        }
        .style39
        {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
    <div>
    
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    
        <table class="style36">
            <tr>
                <td class="style3">
                    <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl="~/bg_img/userlogin.png" 
                        Width="527px" />
                </td>
                <td style="background-color: #FFFFFF">
                    <table class="style7" style="border-style: inset; border-width: thick">
                        <tr>
                            <td class="style10" colspan="2">
                                <strong>Login</strong></td>
                        </tr>
                        <tr>
                            <td class="style37">
                        <asp:Label ID="Label4" runat="server" Text="Enter Registered E-mail/Phone Number:" 
                            Visible="False" CssClass="style24" Font-Size="Medium"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Username:" CssClass="style24" 
                                    Font-Size="Medium"></asp:Label>
                            </td>
                            <td class="style38">
                        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="128px" 
                                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                            </td>
                            <td class="style39">
                        <asp:Button ID="Button3" runat="server" Height="22px" onclick="Button3_Click" 
                            Text="Search" Visible="False" Width="76px" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                            runat="server" ControlToValidate="TextBox1" Enabled="False" 
                            ErrorMessage="Enter proper e-mail" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            CssClass="style25" Font-Size="Small"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                        <asp:Label ID="Label3" runat="server" Text="Password:" CssClass="style24" 
                                    Font-Size="Medium"></asp:Label>
                            </td>
                            <td class="style9">
                        <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Password" 
                            Width="128px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                        <asp:Label ID="Label6" runat="server" CssClass="style24" 
                            Text="Confirm Password:" Visible="False" Font-Size="Medium"></asp:Label>
                            </td>
                            <td class="style9">
                        <asp:TextBox ID="TextBox3" runat="server" Height="22px" Visible="False" 
                            Width="128px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                </td>
                            <td class="style12">
                        <strong>
                       <asp:LinkButton ID="LinkButton1" runat="server" Visible="False"
                            onclick="LinkButton1_Click" Font-Size="Medium">Forgot Password</asp:LinkButton>
                        </strong>
                                <br />
                                <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                <br />
                                <br />
                        <asp:Button ID="Button4" runat="server" Height="22px" onclick="Button4_Click" 
                            Text="Reset" Visible="False" Width="80px" />
                                <br />
                                <br />
                        <asp:Button ID="Button1" runat="server" Height="22px" onclick="Button1_Click" 
                            Text="Login" Width="90px" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Height="22px" onclick="Button2_Click" 
                            Text="Signup" Width="90px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
