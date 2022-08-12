<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="SETPizzaShop.Page3" %>

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

            <div style="width:1000px; height:335px; text-align:center; align-content:center; margin:0 auto; border:outset; background-color:#e8e8e8;">
                <br />
                <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell Width="300px">
                            <asp:Label Font-Size="20px" ID="lblGreeting" runat="server" Text="Ciao"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                 <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell Width="300px">
                            <asp:Label Font-Size="20px" ID="lblInfo" runat="server" Text="Choose if you would like to CONFIRM or CANCEL your order."></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

               <br />
 
                <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell Width="300px">
                            <asp:Label Font-Size="16px" ID="lblToppings" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <br />

                <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell Width="300px">
                            <asp:Label Font-Size="18px" ID="lblCost" runat="server" Text=""></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <br />

                <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell>
                            <asp:Button OnClick="btnConfirm_Click" CssClass="button5" ID="btnConfirm" Text="CONFIRM" runat="server" />
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button OnClick="btnCancel_Click" CssClass="canButton" ID="btnCancel" Text="CANCEL" runat="server" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

           </div>

        </div>
    </form>
</body>
</html>
