<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="admincon.aspx.cs" Inherits="UGCC_Sharp.admincon" Title="Console Capture Tool" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="panel panel-default">
  <div class="panel-heading">About the capture console output tool</div>
  <div class="panel-body">
    This tool allows you to start a server and monitor the program's output.&nbsp; This
    should be used for troubleshooting purposes only.&nbsp; You should stop the server
    when finished and start the server the usual way.&nbsp; Not all programs work with
    this feature nor do all programs send output to the console.<br />
  </div>
</div>
    <div class="input-group">
       <asp:DropDownList ID="ddlServers" runat="server" CssClass="form-control">
    </asp:DropDownList>
      <span class="input-group-btn">
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
         Text="Start" onclick="Button1_Click" />
      </span>
    </div><!-- /input-group -->
    <br />

   <div ID="lblError" runat="server"></div>
</asp:Content>
