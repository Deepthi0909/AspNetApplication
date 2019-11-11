<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebControl2.aspx.cs" Inherits="AspNetApplication.WebControl2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Literal ID="literal1" runat="server"></asp:Literal>

    <asp:ValidationSummary ID="summary2" runat="server" DisplayMode="List"
        ShowSummary="true" CssClass ="alert alert-danger" HeaderText="Errors"/>

   <section class="card shadow mx-5 mb-5">
      <div class="card-header card-title text-center">Contact Management Form</div>
        <div class="card-body">
                                                  <%-- FirstName : --%>
        <div class="form-group form-row">
            <div class="col-3 offset-1 text-right">
                <asp:Label ID="lbl1" runat="server" Text="FirstName : "></asp:Label> </div>
           <div class="col-5 text-left">
               <asp:TextBox ID="txtFName" runat="server" CssClass="form-control" placeholder="Enter FirstName" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="refv1" runat="server"
                                ControlToValidate="txtFName" Display="Static" Text="*" CssClass=" text-danger"
                   ErrorMessage="FirstName is Required"/>
               <asp:RegularExpressionValidator ID="reg1" runat="server"
                                ControlToValidate="txtFName" Display="Static"
                                CssClass=" text-danger" ErrorMessage="FirstName Should not contain numbers and special characters"
                                 ValidationExpression="^[a-zA-Z]+\s?[a-zA-Z]*\.?[a-zA-Z]*$"/>
          
           </div>
        </div>
                                                 <%-- MiddleName : --%>
             <div class="form-group form-row">
            <div class="col-3 offset-1 text-right">
                <asp:Label ID="lbl2" runat="server" Text="MiddleName : "  placeholder="Enter MiddleName" ></asp:Label> </div>
           <div class="col-5 text-left">
               <asp:TextBox ID="txtMName" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
        </div>

                                                      <%-- LastName : --%>
             <div class="form-group form-row">
            <div class="col-3 offset-1 text-right">
                <asp:Label ID="lbl3" runat="server" Text="LastName : "></asp:Label> </div>
           <div class="col-5 text-left">
               <asp:TextBox ID="txtLName" runat="server" CssClass="form-control" placeholder="Enter lastName" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="refv2" runat="server"
                                ControlToValidate="txtLName" Display="Static" Text="*" CssClass=" text-danger" ErrorMessage="LastName is Required"/>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="txtLName" Display="Static"
                                CssClass=" text-danger" ErrorMessage="LastName Should not contain numbers and special characters"
                                 ValidationExpression="^[a-zA-Z]+\s?[a-zA-Z]*\.?[a-zA-Z]*$"/>
               </div>
        </div>
                                                 <%-- BirthDate : --%>

             <div class="form-group form-row">
            <div class="col-3 offset-1 text-right">
                <asp:Label ID="lbl4" runat="server" Text="BirthDate : "></asp:Label> </div>
           <div class="col-5 text-left">
               <asp:TextBox ID="txtBdate" runat="server"  CssClass="form-control" placeholder="Enter DateofBirth" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtBdate" Display="Static" Text="*" CssClass=" text-danger" ErrorMessage="BirthDate is Required"/>
               <asp:CompareValidator ID="date" runat="server"
                                ControlToValidate="txtBdate" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="Invalid Date" 
                              Operator="DataTypeCheck" Type="Date"/>
          <asp:RangeValidator ID="rvr1" runat="server" ControlToValidate="txtBdate" 
                               ErrorMessage="Age should be b/w 01/01/1990 to 30/12/2020" 
                               Type="Date" MinimumValue="01/01/1990" MaximumValue="30/12/2020"/>
           </div>
        </div>
                                                <%--Email Id :--%>
                                     
             <div class="form-group form-row">
            <div class="col-3 offset-1 text-right">
                <asp:Label ID="lbl5" runat="server" Text="Email Id : "></asp:Label> </div>
           <div class="col-5 text-left">
               <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Email"  ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtEmail" Display="Static" Text="*" CssClass=" text-danger" ErrorMessage="Email Id is Required"/>
               <asp:RegularExpressionValidator ID="regEx1" runat="server"
                                ControlToValidate="txtEmail" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="Invalid email pattern" 
                              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
               </div>
        </div>
                                               <%--Mobile No :--%> 

             <div class="form-group form-row">
            <div class="col-3 offset-1 text-right">
                <asp:Label ID="lbl6" runat="server" Text="Mobile No : "></asp:Label> </div>
           <div class="col-5 text-left">
               <asp:TextBox ID="txtMobile" runat="server"  CssClass="form-control" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="txtMobile" Display="Static" Text="*" CssClass=" text-danger" ErrorMessage="Mobile No is Required"/>
               <asp:RegularExpressionValidator ID="regEx2" runat="server"
                                ControlToValidate="txtMobile" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="MobilePhone pattern cannot contain other than numbers" 
                              ValidationExpression="^([6-9]\d|\d{7,})$"/>
               </div>
        </div>

                                         <%-- Work- Phone :--%>
             <div class="form-group form-row">
            <div class="col-3 offset-1 text-right">
                <asp:Label ID="lbl7" runat="server" Text="Work-Phone : "></asp:Label> </div>
           <div class="col-5 text-left">
               <asp:TextBox ID="txtWorkPhone" runat="server" CssClass="form-control" ></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="txtWorkPhone" Display="Static" Text="*" CssClass=" text-danger" ErrorMessage="Work Phone No is Required"/>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="txtWorkPhone" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="Work Phone pattern cannot contain other than numbers" 
                              ValidationExpression="^([6-9]\d|\d{7,})$"/>
           </div>
        </div>
                                              <%--Home- Phone--%>
             <div class="form-group form-row">
            <div class="col-3 offset-1 text-right">
                <asp:Label ID="Label7" runat="server" Text="Home-Phone : "></asp:Label> </div>
           <div class="col-5 text-left">
               <asp:TextBox ID="txtHome" runat="server" CssClass="form-control"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="txtHome" Display="Static" Text="*" CssClass=" text-danger" ErrorMessage="Home Phone No is Required"/>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                ControlToValidate="txtHome" Display="Static" Text="*"
                                CssClass=" text-danger" ErrorMessage="Home Phone pattern cannot contain other than numbers" 
                              ValidationExpression="^([6-9]\d|\d{7,})$"/>
           </div>
        </div>
                                   <%--Buttons--%>
            <div class="form-row">
             <div class="col-4 offset-4 btn-group-lg text-center">
                 <asp:Button ID="btnSave" runat="server" Text="Save"  
                     CssClass="btn btn-primary mx-2 " OnClick="btnSave_Click"  />
                 <asp:Button ID="btnCancel" runat="server" Text="Cancel"  
                     CssClass="btn btn-secondary mx-2 " />
              </div>
        </div>
             

      </div>
</section>
</asp:Content>