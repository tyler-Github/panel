<%@ Page Title="User Control Panel" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="usermenu.aspx.cs" Inherits="UGCC_Sharp.usermenu" meta:resourcekey="PageResource1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="panel panel-primary">
  <div class="panel-heading"><asp:Localize ID="Localize1" runat="server" Text="My Settings" meta:resourcekey="Localize1Resource1"></asp:Localize>
    </div>
  <div class="panel-body">
      <div class="list-group">
    <a href="chngpw.aspx" class="list-group-item">
        <asp:Literal ID="Literal1" runat="server" Text="Update my email, password, and other settings" meta:resourcekey="Literal1Resource1"></asp:Literal></a>
    <a href="subaccounts.aspx" class="list-group-item">
        <asp:Localize ID="Localize2" runat="server" Text="Create sub-accounts to allow other people to manage the servers you have access to." meta:resourcekey="Localize2Resource1"></asp:Localize></a>
  </div>
  </div>
</div>
</asp:Content>
