<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SelectCC.aspx.cs" Inherits="ids410Clnu4Pro.SelectCC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CC_No], [FirstName], [LastName], [Expiration], [CC_Type], [CVC], [UserID] FROM [CreditCard] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="Your Credit Cards" DataSourceID="SqlDataSource1" EmptyDataText="We do not have your Credit Card details" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="CC_No" Width="972px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="CC_No" HeaderText="CC_No" SortExpression="CC_No" ReadOnly="True" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Expiration" HeaderText="Expiration" SortExpression="Expiration" />
            <asp:BoundField DataField="CC_Type" HeaderText="CC_Type" SortExpression="CC_Type" />
            <asp:BoundField DataField="CVC" HeaderText="CVC" SortExpression="CVC" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <p>
        &nbsp;</p>
    <p>
        Select your Existing Card</p>
    <p>
        OR</p>
    <p>
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/addCC.aspx">Add Credit Card</asp:HyperLink>
    </p>

</asp:Content>
