<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="itemPage.aspx.cs" Inherits="skitbot1.itemPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        ID:
        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ID:
        <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Description:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        ID:
        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
        <br />
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
        <br />
        Description:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
        <br />
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:Image ID="Image2" runat="server" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626741_1626741_co5027ConnectionString %>" SelectCommand="SELECT * FROM [Table1] WHERE ([ID] = @ID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="ID" QueryStringField="Id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
