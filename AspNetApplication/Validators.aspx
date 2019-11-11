<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Validators.aspx.cs" Inherits="AspNetApplication.Validators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function myValidation(s, e) {
            if (e.Value.length > 4) {
                e.IsValid = true;
            } else {
                e.IsValid = false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <h2 class="bg-success text-white font-weight-bold text-center">working with validators</h2>
        <asp:ValidationSummary ID="sum1" runat="server" DisplayMode="List"
            ShowSummary="true" CssClass="alert alert-danger" HeaderText="Errors" />


        <div class="row">
            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Required field validator</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:TextBox id="TxtName" CssClass="form-control" runat="server"
                                placeholder="Enter Name"  />
                            <asp:RequiredFieldValidator ID="rfv1" runat="server" 
                                ControlToValidate="TxtName" Display="Static"  Text="*"
                                ErrorMessage="Name is required" CssClass=" text-danger" />
                            
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Compare validator</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:TextBox id="TextPwd" CssClass="form-control" runat="server"
                                placeholder="Enter Password" TextMode="Password" />

                             <asp:TextBox id="TxtConfirm" CssClass="form-control" runat="server"
                                placeholder="Confirm Password" TextMode="Password" />
                            <asp:CompareValidator ID="cv1" runat="server" 
                                ControlToValidate="TxtConfirm" Display="Static"  Text="*"
                                ErrorMessage="Passwords do not match" CssClass=" text-danger"
                                ControlToCompare="TextPwd" Operator="Equal" Type="String"/>
                            
                        </div>
                    </div>
                </div>
            </div>


           
            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Compare Validator2</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="txtDate" Cssclass="form-control" runat="server"
                                placeholder="Enter Birthdate"  />
                           
                            <asp:CompareValidator ID="cv2" runat="server"
                                ControlToValidate="txtDate" Display="Static"
                                Text="*" ErrorMessage="Invalid Date" CssClass="text-danger"
                                Operator="DataTypeCheck" Type="Date"/>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Range Validator</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="txtAge" Cssclass="form-control" runat="server"
                                placeholder="Enter Age"  />
                           
                            <asp:RangeValidator ID="rv1" runat="server"
                                ControlToValidate="txtAge" Display="Static"
                                Text="*" ErrorMessage="Age should br b/w 18 and 100"
                                CssClass="text-danger"
                                MinimumValue="18" MaximumValue="100" Type="Integer"/>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Regular Expression Validator</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="txtEmail" Cssclass="form-control" runat="server"
                                placeholder="Enter Email"  />
                           
                            <asp:RegularExpressionValidator ID="reg1" runat="server"
                                ControlToValidate="txtEmail" Display="Static"
                                Text="*" ErrorMessage="Invalid Email Format"
                                CssClass="text-danger" validationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                 Type="Integer"/>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-3 p-2">
                <div class="card h-100">
                    <div class="card-header card-title bg-warning">Custom Validator</div>
                    <div class="card-body">
                        <div class="form-group">
                            <asp:Textbox id="txtUserId" Cssclass="form-control" runat="server"
                                placeholder="Enter valid user id"  />
                           
                            <asp:CustomValidator ID="cv3" runat="server"
                                ControlToValidate="txtUserId" Display="Static"
                                Text="*" ErrorMessage="userid should be 5 or more letters and non-existant"
                                CssClass="text-danger" ClientValidationFunction="myValidation"
                                onServerValidate="cv3_ServerValidate"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 text-center">
                <button class="btn btn-outline-danger">Submit</button>
            </div>
        </div>
    </section>
</asp:Content>
