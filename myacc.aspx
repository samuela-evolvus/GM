<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.master" AutoEventWireup="true" CodeFile="myacc.aspx.cs" Inherits="myacc" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 100%;
            height: 324px;
        }
        .style11
        {
            height: 198px;
            width: 1129px;
        }
        .style12
        {
            text-align: center;
        }
        .style13
        {
            text-align: center;
            font-size: xx-large;
        }
        .style14
        {
            width: 100%;
            height: 236px;
        }
        .style16
        {
            width: 100%;
            height: 246px;
        }
        .style17
        {
            text-align: left;
        }
        .style22
        {
            text-align: center;
            font-size: x-large;
        }
    .style24
    {
        height: 30px;
            width: 1352px;
            margin-top: 0px;
        }
    .style25
    {
        margin-top: 0px;
    }
    .style26
    {
        height: 100px;
            width: 1129px;
        }
    .style28
    {
        text-align: right;
        font-size: x-large;
        width: 652px;
        height: 50px;
    }
    .style29
    {
        text-align: left;
        height: 50px;
    }
        .style32
        {
            color: #000000;
        }
        .style33
        {
            text-align: left;
        }
        .style36
        {
            text-align: right;
            font-size: x-large;
            width: 652px;
        }
        .style37
        {
            text-align: right;
            font-size: large;
            font-weight: normal;
            width: 654px;
        }
        .style38
        {
            color: #FFFFFF;
            font-size: large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style24" style="background-color: #FFFFFF">
    <strong>
    <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
        CssClass="style38" ForeColor="Black">View Booking Details</asp:LinkButton>
    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <strong>
    <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click" 
        CssClass="style38" ForeColor="Black">My Profile</asp:LinkButton>
    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <asp:Panel ID="Panel3" runat="server" Height="337px" Visible="False" 
        Width="1346px">
        <table class="style10">
            <tr>
                <td class="style26">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
                        DataSourceID="SqlDataSource1" Height="130px" Width="1336px">
                        <EditItemTemplate>
                            id:
                            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            number:
                            <asp:TextBox ID="numberTextBox" runat="server" Text='<%# Bind("number") %>' />
                            <br />
                            email:
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                            <br />
                            address:
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            date:
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                            <br />
                            amountsaved:
                            <asp:TextBox ID="amountsavedTextBox" runat="server" 
                                Text='<%# Bind("amountsaved") %>' />
                            <br />
                            grandtotal:
                            <asp:TextBox ID="grandtotalTextBox" runat="server" 
                                Text='<%# Bind("grandtotal") %>' />
                            <br />
                            paymentmode:
                            <asp:TextBox ID="paymentmodeTextBox" runat="server" 
                                Text='<%# Bind("paymentmode") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <HeaderTemplate>
                            <div class="style22">
                                <strong>Bill Details</strong></div>
                        </HeaderTemplate>
                        <InsertItemTemplate>
                            id:
                            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                            <br />
                            name:
                            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            number:
                            <asp:TextBox ID="numberTextBox" runat="server" Text='<%# Bind("number") %>' />
                            <br />
                            email:
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                            <br />
                            address:
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            date:
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                            <br />
                            amountsaved:
                            <asp:TextBox ID="amountsavedTextBox" runat="server" 
                                Text='<%# Bind("amountsaved") %>' />
                            <br />
                            grandtotal:
                            <asp:TextBox ID="grandtotalTextBox" runat="server" 
                                Text='<%# Bind("grandtotal") %>' />
                            <br />
                            paymentmode:
                            <asp:TextBox ID="paymentmodeTextBox" runat="server" 
                                Text='<%# Bind("paymentmode") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Billing ID:<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp; Date:<asp:Label ID="dateLabel" runat="server" 
                                Text='<%# Bind("date", "{0:d}") %>' />
                            <br />
                            Name:<asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                            <br />
                            Phone Number:<asp:Label ID="numberLabel" runat="server" 
                                Text='<%# Bind("number") %>' />
                            <br />
                            Email:<asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                            <br />
                            Address:<asp:Label ID="addressLabel" runat="server" 
                                Text='<%# Bind("address") %>' />
                            <br />
                            <br />
                            GrandTotal:<strong><asp:Label ID="grandtotalLabel" runat="server" 
                                Text='<%# Bind("grandtotal") %>' />
                            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AmountSaved:<strong><asp:Label ID="amountsavedLabel" 
                                runat="server" Text='<%# Bind("amountsaved") %>' />
                            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PaymentMode:<strong><asp:Label ID="paymentmodeLabel" 
                                runat="server" Text='<%# Bind("paymentmode") %>' />
                            </strong>
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <div class="style12">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource2" Width="1338px" CssClass="style25" 
                            Height="150px">
                            <Columns>
                                <asp:BoundField DataField="itemname" HeaderText="Product Name" 
                                    SortExpression="itemname" />
                                <asp:BoundField DataField="qty" HeaderText="Qty" SortExpression="qty" />
                                <asp:BoundField DataField="qtytype" HeaderText="QtyType" 
                                    SortExpression="qtytype" />
                                <asp:BoundField DataField="discount" HeaderText="Discount(%)" 
                                    SortExpression="discount" />
                                <asp:BoundField DataField="totaldiscount" HeaderText="Discount Price" 
                                    SortExpression="totaldiscount" />
                                <asp:BoundField DataField="price" HeaderText="Product Price" 
                                    SortExpression="price" />
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price" 
                                    SortExpression="totalprice" />
                                <asp:BoundField DataField="catagory" HeaderText="Catagory" 
                                    SortExpression="catagory" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
                        SelectCommand="SELECT [itemname], [qty], [qtytype], [discount], [totaldiscount], [price], [totalprice], [catagory] FROM [bill] WHERE ([name] = @name)">
                        <SelectParameters>
                            <asp:SessionParameter Name="name" SessionField="log" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
                        
                        SelectCommand="SELECT DISTINCT [id], [name], [number], [email], [address], [date], [amountsaved], [grandtotal], [paymentmode] FROM [bill] WHERE ([name] = @name)">
                        <SelectParameters>
                            <asp:SessionParameter Name="name" SessionField="log" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    </asp:Panel>
    <p>
</p>
    <asp:Panel ID="Panel4" runat="server" Height="370px" Visible="False">
        <div class="style12">
            <asp:FormView ID="FormView2" runat="server" 
                DataKeyNames="phonenumber" DataSourceID="SqlDataSource3" 
                Width="1346px" BorderColor="#E6E6E6" BorderStyle="Outset" 
                BorderWidth="5px" Height="336px">
                <EditItemTemplate>
                    <table class="style16">
                        <tr>
                            <td class="style37">
                                Name:</td>
                            <td class="style33">
                                <asp:TextBox ID="nameTextBox" runat="server" Height="25px" 
                                    Text='<%# Bind("name") %>' Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style37">
                                Phone Number:</td>
                            <td class="style33">
                                <asp:Label ID="phonenumberLabel1" runat="server" 
                                    Text='<%# Eval("phonenumber") %>' CssClass="style34" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style37">
                                Email:</td>
                            <td class="style33">
                                <asp:TextBox ID="emailTextBox" runat="server" Height="25px" 
                                    Text='<%# Bind("email") %>' Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style37">
                                Address:</td>
                            <td class="style33">
                                <asp:TextBox ID="addressTextBox" runat="server" Height="25px" 
                                    Text='<%# Bind("address") %>' Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style37">
                                &nbsp;</td>
                            <td class="style33">
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                    CommandName="Update" CssClass="style2" Text="Update" />
                                &nbsp;
                                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" CssClass="style2" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <FooterTemplate>
                    <div class="style12">
                        NOTE:Phone Number can not be changed</div>
                </FooterTemplate>
                <HeaderTemplate>
                    <div class="style13">
                        Personal Info</div>
                </HeaderTemplate>
                <InsertItemTemplate>
                    name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    phonenumber:
                    <asp:TextBox ID="phonenumberTextBox" runat="server" 
                        Text='<%# Bind("phonenumber") %>' />
                    <br />
                    email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />
                    address:
                    <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="style14">
                        <tr class="style32">
                            <td class="style28">
                                Name:</td>
                            <td class="style29">
                                <asp:Label ID="nameLabel" runat="server" CssClass="style16" 
                                    Text='<%# Bind("name") %>' />
                            </td>
                        </tr>
                        <tr class="style32">
                            <td class="style36">
                                Phone Number:</td>
                            <td class="style17">
                                <asp:Label ID="phonenumberLabel" runat="server" CssClass="style16" 
                                    Text='<%# Eval("phonenumber") %>' />
                            </td>
                        </tr>
                        <tr class="style32">
                            <td class="style36">
                                Email:</td>
                            <td class="style17">
                                <asp:Label ID="emailLabel" runat="server" CssClass="style16" 
                                    Text='<%# Bind("email") %>' />
                            </td>
                        </tr>
                        <tr class="style32">
                            <td class="style36">
                                Address:</td>
                            <td class="style17">
                                <asp:Label ID="addressLabel" runat="server" CssClass="style16" 
                                    Text='<%# Bind("address") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style36">
                                &nbsp;</td>
                            <td class="style17">
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                    CommandName="Edit" CssClass="style2" Text="Edit" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
    DeleteCommand="DELETE FROM [login] WHERE [phonenumber] = @original_phonenumber AND [name] = @original_name AND [email] = @original_email AND [address] = @original_address" 
    InsertCommand="INSERT INTO [login] ([name], [phonenumber], [email], [address]) VALUES (@name, @phonenumber, @email, @address)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT [name], [phonenumber], [email], [address] FROM [login] WHERE ([name] = @name)" 
    
            UpdateCommand="UPDATE [login] SET [name] = @name, [email] = @email, [address] = @address WHERE [phonenumber] = @original_phonenumber AND [name] = @original_name AND [email] = @original_email AND [address] = @original_address">
            <DeleteParameters>
                <asp:Parameter Name="original_phonenumber" Type="Decimal" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="phonenumber" Type="Decimal" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="name" SessionField="log" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="original_phonenumber" Type="Decimal" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <p>
        &nbsp;</p>
    <p>
</p>
    </asp:Content>

