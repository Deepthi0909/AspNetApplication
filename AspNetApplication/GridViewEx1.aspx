<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GridViewEx1.aspx.cs" Inherits="AspNetApplication.GridViewEx1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container">
        <h2 class="bg-success text-white text-center">Working with grid</h2>
        <div class="row">
            <div class="col">
                <asp:GridView ID="grid1" runat="server"
                    AllowPaging="True" 
                    AllowSorting="True" 
                    AutoGenerateColumns="False"   
                    DataKeyNames="CustomerID" 
                    DataSourceID="SqlDataSource1" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                        <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    </Columns>

                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @original_CustomerID AND [CompanyName] = @original_CompanyName AND (([ContactName] = @original_ContactName) OR ([ContactName] IS NULL AND @original_ContactName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL))" InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [City], [Country]) VALUES (@CustomerID, @CompanyName, @ContactName, @City, @Country)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [City], [Country] FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName, [ContactName] = @ContactName, [City] = @City, [Country] = @Country WHERE [CustomerID] = @original_CustomerID AND [CompanyName] = @original_CompanyName AND (([ContactName] = @original_ContactName) OR ([ContactName] IS NULL AND @original_ContactName IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CustomerID" Type="String" />
                        <asp:Parameter Name="original_CompanyName" Type="String" />
                        <asp:Parameter Name="original_ContactName" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Country" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="ContactName" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="ContactName" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Country" Type="String" />
                        <asp:Parameter Name="original_CustomerID" Type="String" />
                        <asp:Parameter Name="original_CompanyName" Type="String" />
                        <asp:Parameter Name="original_ContactName" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_Country" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
           
        </div>
    </section>
</asp:Content>
