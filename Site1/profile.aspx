<%@ Page Title="" Language="C#" MasterPageFile="~/Site1/master_page.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Regestration_DEMO.Site1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>
    .largeButton 
{
  Font-Size:Large;
}
    </style>
    <center>  
        <br/>
        <table style="width: auto; font-size:xx-large">
                <tr>
                    <td><asp:Label ID="Label_name" runat="server" Text="Name :" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_name" runat="server" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_email" runat="server" Text="Enter email :" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_email" runat="server" TextMode="Email" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_number" runat="server" Text="Enter number :"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_number" runat="server" TextMode="Phone" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_age" runat="server" Text="Enter age :"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_age" runat="server" TextMode="Number" Text=""></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td><asp:Label ID="Label_username" runat="server" Text="Set UserName :" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_username" runat="server" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_pwd" runat="server" Text="Set Password :"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_pwd" runat="server" Text="" ></asp:TextBox></td>
                </tr>
            </table>
        <br/>
        <asp:Label ID="Label_updateSucess" runat="server" ForeColor="#009933"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSourceUserData" Width="90%">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceUserData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [data] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="uname" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
     <div>
            <table style="width:100%;" >
                <tr>
                    <td width="100px">
                        <asp:Button ID="Button_home" runat="server" Text="HOME" OnClick="Button_home_Click" CssClass="largeButton" />
                    </td>
                    <td width="100px">
                        <asp:Button ID="Button_logout" runat="server" Text="LOGOUT" OnClick="Button_logout_Click" CssClass="largeButton" />
                    </td>
                    <td width="100px" >
                        <asp:Button ID="Button_delete" runat="server" Text="DELETE ACCOUNT" ForeColor="Red" OnClick="Button_delete_Click" OnClientClick="return confirm('Are you sure you want to DELETE ACCOUNT ?')" CssClass="largeButton"/>
                    </td>
                    <td width="100px">
                        <asp:Button ID="Button_update" runat="server" Text="UPDATE" OnClick="Button_update_Click" CssClass="largeButton" />
                    </td>
                </tr>
            </table>
     </div>
        </center>
</asp:Content>
