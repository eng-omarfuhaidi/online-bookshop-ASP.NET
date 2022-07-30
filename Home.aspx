<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineBookShope.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 969px;
            height: 155px;
            margin-left: 0px;
            margin-right: 0px;
        }
        body{margin-left:13%}
        .auto-style2 {
            width: 974px;
            height: 460px;
            margin-right: 107px;
            background-color:burlywood;
        }
    </style>
</head>
<body>
   
        <form id="form1" runat="server">
   
        <div>
            <img alt="" class="auto-style1"  src="Images/Books/burn-in.gif" /></div>
    <div>
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Home.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Login" Value="Login" NavigateUrl="~/Login.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Order" Value="Order" NavigateUrl="~/Order.aspx"></asp:MenuItem>
            
            </Items>
            <StaticHoverStyle BackColor="#66FFFF" ForeColor="#000099" />
            <StaticMenuItemStyle BackColor="#9999FF" BorderColor="#FF3399" ForeColor="White" HorizontalPadding="140px" BorderWidth="2px" Font-Bold="True" />
        </asp:Menu>
            </div>
 
   <div>

       <img alt="" class="auto-style2" src="Images/Books/lib.png" /></div>
        </form>
 
   
</body>
</html>
