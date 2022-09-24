<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WildForm.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

       <center>
        <div>
           <h1> Welcome to WildSnap </h1>
            <br /><br /><br /><br />
            
            <table style="width: auto;">
                <tr>
                    <td><asp:Label ID="Label_name" runat="server" Text="Name :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_name" runat="server" ErrorMessage="Required Name" ControlToValidate="TextBox_name" ForeColor="#FF3300" Font-Size="Medium"></asp:RequiredFieldValidator>

                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label_email" runat="server" Text="Enter email :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_email" runat="server" TextMode="Email"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ErrorMessage="Required Email" ControlToValidate="TextBox_email" ForeColor="#FF3300" Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label_number" runat="server" Text="Enter number :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_number" runat="server" TextMode="Phone"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_number" runat="server" ErrorMessage="Required Number" ControlToValidate="TextBox_number" ForeColor="#FF3300" Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label_age" runat="server" Text="Enter age :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_age" runat="server" TextMode="Number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_age" runat="server" ErrorMessage="Required Age" ControlToValidate="TextBox_age" ForeColor="#FF3300" Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label_username" runat="server" Text="Set UserName :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_username" runat="server" OnTextChanged="TextBox_username_TextChanged" AutoPostBack="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_username" runat="server" ErrorMessage="Required UserName" ControlToValidate="TextBox_username" ForeColor="#FF3300" Font-Size="Medium"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label_checkUN" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_pwd" runat="server" Text="Set Password :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_pwd" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_pwd" runat="server" ErrorMessage="Required Password" ControlToValidate="TextBox_pwd" ForeColor="#FF3300" Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
         </div>
       </center>

        <div>
             <br /><br />
            <table style="width: 100%;">
                <tr>
                    <td style="width:60%">&nbsp;</td>
                    <td > <asp:Button ID="Button_submit" runat="server" Text="SUBMIT"  BackColor="Green" Height="30px" Width="127px" OnClick="Button_submit_Click" ForeColor="White"  /></td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
