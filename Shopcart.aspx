<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Shopcart.aspx.cs" Inherits="ids410ProjSu2020.Shopcart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        SelectCommand="SELECT * FROM [vShopcart] WHERE ([shopcartid] = @shopcartid)">
        <SelectParameters>
            <asp:SessionParameter Name="shopcartid" SessionField="shopcartID" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" 
        Caption="Your Shopcart" CellPadding="4" 
        DataSourceID="SqlDataSource1" 
    EmptyDataText="Your shopcart is empty..." AutoGenerateColumns="False" Width="868px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="quantity" HeaderText="quantity" 
                SortExpression="quantity" />
            <asp:BoundField DataField="SongID" HeaderText="SongID" 
                SortExpression="SongID" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="Artist" HeaderText="Artist" 
                SortExpression="Artist" />
            <asp:BoundField DataField="listprice" HeaderText="listprice" 
                SortExpression="listprice" />
            <asp:BoundField DataField="subtotal" HeaderText="subtotal" 
                SortExpression="subtotal" />
            <asp:HyperLinkField DataNavigateUrlFields="SongID" 
                DataNavigateUrlFormatString="~/shopcart.aspx?id={0}&amp;action='del'" 
                HeaderText="Remove" Text="Delete" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <p>
    Total Amount: 
    <asp:Label ID="lblAmount" runat="server" Text=""></asp:Label>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/selectCC.aspx" 
            onload="HyperLink1_Load">Checkout</asp:HyperLink>
    </p>
        <p>
        &nbsp;Online Music Store</p>
</asp:Content>