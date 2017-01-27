<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SSBP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:PlaceHolder ID="LoginStatusPlaceHolder" runat="server" Visible="false">
            <asp:Literal ID="LoginStatusText" runat="server"></asp:Literal>
        </asp:PlaceHolder>
        
        <br />

        <asp:PlaceHolder ID="LoginFormPlaceHolder" runat="server" Visible="false">
            <br />
            <asp:Label ID="UserName" runat="server" Text="Username"></asp:Label>
            <br />
            <asp:TextBox ID="UserNameInput" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="PasswordInput" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="SignInButton" runat="server" Text="Sign In" OnClick="SignInButton_Click" />
            <br />
        </asp:PlaceHolder>

        <asp:PlaceHolder ID="SignOutPlaceHolder" runat="server" Visible="false">
            <asp:Button ID="SignOutButton" runat="server" Text="Sign Out" OnClick="SignOutButton_Click" />
        </asp:PlaceHolder>
    </div>
    </form>
</body>
</html>
