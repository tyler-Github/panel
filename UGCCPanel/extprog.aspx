<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="extprog.aspx.cs" Inherits="UGCC_Sharp.WebForm2" Title="Output" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
        Height="344px" TextMode="MultiLine"
        Width="100%"></asp:TextBox><br />
        <span id="spnStatus" runat="server"></span>
    <br />
    <p>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
            onclick="Button1_Click1" Text="Refresh" />
    &nbsp;<asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary" 
            onclick="btnBack_Click" Text="Back" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
