<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="Regestration_DEMO.admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <table style="width: 100%;">
                <tr><center>
                    <td class="auto-style1"><h1 style="color:cornflowerblue">WELCOME ADMIN</h1></td>
                    <td class="auto-style1" ><asp:ImageButton ID="Profile_Button" runat="server" ImageUrl="~/assets/images/ic_account.png" Height="80px" Width="80px" OnClick="Profile_Button_Click"  /></td>
                </tr>
                <tr>
                    <td style="width:99%">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSourceUserDataAdminView">
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceUserDataAdminView" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Email], [Number], [Age], [Username] FROM [data]"></asp:SqlDataSource>
                    </td>
                    
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox_userID" runat="server" placeholder="UserName" ></asp:TextBox>
                        &nbsp;
                        <asp:TextBox ID="TextBox_adminPWD" runat="server" TextMode="Password" placeholder="Admin Password" ></asp:TextBox>
                        &nbsp;
                        <asp:Button ID="Button_delete" runat="server" Text="DELETE" OnClick="Button_delete_Click" />
                        <br />
                        <asp:Label ID="Label" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
      </center>
    </form>
</body>
</html>
