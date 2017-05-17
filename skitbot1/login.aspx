<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="skitbot1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Username<p />
    <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <p />
    <p />
    Password<p />
    <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
    <p />
    <p />
    <asp:Button ID="Button3" runat="server" Text="Enter" OnClick="Button3_Click" />
    <p />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <p />
</asp:Content>
