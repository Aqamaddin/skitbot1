<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="skitbot1.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="googlemap.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p><asp:Label ID="Label1" runat="server" Text="name"></asp:Label></p>
    <p><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RFV" runat="server" ControlToValidate="Textbox1" ErrorMessage="key in your name" ValidationExpression="^[a-zA-Z\s]+$"></asp:RequiredFieldValidator>

    <p><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></p>
    <p><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="Textbox2" ErrorMessage="key a valid email" ValidationExpression="^[a-zA-Z\s]+$"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RFV3" runat="server" ErrorMessage="Key in a valid email" ControlToValidate="Textbox2" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />

    <p><asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label></p>
    <p><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RFV4" runat="server" ControlToValidate="Textbox3" ErrorMessage="Enter a Subject" ValidationExpression="^[a-zA-Z\s]+$"></asp:RequiredFieldValidator>

    <p><asp:Label ID="Label4" runat="server" Text="Comment"></asp:Label></p>
    <p><asp:TextBox ID="TextBox4" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RFV5" runat="server" ControlToValidate="Textbox4" ErrorMessage="Please enter a your comment" ValidationExpression="^[a-zA-Z\s]+$"></asp:RequiredFieldValidator>


    <p><asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="send" /></p> 

    <p> <asp:Label ID="Alert" runat="server"></asp:Label> </p>

    <h3>Our Location</h3>
    <div id="map" style="width:100%;height:400px;""></div>
    
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBbmiebiU_N-0PtUdGSM1kfBYyGP5g3VsA&callback=initMap"
    async defer></script>
    
</asp:Content>
