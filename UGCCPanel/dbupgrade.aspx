<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="dbupgrade.aspx.cs" Inherits="UGCC_Sharp.dbupgrade_new" Title="Database Updater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox id="TextBox1" runat="server"
				TextMode="MultiLine" Height="304px" CssClass="form-control" 
        ontextchanged="TextBox1_TextChanged"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" 
        CssClass="btn btn-primary" />
</asp:Content>
