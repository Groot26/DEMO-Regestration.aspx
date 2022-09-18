<%@ Page Title="" Language="C#" MasterPageFile="~/Site1/master_page.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Regestration_DEMO.Site1.homePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style=" height:auto ;width: auto; padding: 10px; border: 1px solid black; margin: 0; ">
        <center>
        <asp:MultiView ID="MultiView_image" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <img alt="1" src="../assets/images/cat/cat1.jfif" height="455" width="850" />
            </asp:View>
            <asp:View ID="View2" runat="server">
               <img alt="2" src="../assets/images/cat/cat2.jfif" height="455" width="850"/>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <img alt="3" src="../assets/images/cat/cat3.jfif"  height="455" width="850"/>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <img alt="4" src="../assets/images/cat/cat4.jfif" height="455" width="850"/>
            </asp:View>
        </asp:MultiView>

        <br />
        </center>

        <table style="width: 100%;">
            <tr>
                <td style="width:50%"><asp:Button ID="prv" runat="server" Text="PREVIOUS" OnClick="prv_Click" Width="100%"/></td>
                <td><asp:Button ID="nxt" runat="server" Text="NEXT" OnClick="nxt_Click" Width="100%" /></td>
            </tr>
        </table>

    </div>
</asp:Content>
