<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ids410Clnu4Pro._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [SongID], [Title], [Album], [Artist], [Genre], [ReleaseDate], [ClipName], [ListPrice] FROM [Song]"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="Available Songs" CellPadding="4" DataKeyNames="SongID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="910px" Height="200px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="SongID" HeaderText="SongID" SortExpression="SongID" ReadOnly="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Album" HeaderText="Album" SortExpression="Album" />
            <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
            <asp:BoundField DataField="ClipName" HeaderText="ClipName" SortExpression="ClipName" />
            <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
            <asp:HyperLinkField DataNavigateUrlFields="ClipName" DataNavigateUrlFormatString="~/songfolder/{0}" HeaderText="Preview" Text="Preview" />
            <asp:HyperLinkField DataNavigateUrlFields="SongID" DataNavigateUrlFormatString="~/shopcart.aspx?id={0}&amp;action='add'" HeaderText="Buy" Text="Buy" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>


    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Welcome to IDS 410 Online Music Shopping Store!!</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>


</asp:Content>
