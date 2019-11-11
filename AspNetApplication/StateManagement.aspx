<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StateManagement.aspx.cs" Inherits="AspNetApplication.StateManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <h2 class="bg-success text-white text-center">State Management</h2>

        <hr />
        Application Counter :=
        <asp:Label ID="lblApplication" runat="server" Font-Bold="true" />
        <br />

        Session Counter :=
        <asp:Label ID="lblSession" runat="server" Font-Bold="true" />
        <br />
        <hr />


        <div style="border: 1px solid black;">
            <div style="background-color:deepskyblue; color:white; font-weight:bold; padding:2px;
                        width:100%; border-bottom:1px solid black">
                Working with cookies
            </div>

            <div style="padding:10px;">
                <asp:Label ID="lblname" runat="server" Text="Cookie Name" Width="150px" />
                <asp:TextBox ID="txtname" runat="server" BorderColor="Wheat" BorderStyle="Dotted"
                    BorderWidth="2px" />
            </div>
            <br />
            <div style="padding:10px;">
                <asp:Label ID="lblvalue" runat="server" Text="Cookie value" Width="150px" />
                <asp:TextBox ID="txtvalue" runat="server" BorderColor="Wheat" BorderStyle="Dotted"
                    BorderWidth="2px" />
            </div>
            <br />

            <asp:Button ID="btnstore" runat="server" Text="Store Cookies" BackColor="YellowGreen"
                ForeColor="Red" Font-Bold="true" BorderColor="Blue" BorderStyle="Groove"
                BorderWidth="1px" OnClick="btnstore_Click" />

            <asp:Button ID="btnRetrieve" runat="server" OnClick="btnRetrieve_Click" Text="Retrieve Cookies" />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            <br />
            <br />

        </div> 
     </section>
</asp:Content>
