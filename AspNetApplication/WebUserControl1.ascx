<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="AspNetApplication.WebUserControl1" %>

<%@ OutputCache Duration="30" VaryByParam="None" %>


<div class="jumbotron">
    <h2 class="bg-danger text-light text-center p-4">
        <%= DateTime.Now.ToString() %>
    </h2>
</div>