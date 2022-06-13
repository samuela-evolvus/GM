<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.master" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            color: #FF3300;
        }
        .style19
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style19">
        <asp:Label ID="Label2" runat="server" CssClass="style18" Text="Label"></asp:Label>
    </p>
    <p class="style19">
        &nbsp;</p>
    <p class="style19">
        &nbsp;</p>
    <p class="style19">
        &nbsp;</p>
    <p class="style19">
        &nbsp;</p>
    <p class="style19">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
    </p>
</asp:Content>

