<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminLogin.aspx.vb" Inherits="KLbirdPark.AdminLogin" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/progresbar.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.js"></script>
    <title></title>
</head>
<body>
    <form id="loginform" runat="server">
            <div class="container-sm">   
            <div class="jumbotron ">
                <div class >
                    <h4>Admin Login</h4>
                    <br />
                    <asp:Label ID="Username" runat="server" Text="Username :"></asp:Label><br />
                    <asp:TextBox ID="txtUsername" runat="server" TabIndex="1" ToolTip="Enter your username"></asp:TextBox><br />
                    <asp:Label ID="LblErrorUsername" runat="server" Text=""  ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Label ID="Password" runat="server" Text="Password :"></asp:Label><br />
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" TabIndex="2" ToolTip="Enter your password" ></asp:TextBox><br />
                    <asp:Label ID="lblErrorPassword" runat="server" Text=""  ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btnLogin" runat="server" Text="Login" TabIndex="3" /><br />
                    <asp:Label ID="lblErrorLogin" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
    </form>
</body>
    	<script>
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
</script>
</html>
