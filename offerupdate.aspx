<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="offerupdate.aspx.cs" Inherits="offerupdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            text-align: left;
        }
        .style14
        {
            width: 100%;
            height: 314px;
            font-size: medium;
        }
        .style25
        {
            text-align: right;
            width: 300px;
            font-size: large;
            height: 35px;
        }
        .style26
        {
            width: 100%;
            height: 424px;
        }
        .style29
        {
            height: 45px;
            text-align: right;
            width: 300px;
        }
        .style33
        {
            margin-left: 120px;
        }
        .style37
        {
            font-size: large;
            text-align: right;
            width: 300px;
            font-weight: normal;
            height: 75px;
        }
        .style38
        {
            text-align: left;
            height: 35px;
        }
        .style40
        {
            height: 45px;
            text-align: left;
        }
        .style41
        {
            height: 46px;
            text-align: right;
            width: 300px;
            font-size: large;
        }
        .style42
        {
            height: 46px;
            text-align: left;
        }
        .style43
        {
            font-size: large;
            text-align: right;
            width: 300px;
            font-weight: normal;
            height: 34px;
        }
        .style44
        {
            height: 8px;
            text-align: left;
        }
        .style47
        {
            height: 75px;
            text-align: left;
        }
        .style53
        {
            text-align: right;
            width: 300px;
            font-size: large;
            height: 8px;
        }
        .style54
        {
            text-align: left;
            width: 1324px;
        }
        .style55
        {
            text-align: center;
        }
        .style59
        {
            height: 45px;
            text-align: right;
            width: 300px;
            font-size: large;
        }
        .style60
        {
            font-size: large;
            text-align: right;
            width: 300px;
            font-weight: normal;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style54">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/bg_img/o.png" 
            Width="269px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="style2" 
            onclick="LinkButton2_Click" style="font-size: large">Back</asp:LinkButton>
    </h1>
    <p class="style13">
        &nbsp;</p>
        <div class="style55">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" BackColor="White" CellPadding="4" GridLines="Horizontal" 
                Width="1116px" CssClass="style33" Height="187px">
            <EditItemTemplate>
                <table class="style26">
                    <tr>
                        <td class="style43">
                            </td>
                        <td class="style44">
                            <asp:Label ID="idLabel1" runat="server" CssClass="style2" 
                                Text='<%# Eval("id") %>' style="font-size: large" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style60">
                            News1:</td>
                        <td class="style40">
                            <asp:TextBox ID="news1TextBox" runat="server" Height="25px" 
                                Text='<%# Bind("news1") %>' Width="300px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style60">
                            News2:</td>
                        <td class="style40">
                            <asp:TextBox ID="news2TextBox" runat="server" Height="26px" 
                                Text='<%# Bind("news2") %>' Width="300px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style60">
                            News3:</td>
                        <td class="style40">
                            <asp:TextBox ID="news3TextBox" runat="server" Height="25px" 
                                Text='<%# Bind("news3") %>' Width="300px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style60">
                            News4:</td>
                        <td class="style40">
                            <asp:TextBox ID="news4TextBox" runat="server" Height="26px" 
                                Text='<%# Bind("news4") %>' Width="300px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style60">
                            News5:</td>
                        <td class="style40">
                            <asp:TextBox ID="news5TextBox" runat="server" Height="25px" 
                                 Text='<%# Bind("news5") %>' 
                                Width="300px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style37">
                            </td>
                        <td class="style47">
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" CssClass="style4" Text="Update" />
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                CommandName="Cancel" CssClass="style4" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <EditRowStyle BackColor="white" Font-Bold="True" ForeColor="#000000" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                id:
                <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                <br />
                news1:
                <asp:TextBox ID="news1TextBox" runat="server" Text='<%# Bind("news1") %>' />
                <br />
                news2:
                <asp:TextBox ID="news2TextBox" runat="server" Text='<%# Bind("news2") %>' />
                <br />
                news3:
                <asp:TextBox ID="news3TextBox" runat="server" Text='<%# Bind("news3") %>' />
                <br />
                news4:
                <asp:TextBox ID="news4TextBox" runat="server" Text='<%# Bind("news4") %>' />
                <br />
                news5:
                <asp:TextBox ID="news5TextBox" runat="server" Text='<%# Bind("news5") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="style14">
                    <tr>
                        <td class="style53">
                            <span class="style6">&nbsp;</span></td>
                        <td class="style44">
                            <asp:Label ID="idLabel" runat="server" CssClass="style4" 
                                Text='<%# Eval("id") %>' style="font-size: xx-small" Visible="False" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style29">
                            <br class="style6" />
                            <span class="style6">News 1:</span></td>
                        <td class="style40">
                            <br />
                            <asp:Label ID="news1Label" runat="server" CssClass="style4" 
                                Text='<%# Bind("news1") %>' style="font-size: large" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style59">
                            News 2:
                        </td>
                        <td class="style40">
                            <asp:Label ID="news2Label" runat="server" CssClass="style4" 
                                Text='<%# Bind("news2") %>' style="font-size: large" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style41">
                            <span class="style6">News 3: </span>
                        </td>
                        <td class="style42">
                            <asp:Label ID="news3Label" runat="server" CssClass="style4" 
                                Text='<%# Bind("news3") %>' style="font-size: large" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style59">
                            <span class="style6">News 4:</span></td>
                        <td class="style40">
                            <asp:Label ID="news4Label" runat="server" CssClass="style4" 
                                Text='<%# Bind("news4") %>' style="font-size: large" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style59">
                            <span class="style6">News 5: </span>
                        </td>
                        <td class="style40">
                            <asp:Label ID="news5Label" runat="server" CssClass="style4" 
                                Text='<%# Bind("news5") %>' style="font-size: large" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style25">
                            </td>
                        <td class="style38">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                                CommandName="Edit" CssClass="style4" Text="Edit" 
                                style="font-size: large" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle BackColor="white" ForeColor="#000000" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:FormView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:GMConnectionString %>" 
            DeleteCommand="DELETE FROM [updates] WHERE [id] = @original_id AND [news1] = @original_news1 AND (([news2] = @original_news2) OR ([news2] IS NULL AND @original_news2 IS NULL)) AND (([news3] = @original_news3) OR ([news3] IS NULL AND @original_news3 IS NULL)) AND (([news4] = @original_news4) OR ([news4] IS NULL AND @original_news4 IS NULL)) AND (([news5] = @original_news5) OR ([news5] IS NULL AND @original_news5 IS NULL))" 
            InsertCommand="INSERT INTO [updates] ([id], [news1], [news2], [news3], [news4], [news5]) VALUES (@id, @news1, @news2, @news3, @news4, @news5)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [updates]" 
            UpdateCommand="UPDATE [updates] SET [news1] = @news1, [news2] = @news2, [news3] = @news3, [news4] = @news4, [news5] = @news5 WHERE [id] = @original_id AND [news1] = @original_news1 AND (([news2] = @original_news2) OR ([news2] IS NULL AND @original_news2 IS NULL)) AND (([news3] = @original_news3) OR ([news3] IS NULL AND @original_news3 IS NULL)) AND (([news4] = @original_news4) OR ([news4] IS NULL AND @original_news4 IS NULL)) AND (([news5] = @original_news5) OR ([news5] IS NULL AND @original_news5 IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="String" />
                <asp:Parameter Name="original_news1" Type="String" />
                <asp:Parameter Name="original_news2" Type="String" />
                <asp:Parameter Name="original_news3" Type="String" />
                <asp:Parameter Name="original_news4" Type="String" />
                <asp:Parameter Name="original_news5" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="String" />
                <asp:Parameter Name="news1" Type="String" />
                <asp:Parameter Name="news2" Type="String" />
                <asp:Parameter Name="news3" Type="String" />
                <asp:Parameter Name="news4" Type="String" />
                <asp:Parameter Name="news5" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="news1" Type="String" />
                <asp:Parameter Name="news2" Type="String" />
                <asp:Parameter Name="news3" Type="String" />
                <asp:Parameter Name="news4" Type="String" />
                <asp:Parameter Name="news5" Type="String" />
                <asp:Parameter Name="original_id" Type="String" />
                <asp:Parameter Name="original_news1" Type="String" />
                <asp:Parameter Name="original_news2" Type="String" />
                <asp:Parameter Name="original_news3" Type="String" />
                <asp:Parameter Name="original_news4" Type="String" />
                <asp:Parameter Name="original_news5" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
</asp:Content>

