<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="skitbot1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Username<br />
    <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <br />
    <br />
    Password<br />
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" Text="Enter" />
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
</asp:Content>
