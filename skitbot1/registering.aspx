<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registering.aspx.cs" Inherits="skitbot1.registering" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link rel="stylesheet" href="Styles/StyleSheet1.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p><asp:Label ID="Label5" runat="server" Text="Username"></asp:Label></p>
    <p><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RFV" runat="server" ControlToValidate="Textbox5" ErrorMessage="key in a Username" ValidationExpression="^[a-zA-Z\s]+$"></asp:RequiredFieldValidator>

    <p><asp:Label ID="Label6" runat="server" Text="Email"></asp:Label></p>
    <p><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="Textbox6" ErrorMessage="key a valid email" ValidationExpression="^[a-zA-Z\s]+$"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RFV3" runat="server" ErrorMessage="Key in a valid email" ControlToValidate="Textbox2" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />

    <p><asp:Label ID="Label7" runat="server" Text="Password"></asp:Label></p>
    <p><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RFV4" runat="server" ControlToValidate="Textbox7" ErrorMessage="Key in a Password" ValidationExpression="^[a-zA-Z\s]+$"></asp:RequiredFieldValidator>

    <asp:Button ID="Button1" runat="server" Text="Sign up" OnClick="Button1_Click" />

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

    <p> <asp:Label ID="Alert" runat="server"></asp:Label> </p>
</asp:Content>
