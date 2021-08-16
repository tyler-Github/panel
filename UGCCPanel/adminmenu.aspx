<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminmenu.aspx.cs" Inherits="UGCC_Sharp.adminmenu" Title="Adminstrator's Menu" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">UGCC Settings</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="admininfo.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">About UGCC</h4>
                                <p class="list-group-item-text">License and general information</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminconfig.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">General Configuration</h4>
                                <p class="list-group-item-text">General settings.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminhdrftr.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Panel Customization</h4>
                                <p class="list-group-item-text">Configure how the panel looks.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="admin-gametypes.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Game Types</h4>
                                <p class="list-group-item-text">
                                    Manage game types.
                                </p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminsrvdef.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Server Definitions</h4>
                                <p class="list-group-item-text">
                                    Manage server definitions.
                                </p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminloc.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Location groups</h4>
                                <p class="list-group-item-text">
                                    Manage the different location groups defined in the panel.
                                </p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Tools</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="adminlog.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Log Viewer</h4>
                                <p class="list-group-item-text">View all log entries from the local panel and monitors</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminsrvbackup.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Server Templates</h4>
                                <p class="list-group-item-text">Export a template of an existing server or import templates/backups.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="admincon.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Capture Program Output</h4>
                                <p class="list-group-item-text">For troubleshooting; allows you to see the output of a server's console</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminsql.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">SQL Tool</h4>
                                <p class="list-group-item-text">Allows you to make custom SQL queries against the database; for advanced users only.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminreport.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Reports</h4>
                                <p class="list-group-item-text">Various reports.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminsupport.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Generate support bundle</h4>
                                <p class="list-group-item-text">Collect various panel/system logs to help with troubleshooting issues.</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Server Settings</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="adminsrv.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Server Management</h4>
                                <p class="list-group-item-text">Manage servers.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminserverops.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Mass Server Management</h4>
                                <p class="list-group-item-text">
                                    Allows you to massively control servers.&nbsp; 
                                Start, stop, update, etc all servers or specific subsets of servers with a few 
                                clicks.
                                </p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminextras.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Server Extras (per server)</h4>
                                <p class="list-group-item-text">
                                    Configure &#39;extra&#39; server options for specific servers.&nbsp; 
                                These are tasks, similar to updates, that clients can run at will.
                                </p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminextrasgametype.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Server Extras (per game type)</h4>
                                <p class="list-group-item-text">
                                    Configure &#39;extra&#39; server options for servers of certain game types.&nbsp; 
                                These are tasks, similar to updates, that clients can run at will.  These will be available to all servers with a matching game type.
                                </p>
                            </a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Users and Groups</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="adminusr.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">User Management</h4>
                                <p class="list-group-item-text">Administer user accounts.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="admingrp.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Group Management</h4>
                                <p class="list-group-item-text">Create groups and manage group membership.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="admingrpperm.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Group Permissions</h4>
                                <p class="list-group-item-text">
                                    Manage group permissions for 
                                servers.
                                </p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-xs-12 col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Tickets and News</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="tickets.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Ticket Management <span class="badge" id="spntktcnt" runat="server"></span></h4>
                                <p class="list-group-item-text">Manage support tickets.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminnews.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">News Management</h4>
                                <p class="list-group-item-text">
                                    Manage news message items.&nbsp; You can 
                            also send mass emails to clients with this tool.
                                </p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Auto Installer</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a href="admininstaller.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">New Server</h4>
                                <p class="list-group-item-text">Add a new server utilizing the auto installer system.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="adminmove.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Move Server</h4>
                                <p class="list-group-item-text">Move an existing server to a different server definition.</p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="admininstallerlog.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Installer Log</h4>
                                <p class="list-group-item-text">
                                    View the installer.log file.
                                </p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="admininstallerconfig.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Auto installer configs</h4>
                                <p class="list-group-item-text">
                                    Configure auto installer configuration templates.
                                </p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="admininstallercheck.aspx" class="list-group-item">
                                <h4 class="list-group-item-heading">Installer Check</h4>
                                <p class="list-group-item-text">
                                    This tool checks various settings to ensure the auto installer is properly configured.
                                </p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="docs/installer.pdf" target="_blank" class="list-group-item">
                                <h4 class="list-group-item-heading">Auto Installer Doc</h4>
                                <p class="list-group-item-text">
                                    Documentation about the auto installer.
                                </p>
                            </a>
                        </div>
                        <div class="list-group">
                            <a href="http://redirect.brainless.us/UGCC/autoinstaller/templates" target="_blank" class="list-group-item">
                                <h4 class="list-group-item-heading">Auto Installer Templates</h4>
                                <p class="list-group-item-text">
                                    Auto installer template repository.  You may download these and import them via the auto installer config management page.
                                </p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">UGCC Documentation and Support</h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a class="list-group-item" href="http://www.brainless.us/forum/viewtopic.php?f=20&t=80">UGCC Documentation Page</a>
                            <a class="list-group-item" href="http://brainless.us/forum/viewtopic.php?f=21&t=1314">How to transfer a license to a different computer</a>
                            <a class="list-group-item" href="http://www.brainless.us/forum/viewforum.php?f=16">UGCC Product Support</a>
                            <a class="list-group-item" href="https://www.brainless.us/customers/">Brainless Tech Customer Portal (License management)</a>
                            <a class="list-group-item" href="http://www.brainless.us/forum/viewtopic.php?f=21&t=119">License Information</a>
                            <a class="list-group-item" href="https://www.brainless.us/products.aspx">Order Licenses</a>
                            <a class="list-group-item" href="https://www.brainless.us/contact.aspx">UGCC Support Contact Details</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-3">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Panel Options</h3>
                    </div>
                    <div class="panel-body">
                        <div class="checkbox">
                            <label>
                                <asp:CheckBox ID="chkMaint" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                Maintenance mode - only 'God' admin accounts can log in and prevents all other users from logging in.
                            </label>
                        </div>
                        <hr />
                        Open management page for server<br />
                        <asp:DropDownList ID="ddlServers" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlServers_SelectedIndexChanged"
                            CssClass="form-control" Enabled="False">
                        </asp:DropDownList>
                        
                        <hr />
                        <p>Filter server list menu page (only use one at a time)</p>
                       By server definition:<br />
                        <asp:DropDownList ID="ddlSdefs" runat="server" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlSdefs_SelectedIndexChanged" CssClass="form-control"
                            Enabled="False">
                        </asp:DropDownList>
                        <br />
                        By game type:<br />
                        <asp:DropDownList ID="ddlGS" runat="server" AutoPostBack="True"
                            CssClass="form-control" Enabled="False"
                            OnSelectedIndexChanged="ddlGS_SelectedIndexChanged">
                        </asp:DropDownList>
                        <br />
                        By user:<br />
                        <asp:DropDownList ID="ddlUsers" runat="server" AutoPostBack="True"
                            CssClass="form-control" Enabled="false"
                            OnSelectedIndexChanged="ddlUsers_SelectedIndexChanged">
                        </asp:DropDownList>
                        <br />
                        <asp:Button runat="server" ID="btnClearFilters" ToolTip="Clear filters." Text="Reset filters" CssClass="btn btn-default" OnClick="btnClearFilters_Click" />
                        <hr />
                        <div class="checkbox">
                            <label>
                                <asp:CheckBox ID="chkHidden" runat="server" AutoPostBack="True" OnCheckedChanged="chkHidden_CheckedChanged" />
                                Show hidden servers on main menu.
                            </label>
                        </div>
                        <hr />
                        <asp:Button runat="server" ID="btnTiny" ToolTip="Show less information on main menu for small screens or what not." Text="Toggle simple main menu" CssClass="btn btn-default" OnClick="btnTiny_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
</asp:Content>

