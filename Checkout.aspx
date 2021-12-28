<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Checkout.aspx.cs" Inherits="ids410ProjSu2020.Checkout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT OrderID, OrderLine.SongID, Quantity, Title, Album, Artist,
  FileName, ListPrice as Price, (ListPrice * Quantity) as SubTotal
FROM OrderLine JOIN Song ON OrderLine.SongID = Song.SongID 
WHERE (OrderID = @OrderID)">
        <SelectParameters>
            <asp:SessionParameter Name="OrderID" SessionField="orderID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="870px" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" 
                SortExpression="OrderID" />
            <asp:BoundField DataField="SongID" HeaderText="SongID" ReadOnly="True" 
                SortExpression="SongID" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Album" HeaderText="Album" SortExpression="Album" />
            <asp:BoundField DataField="Artist" HeaderText="Artist" 
                SortExpression="Artist" />
            <asp:BoundField DataField="FileName" HeaderText="FileName" 
                SortExpression="FileName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="SubTotal" HeaderText="SubTotal" 
                SortExpression="SubTotal" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>

<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Thank you for shopping at our E-store. - IDS 410 Online Music Store</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>