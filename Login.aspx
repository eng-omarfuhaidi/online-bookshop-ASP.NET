<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineBookShope.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 181px;
        }
        .auto-style3 {
            color: #3399FF;
        }
        .auto-style4 {
            direction: ltr;
            color: #FFFFCC;
        }
        .auto-style5 {
            width: 181px;
            color: #FFFF99;
        }
        .auto-style7 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #3366FF;
        }
        .auto-style8 {
            color: #FF0000;
        }
    </style>
</head>
<body style="background-image:url('Images/Books/lib.png')">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <h1 class="auto-style3"><strong>Welcome To Online Book Shope</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <h3 class="auto-style4"><strong>Login Page</strong></h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name:</td>
                    <td>
                        <asp:TextBox ID="TextUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Passwrod:</td>
                    <td>
                        <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="btnlogin" runat="server" CssClass="auto-style7" OnClick="btnlogin_Click" Text="Login" Width="75px" />
&nbsp;</strong><asp:Label ID="Labelinvalidlogin" runat="server" CssClass="auto-style8" Text="invalid Login" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
