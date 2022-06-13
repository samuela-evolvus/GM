<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="customersbooking.aspx.cs" Inherits="customersbooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Bill Statement&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style6" 
            onclick="LinkButton1_Click">Back</asp:LinkButton>
    </h1>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <div class="style7">
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                Height="304px" AllowPaging="True" EnableSortingAndPagingCallbacks="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="id" HeaderText="Sl.no" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="number" HeaderText="Number" 
                        SortExpression="number" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="address" HeaderText="Address" 
                        SortExpression="address" />
                    <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                    <asp:BoundField DataField="itemname" HeaderText="Item Name" 
                        SortExpression="itemname" />
                    <asp:BoundField DataField="qty" HeaderText="Qty" SortExpression="qty" />
                    <asp:BoundField DataField="qtytype" HeaderText="QtyType" 
                        SortExpression="qtytype" />
                    <asp:BoundField DataField="discount" HeaderText="Discount" 
                        SortExpression="discount" />
                    <asp:BoundField DataField="totaldiscount" HeaderText="Total Discount" 
                        SortExpression="totaldiscount" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="totalprice" HeaderText="Total Price" 
                        SortExpression="totalprice" />
                    <asp:BoundField DataField="catagory" HeaderText="Catagory" 
                        SortExpression="catagory" />
                    <asp:BoundField DataField="grandtotal" HeaderText="Grand Total" 
                        SortExpression="grandtotal" />
                    <asp:BoundField DataField="amountsaved" HeaderText="Amount Saved" 
                        SortExpression="amountsaved" />
                    <asp:BoundField DataField="paymentmode" HeaderText="Payment Mode" 
                        SortExpression="paymentmode" />
                </Columns>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
            DeleteCommand="DELETE FROM [bill] WHERE [id] = @original_id AND [name] = @original_name AND [number] = @original_number AND [email] = @original_email AND [address] = @original_address AND [date] = @original_date AND [itemname] = @original_itemname AND [qty] = @original_qty AND [qtytype] = @original_qtytype AND [discount] = @original_discount AND [totaldiscount] = @original_totaldiscount AND [price] = @original_price AND [totalprice] = @original_totalprice AND [catagory] = @original_catagory AND [grandtotal] = @original_grandtotal AND [amountsaved] = @original_amountsaved AND [paymentmode] = @original_paymentmode" 
            InsertCommand="INSERT INTO [bill] ([id], [name], [number], [email], [address], [date], [itemname], [qty], [qtytype], [discount], [totaldiscount], [price], [totalprice], [catagory], [grandtotal], [amountsaved], [paymentmode]) VALUES (@id, @name, @number, @email, @address, @date, @itemname, @qty, @qtytype, @discount, @totaldiscount, @price, @totalprice, @catagory, @grandtotal, @amountsaved, @paymentmode)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [bill]" 
            UpdateCommand="UPDATE [bill] SET [name] = @name, [number] = @number, [email] = @email, [address] = @address, [date] = @date, [itemname] = @itemname, [qty] = @qty, [qtytype] = @qtytype, [discount] = @discount, [totaldiscount] = @totaldiscount, [price] = @price, [totalprice] = @totalprice, [catagory] = @catagory, [grandtotal] = @grandtotal, [amountsaved] = @amountsaved, [paymentmode] = @paymentmode WHERE [id] = @original_id AND [name] = @original_name AND [number] = @original_number AND [email] = @original_email AND [address] = @original_address AND [date] = @original_date AND [itemname] = @original_itemname AND [qty] = @original_qty AND [qtytype] = @original_qtytype AND [discount] = @original_discount AND [totaldiscount] = @original_totaldiscount AND [price] = @original_price AND [totalprice] = @original_totalprice AND [catagory] = @original_catagory AND [grandtotal] = @original_grandtotal AND [amountsaved] = @original_amountsaved AND [paymentmode] = @original_paymentmode">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_number" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter DbType="Date" Name="original_date" />
                <asp:Parameter Name="original_itemname" Type="String" />
                <asp:Parameter Name="original_qty" Type="String" />
                <asp:Parameter Name="original_qtytype" Type="String" />
                <asp:Parameter Name="original_discount" Type="String" />
                <asp:Parameter Name="original_totaldiscount" Type="String" />
                <asp:Parameter Name="original_price" Type="String" />
                <asp:Parameter Name="original_totalprice" Type="String" />
                <asp:Parameter Name="original_catagory" Type="String" />
                <asp:Parameter Name="original_grandtotal" Type="String" />
                <asp:Parameter Name="original_amountsaved" Type="String" />
                <asp:Parameter Name="original_paymentmode" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="itemname" Type="String" />
                <asp:Parameter Name="qty" Type="String" />
                <asp:Parameter Name="qtytype" Type="String" />
                <asp:Parameter Name="discount" Type="String" />
                <asp:Parameter Name="totaldiscount" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="totalprice" Type="String" />
                <asp:Parameter Name="catagory" Type="String" />
                <asp:Parameter Name="grandtotal" Type="String" />
                <asp:Parameter Name="amountsaved" Type="String" />
                <asp:Parameter Name="paymentmode" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="itemname" Type="String" />
                <asp:Parameter Name="qty" Type="String" />
                <asp:Parameter Name="qtytype" Type="String" />
                <asp:Parameter Name="discount" Type="String" />
                <asp:Parameter Name="totaldiscount" Type="String" />
                <asp:Parameter Name="price" Type="String" />
                <asp:Parameter Name="totalprice" Type="String" />
                <asp:Parameter Name="catagory" Type="String" />
                <asp:Parameter Name="grandtotal" Type="String" />
                <asp:Parameter Name="amountsaved" Type="String" />
                <asp:Parameter Name="paymentmode" Type="String" />
                <asp:Parameter Name="original_id" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_number" Type="String" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />
                <asp:Parameter DbType="Date" Name="original_date" />
                <asp:Parameter Name="original_itemname" Type="String" />
                <asp:Parameter Name="original_qty" Type="String" />
                <asp:Parameter Name="original_qtytype" Type="String" />
                <asp:Parameter Name="original_discount" Type="String" />
                <asp:Parameter Name="original_totaldiscount" Type="String" />
                <asp:Parameter Name="original_price" Type="String" />
                <asp:Parameter Name="original_totalprice" Type="String" />
                <asp:Parameter Name="original_catagory" Type="String" />
                <asp:Parameter Name="original_grandtotal" Type="String" />
                <asp:Parameter Name="original_amountsaved" Type="String" />
                <asp:Parameter Name="original_paymentmode" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </asp:Content>

