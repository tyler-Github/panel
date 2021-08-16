<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="contactinfo.aspx.cs" Inherits="UGCC_Sharp.contactinfo_new" Title="Support" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3><asp:Literal ID="Literal1" runat="server" 
        Text="This page lists the various ways you may obtain support." 
        meta:resourcekey="Literal1Resource1"></asp:Literal></h3>
    <asp:Panel ID="Panel1" runat="server" Visible="False" 
        meta:resourcekey="Panel1Resource1">
        <br />
    <div class="row">
    <div class="col-xs-12">
    <div class="panel panel-primary">
    <div class="panel-heading" id="header" runat="server"></div>
    <div class="panel-body" id="content" runat="server">
    
  </div>
</div>
    
    <div id="divTkt" runat="server"></div>
    </div>
    </div>
    </asp:Panel>

<div class="row">
<div class="col-xs-12 col-md-6">
<div class="panel panel-primary">
  <div class="panel-heading"><asp:Localize ID="Localize1" runat="server" meta:resourcekey="Localize1Resource1" Text="Support email"></asp:Localize></div>
  <div class="panel-body">
    <asp:HyperLink ID="HyperLink1" runat="server" 
        meta:resourcekey="HyperLink1Resource1"></asp:HyperLink>
            
  </div>
</div>
</div>
<div class="col-xs-12 col-md-6">
<div class="panel panel-primary">
  <div class="panel-heading"> <asp:Localize ID="Localize2" runat="server" 
        meta:resourcekey="Localize2Resource1" Text="Additional contact information"></asp:Localize></div>
  <div class="panel-body">
    <div id="addlinfo" runat="server"></div>
  </div>
</div>
</div>
</div>
<div>
<div class="row">
<div class="col-xs-12">
<div class="panel panel-primary">
  <div class="panel-heading"> <asp:Localize ID="Localize4" runat="server" 
        meta:resourcekey="Localize4Resource1" Text="Documentation"></asp:Localize></div>
  <div class="panel-body">
  <a href="Help.html">
    <asp:Localize ID="Localize3" runat="server" 
        meta:resourcekey="Localize5Resource1" Text="Panel Documentation"></asp:Localize>
        </a>
  </div>
</div>
</div>
</div>
</div>
    
</asp:Content>


