<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="SETPizzaShop.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SET Pizza Shop</title>
    <link rel="stylesheet" href="StyleSheet.css"/>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type = "text/javascript" src = "jQueryFile.js"></script>

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

            <div style="width:1000px; height:295px; text-align:center; align-content:center; margin:0 auto; border:outset; background-color:#e8e8e8;">
                <br />
                <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell Width="300px">
                            <asp:Label Font-Size="20px" ID="lblGreeting" runat="server" Text="Ciao"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

               <br />

                <asp:Table ID="tblName" runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="920px">
                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:CheckBox name="chkPepperoni" ID="chkPepperoni" Text="($1.50) " runat="server" ClientIDMode="Static" onchange="chkPepperoniToppingsClicked(this);" />
                            <asp:Label ID="lblPepperoni" runat="server"  Text="Pepperoni"></asp:Label>
                        </asp:TableCell>

                        <asp:TableCell HorizontalAlign="Center">
                            <asp:CheckBox ID="chkMushrooms" Text="($1.00) " runat="server" ClientIDMode="Static" onchange="chkMushroomsToppingsClicked(this);" />
                            <asp:Label ID="lblMushrooms" runat="server" Text="Mushrooms"></asp:Label>
                        </asp:TableCell>

                        <asp:TableCell HorizontalAlign="Center">
                            <asp:CheckBox ID="chkGreenOlives" Text="($1.00) " runat="server" ClientIDMode="Static" onchange="chkGreenOlivesToppingsClicked(this);" />
                            <asp:Label ID="lblGreenOlives" runat="server" Text="Green Olives"></asp:Label>
                        </asp:TableCell>

                        <asp:TableCell HorizontalAlign="Center">
                            <asp:CheckBox ID="chkGreenPeppers" Text="($1.00) " runat="server" ClientIDMode="Static" onchange="chkGreenPeppersToppingsClicked(this);" />
                            <asp:Label ID="lblGreenPeppers" runat="server" Text="Green Peppers"></asp:Label>
                        </asp:TableCell>

                        <asp:TableCell HorizontalAlign="Center">
                            <asp:CheckBox ID="chkDoubleCheese" Text="($2.25) " runat="server" ClientIDMode="Static" onchange="chkDoubleCheeseToppingsClicked(this);" />
                            <asp:Label ID="lblDoubleCheese" runat="server" Text="Double Cheese"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br/>
                <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                  <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblTotalPrice" Font-Size="20px" runat="server" Text="Total Cost: $10.00"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

                <br />

                <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                  <asp:TableRow>
                        <asp:TableCell>
                            <br /><asp:Button OnClick="btnSubmitOrder_Click" CssClass="button5" ID="btnSubmitOrder" Text="Make It!" runat="server" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>

            </div>
        </div>
    </form>
</body>
</html>
