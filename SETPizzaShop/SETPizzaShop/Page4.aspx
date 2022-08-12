<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="SETPizzaShop.Page4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <title>SET Pizza Shop</title>
    <link rel="stylesheet" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color:orangered; height:115px; text-align:center; border-style:ridge; vertical-align:top;">
                <h1 class="title" style="font-size: 78px; text-align:center; vertical-align:top;"><b>SET Pizza Shop</b></h1>
            </div>
               <hr />
            <br />
            <br />

            <div style="width:1000px; height:430px; text-align:center; align-content:center; margin:0 auto; border:outset; background-color:#e8e8e8;">
                
                <br/>

                <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell Width="300px">
                            <asp:Label Font-Size="20px" ID="lblFarewell" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
 
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/pizza.gif" />

           </div>
        </div>
    </form>
</body>
</html>
