<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            text-align: center;
        }
        .style10
        {
            width: 1108px;
            height: 244px;
        }
        .style11
        {
            width: 467px;
        }
        .style12
        {
            font-size: large;
            font-family: Aparajita;
        }
    .style13
    {
        text-align: center;
        color: #FFFFFF;
            height: 75px;
        }
    .style14
    {
        font-size: xx-large;
        font-family: Aparajita;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style13">
        FEED
        <asp:Image ID="Image1" runat="server" Height="65px" 
            ImageUrl="~/bg_img/feedback.png" Width="250px" />
    </h1>
    <asp:Panel ID="Panel1" runat="server" Height="256px">
        <table class="style10">
            <tr>
                <td class="style11">
                    How satisfied were you with your shopping experience ?</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Width="500px">
                        <asp:ListItem>Very Poor</asp:ListItem>
                        <asp:ListItem>Poor</asp:ListItem>
                        <asp:ListItem>Satisfactory</asp:ListItem>
                        <asp:ListItem>Good</asp:ListItem>
                        <asp:ListItem>Very Good</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    How easy was it for you to find the products you wanted on website ?</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    RepeatDirection="Horizontal" Width="500px">
                        <asp:ListItem>Very Poor</asp:ListItem>
                        <asp:ListItem>Poor</asp:ListItem>
                        <asp:ListItem>Satisfactory</asp:ListItem>
                        <asp:ListItem>Good</asp:ListItem>
                        <asp:ListItem>Very Good</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    How likely are you to recommend to your friends and family ?</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                    RepeatDirection="Horizontal" Width="500px">
                        <asp:ListItem>Very Poor</asp:ListItem>
                        <asp:ListItem>Poor</asp:ListItem>
                        <asp:ListItem>Satisfactory</asp:ListItem>
                        <asp:ListItem>Good</asp:ListItem>
                        <asp:ListItem>Very Good</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    How well stocked do you think ?</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" 
                    RepeatDirection="Horizontal" Width="500px">
                        <asp:ListItem>Very Poor</asp:ListItem>
                        <asp:ListItem>Poor</asp:ListItem>
                        <asp:ListItem>Satisfactory</asp:ListItem>
                        <asp:ListItem>Good</asp:ListItem>
                        <asp:ListItem>Very Good</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    How was quality of product ?</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList5" runat="server" 
                    RepeatDirection="Horizontal" Width="500px">
                        <asp:ListItem>Very Poor</asp:ListItem>
                        <asp:ListItem>Poor</asp:ListItem>
                        <asp:ListItem>Satisfactory</asp:ListItem>
                        <asp:ListItem>Good</asp:ListItem>
                        <asp:ListItem>Very Good</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p class="style9">
        <strong>
        <asp:Label ID="Label2" runat="server" CssClass="style12"></asp:Label>
        &nbsp;</strong><asp:Label ID="Label3" runat="server" CssClass="style12"></asp:Label>
    </p>
    <p class="style9">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Comment" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Back" onclick="Button3_Click" />
    </p>
</asp:Content>

