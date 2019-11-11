<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="OutputCaching.aspx.cs" Inherits="AspNetApplication.OutputCaching" %>

<%@ OutputCache Duration="20" VaryByParam="None" %>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="container">
        <h2 class="bg-dark text-light text-center">
            <%= DateTime.Now.ToString() %>   <%--page cache--%>
            <%-- inline code expression :--%>
        </h2>

        <uc1:WebUserControl1 runat="server" id="WebUserControl1" />  <%--fragment cache--%>

    </section>
</asp:Content>
