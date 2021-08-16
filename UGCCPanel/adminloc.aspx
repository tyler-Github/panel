<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminloc.aspx.cs" Inherits="UGCC_Sharp.adminloc" Title="Untitled Page" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            About location groups</div>
        <div class="panel-body">
            Here you can manage the location groups defined in the panel.&nbsp; These locations are 'groups' of server definitions.&nbsp; When a new server is installed using the automated installer you have an option to place
            a server in a particular location group.&nbsp;Think of this as a grouping system.  You can create groups that define their physical location, or even a group of target servers for a specific game. 
            
        </div>
    </div>
<div class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">Current location groups
        </label>
        <div class="col-sm-10">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <span class="help-block">Locations currently defined.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
            Name
        </label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtName" runat="server"  CssClass="form-control"></asp:TextBox>
            <span class="help-block">You may modify the current location group's name if you desire.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
            Server definitions
        </label>
        <div class="col-sm-10">
            <asp:ListBox runat="server" ID="lstSdef" CssClass="form-control" SelectionMode="Multiple"></asp:ListBox>
            <span class="help-block">Current server definitions using this location.  Use ctrl+click to select multiple definitions.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
            Notes
        </label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtNote" runat="server" CssClass="form-control"></asp:TextBox>
            <span class="help-block">Notes about this location group.</span>
        </div>
    </div>
</div>

    
    <br />

    <asp:Button
        ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click"
         />
    <asp:Button
        ID="Button1" runat="server" Text="Delete Selected" CssClass="btn btn-warning"
        OnClick="Button1_Click" />
    <asp:Label ID="lblError" runat="server" CssClass=""></asp:Label>
    <br /><hr />
    To add a new location, enter the location and click the create button.<br />
    <br />
    <div class="input-group">
        <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control" placeholder="Enter the name for the new location"></asp:TextBox>
       <span class="input-group-btn">
           <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click"
               Text="Create" />
               </span>
    </div>
</asp:Content>
