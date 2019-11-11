<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignOut.aspx.cs" Inherits="AspNetApplication.SignOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="jumbotron">
        <div class="display-1">you have logged out. You will have to
            <asp:HyperLink ID="link1" runat="server" Text="re-login"
                NavigateUrl="~/SignInForm.aspx" /> to access site
        </div>
    </section>
</asp:Content>
