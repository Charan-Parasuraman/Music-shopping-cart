<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCC.aspx.cs" Inherits="ids410Clnu4Pro.AddCC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%; height: 389px;">
        <tr>
            <td>&nbsp;<asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="txtFName"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>&nbsp;<asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="txtLName"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>&nbsp;<asp:Label ID="Label3" runat="server" Text="Mid Name"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtMidName" runat="server" MaxLength = "1"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>


        <tr>
            <td>&nbsp;<asp:Label ID="Label4" runat="server" Text="Card Type"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtType" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Type is required" ControlToValidate="txtType"></asp:RequiredFieldValidator></td>
        </tr>


        <tr>
            <td>&nbsp;<asp:Label ID="Label5" runat="server" Text="Credit card No"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtCCNo" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Credit card is Required" ControlToValidate="txtCCNo"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>&nbsp;<asp:Label ID="Label6" runat="server" Text="Expiry Date (MM/DD/YYYY)"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtExpirationDate" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Expiry date is required" ControlToValidate="txtExpirationDate"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>&nbsp;<asp:Label ID="Label7" runat="server" Text="CVC"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtcvc" runat="server"></asp:TextBox></td>
            <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="CVC is required" ControlToValidate="txtcvc"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>&nbsp;<asp:Label ID="Label8" runat="server" Text="IS Default Card?"></asp:Label></td>
            <td>&nbsp;<asp:TextBox ID="txtIsDefault" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>




        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add Credit Card" OnClick="Button1_Click" /></td>
            <td></td>
        </tr>
    </table>


    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fill the Details to Add your Card</p>
    <p>
        &nbsp;</p>


</asp:Content>
