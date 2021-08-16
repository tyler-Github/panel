<%@ Page Title="Variable Editor" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="Variables.aspx.cs" Inherits="UGCC_Sharp.Variables" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-body">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </div>

        </div>
    <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary"
        OnClick="btnUpdate_Click" Text="Update" />
    <asp:Button ID="btnReturn" runat="server" CssClass="btn btn-default"
        OnClick="btnReturn_Click" Text="Return" Visible="True" />
    
</asp:Content>
