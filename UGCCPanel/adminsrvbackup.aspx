<%@ Page Title="" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminsrvbackup.aspx.cs" Inherits="UGCC_Sharp.adminsrvbackup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            Server Backup & Template Export</div>
        <div class="panel-body">
            <div class="input-group">
                <asp:DropDownList ID="ddlServers" runat="server" CssClass="form-control">
                </asp:DropDownList>
                <span class="input-group-btn">
                    <asp:Button ID="txtBackup" runat="server" CssClass="btn btn-primary" OnClick="txtBackup_Click"
                        Text="Backup/Export" />
                        
                </span>
            </div>
            <!-- /input-group -->
            <span class="checkbox">
            <label>
            <asp:CheckBox ID="chkTemplate" runat="server" Text="Create template" 
                OnCheckedChanged="chkTemplate_CheckedChanged" />
            </label>
            </span>
            <div class="help-block">
                This allows you to backup a server to be restored later, or to create a template
                based off of an existing server.&nbsp; Templates are more generic as they do not
                contain all the settings of the server the template is based from.
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            Import template & Backup Restore</div>
        <div class="panel-body">
            <div class="input-group">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                <span class="input-group-btn">
                    <asp:Button ID="btnRestore" runat="server" CssClass="btn btn-primary" Text="Restore/Import"
                        OnClick="btnRestore_Click" />
                </span>
            </div>
            <!-- /input-group -->
            <div class="help-block">
            This allows you to restore a previously created backup or template.&nbsp; Browse
                to the backup or template and click the &#39;Restore/Import&#39; button.&nbsp; The
                panel will automatically detect whether the file is a template or backup and a new
                server will be created using the settings in the file.
            </div>
        </div>
    </div>
    <div class="alert alert-warning">
        Game templates are available on our site <a class="alert-link" href="http://www.brainless.us/forum/viewtopic.php?f=21&amp;t=1041"
            target="_blank">here</a>.&nbsp; They are a quick and easy way to get started.&nbsp;
        Feel free to submit new templates on our forums, or email them to us.
    </div>
<div id="lblError" runat="server">

</div>
    </asp:Content>
