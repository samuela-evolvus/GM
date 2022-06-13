<%@ Page Title="" Language="C#" MasterPageFile="~/userpage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
            text-align: center;
            color: #FFFFFF;
            height: 42px;
            margin-top: 0px;
            background-color: #003366;
        }
        .style19
        {
            margin-top: 0px;
        }
        .style20
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="style18">
        Payment</h1>
    <p class="style19">
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Paytm" 
            GroupName="payment" AutoPostBack="True" 
            oncheckedchanged="RadioButton1_CheckedChanged" Visible="False" />
        <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" 
            Text="Bank" GroupName="payment" 
            oncheckedchanged="RadioButton4_CheckedChanged" />
    &nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
            oncheckedchanged="RadioButton3_CheckedChanged" Text="G-Pay" 
            Visible="False" />
        <asp:RadioButton ID="RadioButton7" runat="server" AutoPostBack="True" 
            GroupName="payment" oncheckedchanged="RadioButton7_CheckedChanged1" 
            Text="G-Pay" />
    &nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Cash on Delivery" 
            AutoPostBack="True" GroupName="payment" 
            oncheckedchanged="RadioButton2_CheckedChanged" />
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="554px" BorderStyle="Inset" 
        BorderWidth="5px" Visible="False">
        <h2 class="style20">
            &nbsp;</h2>
        <h2 class="style20">
            Bank Transaction</h2>
        <p class="style20">
            &nbsp;</p>
        <p>
            <asp:RadioButton ID="RadioButton5" runat="server" Text="Debit Card " 
                AutoPostBack="True" GroupName="card" 
                oncheckedchanged="RadioButton5_CheckedChanged1" />
            &nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton6" runat="server" Text="Credit Card" 
                AutoPostBack="True" GroupName="card" 
                oncheckedchanged="RadioButton6_CheckedChanged" />
        </p>
        <asp:Panel ID="Panel2" runat="server" Height="389px" Visible="False">
            <h3 class="style20">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </h3>
            <p class="style20">
                &nbsp;</p>
            <p>
                Enter your 12 Digit Bank Account Number :
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="12"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter only Numbers" 
                    ValidationExpression="^\d{10,14}$"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount:<asp:TextBox 
                    ID="TextBox8" runat="server" ReadOnly="True"></asp:TextBox>
            </p>
            <p>
                Enter your 4 Digit Pin Number :
                <asp:TextBox ID="TextBox2" runat="server" MaxLength="4" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                Expire Date :
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; CVC :
                <asp:TextBox ID="TextBox4" runat="server" MaxLength="3"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                    runat="server" ControlToValidate="TextBox4" 
                    ErrorMessage="*Enter 3 Digit CVC Number" ValidationExpression="^\d{10,14}$"></asp:RegularExpressionValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; Zip Code :
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="6"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*Enter a Valid Zipcode" 
                    ValidationExpression="^\d{10,14}$"></asp:RegularExpressionValidator>
            </p>
            <p class="style20">
                &nbsp;</p>
            <p class="style20">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </p>
            <p class="style20">
                &nbsp;</p>
            <p class="style20">
                <asp:Button ID="Button2" runat="server" Text="Submit" 
                    onclick="Button2_Click2" />
            </p>
        </asp:Panel>
        <p>
        </p>
        <p class="style20">
            &nbsp;</p>
    </asp:Panel>
    <p>
    </p>
    <asp:Panel ID="Panel3" runat="server" BorderStyle="Inset" BorderWidth="5px" 
        Height="417px" Visible="False">
        <h3 class="style20">
            &nbsp;</h3>
        <h1 class="style20">
            <asp:Image ID="Image1" runat="server" Height="85px" 
                ImageUrl="~/img/unnamed.png" Width="250px" />
        </h1>
        <p class="style20">
            &nbsp;</p>
        <p class="style20">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Enter Your Number :
            <asp:TextBox ID="TextBox6" runat="server" MaxLength="10"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                runat="server" ControlToValidate="TextBox6" 
                ErrorMessage="*Enter Your 10 Digit Number" ValidationExpression="^\d{10,14}$"></asp:RegularExpressionValidator>
        </p>
        <p class="style20">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Enter Your Pin Number :
            <asp:TextBox ID="TextBox7" runat="server" MaxLength="4" TextMode="Password"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="style20">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Amount :
            <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="style20">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="style20">
            &nbsp;</p>
        <p class="style20">
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </p>
        <p class="style20">
            &nbsp;</p>
        <p class="style20">
            <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" />
        </p>
    </asp:Panel>
    <p>
        &nbsp;</p>
    </asp:Content>

