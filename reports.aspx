<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.master" AutoEventWireup="true" CodeFile="reports.aspx.cs" Inherits="reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style22
    {
        height: 50px;
        text-align: center;
        color: #000099;
        width: 1391px;
        text-decoration: none;
        font-size: xx-large;
    }
        .style19
        {
            width: 1330px;
            height: 258px;
            margin-top: 0px;
        }
        .style16
        {
            width: 665px;
            font-size: medium;
            font-family: Vani;
            height: 20px;
        }
        .style20
        {
            height: 20px;
        }
        .style23
    {
        text-align: right;
        height: 20px;
        font-size: large;
        color: #FFFFFF;
    }
    .style25
    {
        color: #000000;
    }
        .style21
        {
            width: 665px;
            text-align: left;
        height: 230px;
    }
        .style26
        {
            background-color: #FFFF66;
        }
    .style15
    {
        width: 130px;
        text-align: center;
        height: 230px;
    }
        .style24
    {
        height: 230px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style22">
        <asp:Image ID="Image1" runat="server" Height="38px" 
            ImageUrl="~/bg_img/report1.png" Width="200px" />
&nbsp; 
    </h1>
    <p>
        <table class="style19">
            <tr>
                <td class="style16">
                Please Enter your Report Regaurding Product Quality,Availability,etc in below 
                box</td>
                <td class="style20">
                </td>
                <td class="style23">
                    <span class="style25">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                    </span>&nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:TextBox ID="TextBox1" runat="server" Height="160px" Width="800px" 
        TextMode="MultiLine" CssClass="style26"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td class="style15">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Report" />
                </td>
                <td class="style24">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" />
                </td>
            </tr>
        </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</asp:Content>

