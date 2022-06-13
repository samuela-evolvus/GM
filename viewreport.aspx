<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="viewreport.aspx.cs" Inherits="viewreport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 100%;
        }
        .style14
        {
            width: 188px;
            text-align: center;
        }
        .style15
        {
            width: 149px;
            text-align: center;
        }
        .style16
        {
            width: 152px;
            text-align: center;
        }
        .style17
        {
            text-align: left;
            height: 90px;
        width: 1328px;
    }
        .style18
        {
            width: 1105px;
            height: 230px;
            text-align: center;
        }
        .style19
        {
            margin-top: 0px;
        }
        .style20
        {
            width: 1105px;
            text-align: center;
        }
        .style4
        {
            font-size: x-large;
        }
        .style21
        {
            text-align: left;
            height: 25px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style17">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image1" 
            runat="server" Height="80px" ImageUrl="~/bg_img/viewreport1.png" 
            Width="411px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style4" 
            onclick="LinkButton1_Click">Back</asp:LinkButton>
    </h1>
    <p class="style21">
        &nbsp;</p>
    <p class="style20">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" CssClass="style19" DataKeyNames="no" 
            DataSourceID="SqlDataSource1" ForeColor="Black" 
            Height="111px" onselectedindexchanged="GridView1_SelectedIndexChanged1" 
            Width="1327px" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="no" HeaderText="REPORT ID" ReadOnly="True" 
                    SortExpression="no" />
                <asp:BoundField DataField="date" HeaderText="DATE" SortExpression="date" />
                <asp:BoundField DataField="username" HeaderText="USERNAME" 
                    SortExpression="username" />
                <asp:BoundField DataField="report" HeaderText="CUSTOMER'S REPORT MESSAGE" 
                    SortExpression="report" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <PagerTemplate>
                <p class="style18">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="no" DataSourceID="SqlDataSource1" Height="212px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged2" 
                        RowHeaderColumn="report" Width="1107px">
                        <Columns>
                            <asp:BoundField DataField="no" HeaderText="no" ReadOnly="True" 
                                SortExpression="no" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="username" HeaderText="username" 
                                SortExpression="username" />
                            <asp:BoundField DataField="report" HeaderText="report" 
                                SortExpression="report" />
                        </Columns>
                        <PagerTemplate>
                            <table class="style5">
                                <tr>
                                    <td class="style16">
                                        REPORT ID</td>
                                    <td class="style15">
                                        DATE</td>
                                    <td class="style14">
                                        USER NAME</td>
                                    <td class="style1">
                                        REPORT MESSAGE</td>
                                </tr>
                                <tr>
                                    <td class="style16">
                                        <asp:Label ID="Label1" runat="server" CssClass="style6" 
                                            Text='<%# Eval("no") %>'></asp:Label>
                                    </td>
                                    <td class="style15">
                                        <asp:Label ID="Label2" runat="server" CssClass="style6" 
                                            Text='<%# Eval("date") %>'></asp:Label>
                                    </td>
                                    <td class="style14">
                                        <asp:Label ID="Label3" runat="server" CssClass="style6" 
                                            Text='<%# Eval("username") %>'></asp:Label>
                                    </td>
                                    <td class="style17">
                                        <asp:Label ID="Label4" runat="server" CssClass="style6" 
                                            Text='<%# Eval("report") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </PagerTemplate>
                    </asp:GridView>
                </p>
            </PagerTemplate>
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
            
            SelectCommand="SELECT [no], [date], [username], [report] FROM [report] ORDER BY [date]" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [report] WHERE [no] = @original_no AND [date] = @original_date AND [username] = @original_username AND [report] = @original_report" 
            InsertCommand="INSERT INTO [report] ([no], [date], [username], [report]) VALUES (@no, @date, @username, @report)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [report] SET [date] = @date, [username] = @username, [report] = @report WHERE [no] = @original_no AND [date] = @original_date AND [username] = @original_username AND [report] = @original_report">
            <DeleteParameters>
                <asp:Parameter Name="original_no" Type="String" />
                <asp:Parameter Name="original_date" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_report" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="no" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="report" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="report" Type="String" />
                <asp:Parameter Name="original_no" Type="String" />
                <asp:Parameter Name="original_date" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_report" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

