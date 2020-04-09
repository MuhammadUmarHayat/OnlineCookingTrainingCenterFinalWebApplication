<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestUploadFiles.aspx.cs" Inherits="TestUploadFiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #660066;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>




            Upload video (Max 50 MB)
            <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload " />
&nbsp;<asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <br />
            <br />
            <br />
            <br />




        </div>
    </form>
</body>
</html>
