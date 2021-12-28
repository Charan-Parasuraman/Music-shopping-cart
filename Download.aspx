<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Download.aspx.cs" Inherits="ids410Clnu4Pro.Download" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Select OrderID, OrderLine.SongID,
  Title, Album, Artist, ListPrice, FileName From OrderLine inner join Song on
   OrderLine.SongID = Song.SongID
Where OrderID = @OrderID">
        <SelectParameters>
            <asp:SessionParameter Name="OrderID" SessionField="OrderID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="OrderID,SongID" DataSourceID="SqlDataSource1" GridLines="Vertical" OnUnload="GridView1_Unload3">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="SongID" HeaderText="SongID" ReadOnly="True" SortExpression="SongID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Album" HeaderText="Album" SortExpression="Album" />
            <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
            <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
            <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" />
            <asp:HyperLinkField DataNavigateUrlFields="FileName" DataNavigateUrlFormatString="~/songfolder/{0}" HeaderText="Download" Text="Download" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
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
