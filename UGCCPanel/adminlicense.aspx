<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminlicense.aspx.cs" Inherits="UGCC_Sharp.adminlicense" Title="License Agreement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id=lictxt runat=server></div><br />
    <p align=center>
        <asp:Button ID="Button1" runat="server" Text="I Agree" 
            OnClick="Button1_Click" CssClass="btn btn-primary" />
    <asp:Button ID="Button2" runat="server" Text="I Disagree" OnClick="Button2_Click" 
            CssClass="btn btn-primary" /></p>
</asp:Content>
