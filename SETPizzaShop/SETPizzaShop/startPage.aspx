<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startPage.aspx.cs" Inherits="SETPizzaShop.startPage" %>

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
            <div style="width:1000px; height:225px; text-align:center; align-content:center; margin:0 auto; border:outset; background-color:#e8e8e8; align-items:center;">
                <br />
               <asp:Table runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell Width="300px">
                            <asp:Label Font-Size="20px" ID="lblWelcome" runat="server" Text="Welcome to <i><b>SET Pizza Shop</b></i>. Enter Your Name to Continue."></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                <asp:Table ID="tblName" runat="server" style="margin:0 auto" BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell Width="300px">
                             <asp:Label runat="server" Text="Please Enter Your First and Last Name"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox placeholder="(e.g. Sean Clarke)" ID="txtName" runat="server" Width="200px" ToolTip="Enter Your Name"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell Width="300px">

                            <asp:RequiredFieldValidator 
                                ID="txtNameValidator" 
                                runat="server" 
                                BackColor="#ffb0b0"
                                BorderStyle="None"
                                ControlToValidate="txtName" 
                                ErrorMessage="Sorry, this field is required." 
                                Width="300px" 
                                style="color:#a11b1b;" 
                                Display="Dynamic">
                            </asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1"
                                runat="server"
                                BackColor="#ffb0b0"
                                BorderStyle="None"
                                Width="300px" 
                                style="color:#a11b1b;" 
                                ControlToValidate="txtName"
                                ValidationExpression="^[a-zA-Z\s]*$"
                                ErrorMessage="Sorry, you must enter letters only." 
                                Display="Dynamic">
                            </asp:RegularExpressionValidator>

                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:Table ID="tblButton" runat="server" style="                        margin: 0 auto
                " BackColor="#e8e8e8" Width="800px">
                    <asp:TableRow Height="30px">
                        <asp:TableCell><br /><asp:Button CssClass="button5" ID="btnSubmitName" Text="Submit" runat="server" /></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
                            <br />
                <br />
        </div>
    </form>
</body>
</html>
