<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductMaster.aspx.cs" Inherits="AspNetApplication.ProductMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <h2 class="bg-primary text-light text-center p-2">Product List</h2>

        <div class="row">
            <div class="col">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <asp:Label id="lbl1" runat="server" CssClass="input-group-text"
                            Text="Search :" />
                        </div>
                    <asp:TextBox id="txtSearch" runat="server" cssClass="form-control" />
                    <div class="input-group-append">

                        <asp:LinkButton id="btnLink1" runat="server"
                            cssClass="btn btn-primary" Text="Find" 
                            OnClick="btnSubmit_Click">
                            <i class="fa fa-search"></i>
                            </asp:LinkButton>

                         <asp:LinkButton id="btnClear" runat="server"
                            cssClass="btn btn-danger" Text="Find" 
                            OnClick="btnClear_Click">
                              <i class="fa fa-close"></i>
                            </asp:LinkButton>
                    </div>
                </div>
           </div>
        </div>
        <div class="row">
            <div class="col-8 offset-2">
                <asp:GridView id="grid1" runat="server" cssClass="table table-striped border"
                    PageSize="5" AllowPaging="true" DataKeyNames="ProductId" GridLines="None"
                    ShowHeaderWhenEmpty="true"  AutoGenerateColumns="false"
                    OnPageIndexChanging="grid1_PageIndexChanging"
                    OnRowEditing="grid1_RowEditing">
                    <EmptyDataTemplate>
                        <div class="alert alert-warning">
                            your search did not yeild any result
                        </div>
                       
                    </EmptyDataTemplate>
                    <PagerStyle HorizontalAlign="Center" />
                    <PagerSettings Mode="Numeric" Position="TopAndBottom" PageButtonCount="5" />
                    <Columns>
                        <asp:ButtonField CommandName="Edit" ButtonType="Link"
                            
                            DataTextField="ProductName" HeaderText="Product Name" />
                        <asp:BoundField HeaderText="Unit Price" DataFormatString="{0:C2}"
                            DataField="UnitPrice"/>
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <div class="col-8 offset-2 text-center">
            <asp:Button ID="btnCreateNew" runat="server" Text="Add New Product"
                cssClass="btn btn-dark btn-lg p-2" OnClick="btnCreateNew_Click1" />
        </div>
    </section>
</asp:Content>
