<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admindel.aspx.cs" Inherits="admindel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style15
        {
            width: 509px;
            font-size: xx-large;
        }
        .style8
        {
            width: 98%;
        height: 112px;
            margin-top: 0px;
        }
        .style9
        {
        font-size: small;
    }
        .style12
        {
            height: 24px;
            text-align: right;
            width: 209px;
            font-size: small;
        }
        .style10
        {
            height: 24px;
        }
        .style16
    {
        width: 100px;
    }
    .style17
    {
        font-size: x-large;
        color: #000000;
        width: 1300px;
        height: 169px;
    }
    .style19
    {
        font-size: small;
        color: #0000FF;
    }
    .style20
    {
        margin-right: 96px;
    }
    .style21
    {
        height: 80px;
        text-align: center;
    }
    .style22
    {
        height: 106px;
        width: 470px;
    }
        .style23
        {
            text-align: right;
            width: 209px;
            font-size: small;
            height: 19px;
        }
        .style24
        {
            height: 19px;
        }
        .style25
        {
            height: 106px;
            width: 130px;
            text-align: center;
        }
        .style26
        {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style21">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image3" runat="server" Height="70px" 
            ImageUrl="~/bg_img/coollogo_com-7759836.png" Width="575px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="style6" 
            onclick="LinkButton2_Click">Back</asp:LinkButton>
</h1>
<p>
                                <asp:DataList ID="DataList1" runat="server" CssClass="style20" 
                                    onitemcommand="DataList1_ItemCommand1">
                                    <ItemTemplate>
                                        <table class="style17" bordercolor="#EAEAEA" rules="rows">
                                            <tr>
                                                <td class="style25">
                                                    <strong>
                                                    <asp:Label ID="Label9" runat="server" CssClass="style26" 
                                                        Text='<%# Eval("num") %>'></asp:Label>
                                                    </strong>
                                                </td>
                                                <td class="style22">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Image ID="Image2" runat="server" BorderColor="#EBEBEB" BorderStyle="Inset" 
                                                        BorderWidth="4px" Height="100px" ImageUrl='<%# Eval("image") %>' 
                                                        Width="150px" />
                                                </td>
                                                <td class="style15">
                                                    <table class="style8">
                                                        <tr>
                                                            <td class="style23">
                                                                NAME:</td>
                                                            <td class="style24">
                                                                <asp:Label ID="Label8" runat="server" CssClass="style9" 
                                                                    Text='<%# Eval("itemname") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style23">
                                                                QTY:</td>
                                                            <td class="style24">
                                                                <asp:Label ID="Label2" runat="server" CssClass="style9" 
                                                                    Text='<%# Eval("qty") %>'></asp:Label>
                                                                <asp:Label ID="Label6" runat="server" CssClass="style9" 
                                                                    Text='<%# Eval("qtytype") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style23">
                                                                PRICE:</td>
                                                            <td class="style24">
                                                                <asp:Label ID="Label3" runat="server" CssClass="style19" 
                                                                    Text='<%# Eval("price") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style23">
                                                                DISCOUNT:</td>
                                                            <td class="style24">
                                                                <asp:Label ID="Label4" runat="server" CssClass="style19" 
                                                                    Text='<%# Eval("discount") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="style12">
                                                                CATAGORY:</td>
                                                            <td class="style10">
                                                                <asp:Label ID="Label5" runat="server" CssClass="style9" 
                                                                    Text='<%# Eval("catagory") %>'></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="style16">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="delete" 
                                                        CssClass="style4" Font-Bold="True" ForeColor="Red" 
                                                        style="font-size: large">Delete</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
    </p>
<p>
</p>
</asp:Content>

