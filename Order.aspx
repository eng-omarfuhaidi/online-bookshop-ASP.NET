<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="OnlineBookShope.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Book Store</title>
     <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 827px;
        }
    </style>

</head>
 <body style="background-color:#e6dddd">
     <p class="auto-style1" style="color:darkturquoise">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Welcom:<asp:Label ID="LblOwner" runat="server" Text="Label"></asp:Label>
         </strong></p>
     <p style="align-content:center;margin-left:600px;">
         :<asp:Image ID="Image1"  width="150" Height="150" runat ="server" />
     </p>
     
    <div class="container">
        <header>
           <h1 style="text-align:center;color:#12c7e8;border:solid;">Welcome To Online Book Shop</h1>
        </header>
    <main>
        <form id="form1" runat="server" class="form-horizontal">
            <div class="row">
                <%-- row 1 --%>
                <div class="col-sm-8">
                    <%-- product drop down and info column --%>
                    <div class="form-group">
                        <label class="col-sm-5" style="color:blue">
                        Please select a Book:</label>
                        <div class="col-sm-6" style="margin-left:-150px">
                            <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="BookID">
                           </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BookShopConnectionString %>" SelectCommand="SELECT [BookID], [Name], [ShortDescription], [LongDescription], [UnitPrice], [ImageFile] FROM [Book] ORDER BY [Name]"></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <h4 style="color:#006FB9">
                                <asp:Label ID="lblName" runat="server"></asp:Label>
                            </h4>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblShortDescription" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblLongDescription" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Label ID="lblUnitPrice" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4" >
                    <%-- product image column --%>
                    <asp:Image ID="imagebook" Width="300" height="200"  runat="server" />
                </div>
            </div>
            <%-- end of row 1 --%>

            <div class="row">
                <%-- row 2 --%>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label class="col-sm-1" style="color:#006FB9">
                        Quantity:</label>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-sm-8">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" Display="Dynamic" ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" Display="Dynamic" ErrorMessage="Quantity must range from 1 to 500." MaximumValue="500" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12" style="color:cornflowerblue" >
                            <asp:Button ID="btnAdd" runat="server" CssClass="btn" onclick="btnAdd_Click" Text="Add to Cart"  />
                            <asp:Button ID="btnCart" runat="server" CausesValidation="False" CssClass="btn" PostBackUrl="~/Cart.aspx" Text="Go to Cart" />
                        </div>
                    </div>
                </div>
            </div>
            <%-- end of row 2 --%>

        </form>
    </main>
    </div>
</body>
</html>
