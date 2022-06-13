<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.master" AutoEventWireup="true" CodeFile="car.aspx.cs" Inherits="car" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            text-align: center;
        }
        .style19
        {
            width: 100%;
            height: 148px;
        }
        .style20
        {
            text-align: center;
            width: 435px;
        }
        .style21
        {
            width: 897px;
        }
        .style22
        {
            text-align: right;
        }
        .style15
        {
            margin-right: 4px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style18">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image3" runat="server" Height="57px" 
        ImageUrl="~/bg_img/cart1.png" Width="165px" />
    </h1>
    <p class="style22">
        <asp:Label ID="Label16" runat="server"></asp:Label>
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" 
            onitemcommand="DataList1_ItemCommand">
            <FooterTemplate>
                <div>
                    <br />
                    <asp:LinkButton ID="LinkButton8" runat="server" CommandName="pay">Please conform your cart before payment</asp:LinkButton>
                </div>
            </FooterTemplate>
            <ItemTemplate>
                <table class="style19">
                    <tr>
                        <td class="style20">
                            <asp:Image ID="Image4" runat="server" Height="110px" 
                                ImageUrl='<%# Eval("image") %>' Width="160px" />
                        </td>
                        <td class="style21">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("id") %>' Visible="False"></asp:Label>
                            <br />
                            Name:<asp:Label ID="Label10" runat="server" Text='<%# Eval("itemname") %>'></asp:Label>
                            <br />
                            Qty:<asp:Label ID="Label11" runat="server" Text='<%# Eval("qty") %>'></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("qtytype") %>'></asp:Label>
                            <br />
                            Price:<asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            <br />
                            Discount:<asp:Label ID="Label7" runat="server" Text='<%# Eval("discount") %>'></asp:Label>
                            <br />
                            Catagory:<asp:Label ID="Label8" runat="server" Text='<%# Eval("catagory") %>'></asp:Label>
                            <br />
                            Total Amount:<asp:Label ID="Label14" runat="server" Text='<%# Eval("tp") %>'></asp:Label>
                        </td>
                        <td class="style18">
                            <asp:LinkButton ID="LinkButton7" runat="server" CommandName="remove">Remove</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
<p>
    <asp:Label ID="Label15" runat="server"></asp:Label>
</p>
    <p class="style18">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
            Text="Proceed Payment" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" Text="Back" 
            Width="90px" />
</p>
    <p>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

