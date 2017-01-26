<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TEST LOGIN.aspx.cs" Inherits="SSBP.TEST_LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="MenuName" runat="server" Text="User Registration Test"></asp:Label>
        <br />  
        <asp:Literal ID="StatusMessage" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="UserName" runat="server" Text="User Name"></asp:Label>
        <br />
        <asp:TextBox ID="UserNameInput" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="PasswordInput" runat="server" TextMode="Password"></asp:TextBox>
        <br />  
        <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
    </div>
    </form>
</body>
</html>
