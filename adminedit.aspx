<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminedit.aspx.cs" Inherits="adminedit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: left;
            width: 130px;
            height: 188px;
        }
        .style6
        {
            width: 327px;
        }
        .style7
        {
            width: 98%;
            height: 170px;
        }
        .style11
        {
            font-size: large;
        }
        .style14
        {
            width: 450px;
        }
        .style15
        {
            width: 550px;
        }
        .style19
        {
            width: 735px;
            text-align: left;
            font-size: xx-large;
            height: 188px;
        }
        .style20
        {
            width: 105px;
            font-size: x-large;
            height: 188px;
            text-align: right;
        }
        .style22
    {
        height: 110px;
        text-align: center;
            width: 1269px;
        }
    .style23
    {
        margin-right: 3px;
    }
        .style24
        {
            width: 550px;
            font-size: large;
            height: 188px;
            text-align: center;
        }
        .style26
        {
            font-size: medium;
        }
        .style28
        {
            height: 22px;
            font-size: small;
        }
        .style31
        {
            font-size: small;
        }
        .style32
        {
            width: 69px;
            text-align: right;
            font-size: small;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style22">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image3" runat="server" Height="98px" 
            ImageUrl="~/bg_img/MODIFY2.png" Width="600px" />
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" CssClass="style11" 
            onclick="LinkButton4_Click1">Back</asp:LinkButton>
</h1>
    <p>
        <asp:DataList ID="DataList1" runat="server" Width="1301px" 
            onitemcommand="DataList1_ItemCommand" CellPadding="4" ForeColor="#333333" 
            CssClass="style23">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <EditItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td class="style20">
                            <strong>
                            <asp:Label ID="Label9" runat="server" CssClass="style11" 
                                Text='<%# Eval("num") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="style24">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' 
                                Height="110px" Width="150px"/>
                        </td>
                        <td class="style19">
                            <table class="style7">
                                <tr>
                                    <td class="style32">
                                        Name:</td>
                                    <td class="style28">
                                        <strong>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="style31" Height="19px" 
                                            Text='<%# Eval("itemname") %>' Width="100px"></asp:TextBox>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style32">
                                        Qty:</td>
                                    <td class="style28">
                                        <strong>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="style31" Height="19px" 
                                            Text='<%# Eval("qty") %>' Width="100px"></asp:TextBox>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="style31" 
                                            SelectedValue='<%# Eval("qtytype") %>'>
                                            <asp:ListItem>K.G</asp:ListItem>
                                            <asp:ListItem>Liters</asp:ListItem>
                                            <asp:ListItem Value="Pics">Pics</asp:ListItem>
                                            <asp:ListItem>Pkt</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                            ControlToValidate="TextBox3" CssClass="style29" 
                                            ErrorMessage="Please select a valid quantity(1-59) " 
                                            ValidationExpression="^[1-5]?[0-9]$" style="font-size: small"></asp:RegularExpressionValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style32">
                                        Price:</td>
                                    <td class="style28">
                                        <strong>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="style31" Height="19px" 
                                            Text='<%# Eval("price") %>' Width="100px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                            ControlToValidate="TextBox4" CssClass="style29" 
                                            ErrorMessage="Please enter a vaild numeric charecter range (1-9999)" 
                                            ValidationExpression="^(?:[1-9][0-9]{3}|[1-9][0-9]{2}|[1-9][0-9]|[1-9])$" 
                                            style="font-size: small"></asp:RegularExpressionValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style32">
                                        Discount:</td>
                                    <td class="style28">
                                        <strong>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="style31" Height="19px" 
                                            Text='<%# Eval("discount") %>' Width="100px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                            ControlToValidate="TextBox5" CssClass="style29" 
                                            ErrorMessage="Please enter a vaild numeric charecter range (1-100 in percentage)" 
                                            ValidationExpression="^[1-9]?[0-9]{1}$|^100$" style="font-size: small"></asp:RegularExpressionValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style32">
                                        Image:</td>
                                    <td class="style28">
                                        <strong>
                                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="style31" 
                                            Height="20px" Width="188px" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="FileUpload1" CssClass="style18" 
                                            ErrorMessage="Please select a image of product" style="font-size: small" 
                                            Enabled="False"></asp:RequiredFieldValidator>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style32">
                                        Catagory:</td>
                                    <td class="style28">
                                        <strong>
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style31" 
                                            Height="18px" SelectedValue='<%# Eval("catagory") %>'>
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
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style32">
                                        Description:</td>
                                    <td class="style28">
                                        <strong>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="style31" Height="19px" 
                                            Text='<%# Eval("description") %>' Width="100px"></asp:TextBox>
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="style4">
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update" 
                                CssClass="style9">Update</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cancel" 
                                CssClass="style9">Cancel</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <table class="style7">
                    <tr>
                        <td class="style16">
                            <strong>
                            <asp:Label ID="Label10" runat="server" CssClass="style11" 
                                Text='<%# Eval("num") %>'></asp:Label>
                            </strong>
                        </td>
                        <td class="style15">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' 
                                Height="100px" Width="135px"/>
                        </td>
                        <td class="style14">
                            <br />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("itemname") %>' 
                                CssClass="style26"></asp:Label>
                            <br class="style26" />
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("qty") %>' 
                                CssClass="style26"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("qtytype") %>' 
                                CssClass="style12" style="font-size: small"></asp:Label>
                            <br class="style26" />
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>' 
                                CssClass="style26"></asp:Label>
                            <br class="style26" />
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("discount") %>' 
                                CssClass="style26"></asp:Label>
                            <br class="style26" />
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("catagory") %>' 
                                CssClass="style26"></asp:Label>
                            <br />
                            <br />
                        </td>
                        <td class="style4">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style6" 
                                CommandName="edit" Font-Size="Large">Edit</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
</p>
    </asp:Content>

