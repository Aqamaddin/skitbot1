<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registering.aspx.cs" Inherits="skitbot1.registering" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Styles/StyleSheet1.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <br />
<br />

    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <br />
<br />

    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>

    <br />
<br />

    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
