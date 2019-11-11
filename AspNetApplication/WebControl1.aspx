<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebControl1.aspx.cs" Inherits="AspNetApplication.WebControl1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Literal ID="literal1" runat="server"></asp:Literal>
    <section class="card shadow mx-5">
        <div class="card-header card-title text-center">Application form</div>
        <div class="card-body">


            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="lbl1" runat="server" Text="Name" />
                </div>
                <div class="col-5">
                    <asp:TextBox id="txtName" runat="server" />
                </div>
            </div>




            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label2" runat="server" Text="Password" />
                </div>
                <div class="col-5">
                    <asp:TextBox id="TextPwd" runat="server" TextMode="Password" />
                   
                </div>
            </div>



            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label3" runat="server" Text="Address" />
                </div>
                <div class="col-5 text-left" >
                    <asp:TextBox id="TextBox2" runat="server" TextMode="MultiLine" CssClass="form-control">
                        </asp:TextBox>
                </div>
            </div>




            
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label4" runat="server" Text="Gender" />
                </div>
                <div class="col-5 text-left" >
                    <asp:RadioButton id="radMale" runat="server" GroupName="Gender" Text="Male"/>
                       <asp:RadioButton id="radFemale" runat="server" GroupName="Gender" Text="Female"/>
                </div>
            </div>




             <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label5" runat="server" Text="Location" />
                </div>
                <div class="col-5 text-left" >
                    <asp:DropDownList id="ddlLocation" runat="server" CssClass="form-control">
                       <asp:ListItem Text="--Select--" value="0" Selected="True"/>
                        <asp:ListItem Text="banglore" value="bengaluru" />
                        <asp:ListItem Text="Chennai" value="chennai" />
                        <asp:ListItem Text="amritsar" value="amritsar" />
                        </asp:DropDownList>
                </div>
            </div>


            <!-- intersests-->
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label id="Label6" runat="server" Text="Interests" />
                </div>
                <div class="col-5 text-left" >
                    <asp:CheckBoxList id="checkinterest" runat="server" RepeatColumns="2"
                        RepeatDirection="Horizontal" RepeatLayout="Table" 
                        CssClass="table table-sm table-striped">
                       </asp:CheckBoxList>
                </div>
            </div>





            <div class="form-row">
                <div class="col-4 offset-4 btn-group-lg text-center">
                    <asp:Button id="btnsave" runat="server" Text="Save"
                        CssClass="btn btn-primary mx-2" OnClick="btnSave_Click"  />
                   
                     <asp:Button id="btncancel" runat="server" Text="Cancel"
                        CssClass="btn btn-secondary mx-2" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
