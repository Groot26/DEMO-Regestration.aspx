<%@ Page Title="" Language="C#" MasterPageFile="~/Site1/master_page.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Regestration_DEMO.Site1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>    <table style="width: auto;">
                <tr>
                    <td><asp:Label ID="Label_name" runat="server" Text="Name :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_name" runat="server" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_email" runat="server" Text="Enter email :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_email" runat="server" TextMode="Email" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_number" runat="server" Text="Enter number :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_number" runat="server" TextMode="Phone" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_age" runat="server" Text="Enter age :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_age" runat="server" TextMode="Number" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_dob" runat="server" Text="Enter DOB :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_dob" runat="server" TextMode="Date" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_username" runat="server" Text="Set UserName :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_username" runat="server" Text=""></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label_pwd" runat="server" Text="Set Password :" Font-Size="X-Large"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox_pwd" runat="server" Text="" ></asp:TextBox></td>
                </tr>
            </table>
        <br/>
        <asp:Label ID="Label_updateSucess" runat="server" ForeColor="#009933"></asp:Label>
        </center> 
     <div>
         <center>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlUserData">
                 <Columns>
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                     <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                     <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                     <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                     <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                     <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                 </Columns>
             </asp:GridView>
             </center>
             <asp:SqlDataSource ID="SqlUserData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [data]"></asp:SqlDataSource>
             <br /><br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Home" OnClick="Button1_Click" />

                    </td>
                    <td>
                        <asp:Button ID="Button_logout" runat="server" Text="logout" OnClick="Button_logout_Click" />
                    </td>
                    <td > <asp:Button ID="Button_update" runat="server" Text="UPDATE" OnClick="Button_update_Click" />

                    </td>
                </tr>
            </table>
     </div>
</asp:Content>
