<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="FirstPage.aspx.cs" 
    Inherits="AspNetApplication.FirstPage" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <style>
        .label {
            background-color:red; color:yellow; padding:5px;
        }
    </style>
    <script runat="server">

    </script>


</head>
<body>
    <h2>welcome to asp.net</h2>
    <form runat="server"> <%--creates form obj(using id we r creating obj) on server and generates the html o/p 
                         asp: ,  id="lbl1" , runat="server" these 3 are mandatory --%>


       <%-- <label for="username">User name: </label>
        <input type="text" name="username"/>
        <br />
        <label for="password">Password: </label>
        <input type="password" name="password"/>
        <br />
        <button type="button">Submit</button>
        --%>

        <asp:Label id="lbl1" runat="server" Text="User name:"/>
        <asp:TextBox id="txt1" runat="server"/>
        <br/>
        <asp:Label id="lbl2" runat="server" Text="Password:"/>
        <asp:TextBox id="txt2" runat="server" TextMode="Password"/>
        <br/>
        <asp:Button id="btn1" runat="server" Text="Submit" onClick="btn_Click"/>

    </form>
</body>
</html>