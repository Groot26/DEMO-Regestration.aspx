<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WildForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body /*style="background-color:black;text-align:left; height: 278px;"*/ >
    <form id="form1" runat="server">
        
        <center>
            <div style="height: auto">
                    <br />
                    <img src="../assets/images/png_applogo.png" height="200" width="720" alt="WildSnap" />
                    <br/>
                    <p style="font-size:35px;">WildSnap</p>
        
                <div style=" height:auto ;width: 320px; padding: 10px; border: 1px solid black; margin: 0; ">
                   <asp:Label ID="Label_username" runat="server" Text="Username" style="height: 21px; width: 175px"></asp:Label>
                    <br/>
                    <asp:TextBox ID="TextBox_username" runat="server" Height="20px" Width="207px"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label_pwd" runat="server" Text="Password"></asp:Label>
                    <br/>
                    <asp:TextBox ID="TextBox_pwd" runat="server" Height="16px" Width="202px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label_auth" runat="server" ForeColor="#FF3300"></asp:Label>
                    <br />
                    <asp:Button ID="Button_signin" runat="server" Text="Sign In" BackColor="Green" OnClick="Button_signin_Click"  />
                </div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_username" runat="server" ErrorMessage="*Username Required" ControlToValidate="TextBox_username" ForeColor="Red"></asp:RequiredFieldValidator>
                <br/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Password Required" ControlToValidate="TextBox_pwd" ForeColor="Red"></asp:RequiredFieldValidator>
                <br/>
                Do not have a account?
                <br/>

                <asp:Button ID="Button_create_acc" runat="server" Text="Create New Account" BackColor="LightBlue" OnClick="Button_create_acc_Click" CausesValidation="False" />
                
            </div>
        </center>
      
    </form>
  
</body>
</html>
