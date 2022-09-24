<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminProfile.aspx.cs" Inherits="Regestration_DEMO.admin.adminProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
    .largeButton 
{
  Font-Size:Large;
}
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <center>
        <div style=" height:250px; width: 90%; padding: 10px; border: 1px solid black; margin: 0; ">
            <table style="width:auto;">
                <tr>
                    <td>
                        <asp:Label ID="Label_adminPWD" runat="server" Text="New ADMIN Password:"></asp:Label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_pwd" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button_update" runat="server" Text="UPDATE" OnClick="Button_update_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="Label_confirm" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        </center>

        <table style="width: 100%;">
            <tr>
                <td>
                    <center>
                    <asp:Button ID="Button_home" runat="server" Text="Home" CssClass="largeButton" OnClick="Button_home_Click" />
                    </center>
                </td>
                <td>
                    <center>
                    <asp:Button ID="Button_logout" runat="server" Text="Logout" CssClass="largeButton" OnClick="Button_logout_Click" />
                    </center>
                 </td>
                
            </tr>
        </table>
         
    </form>
</body>
</html>
