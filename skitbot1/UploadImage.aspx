<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="skitbot1.UploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
        <asp:Image ID="CurrentImage" runat="server" />
    </div>
    </form>
</body>
</html>
