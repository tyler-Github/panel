<%@ Page Title="Installer Config Management" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="admininstallerconfig.aspx.cs" Inherits="UGCC_Sharp.admininstallerconfig" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            Auto Installer Configs
        </div>
        <div class="panel-body">
            Here you can manage the templates used by the auto install system.  See the <a href="docs/installer.pdf" target="_blank">installer documentation</a> for more information.
        </div>
    </div>
    <div class="form-horizontal">
        <div id="lblError" runat="server"></div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Current configurations
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlConfigs" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlConfigs_SelectedIndexChanged" >
                </asp:DropDownList>
                <span class="help-block">Installer configurations defined in the panel.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Name
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    Configuration name.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Platform
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:DropDownList ID="ddlPlatform" cssclass="form-control" runat="server">
                        <asp:ListItem Value="lin">Linux</asp:ListItem>
                        <asp:ListItem Value="win">Windows</asp:ListItem>
                </asp:DropDownList>
                    Operating system platform for this configuration (i.e. Windows/Linux).</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Template
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtTemplate" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    Template used for creating a new server.&nbsp; Use variables!  Not translated when imported.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Game Type
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:DropDownList ID="ddlGT" CssClass="form-control" runat="server">
                    </asp:DropDownList>
                    Game type</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Configuration files
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtCfgs" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    Configuration files for new servers.  These should be 'templates' that contain variables the panel will replace values for and copy to new server location.  Use relative paths to game server root.  One file per line.  Variables are translated.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Pre-execute
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtPre" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    A list of commands (one per line, format should be cmd,argument (yes, the comma is required if there are arguments and use full paths)) to run before setting up server.  Variables are translated.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Post-execute
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtPost" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                    A list of commands (one per line, format should be cmd,argument(yes, the comma is required if there are arguments and use full paths)) to run after setup of server is complete.  Variables are translated.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Use SteamCMD
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:DropDownList ID="ddlSteamCMD" CssClass="form-control" runat="server">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                    Use SteamCMD to download/install files?</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Cache directory
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtCache" runat="server" CssClass="form-control"></asp:TextBox>
                    If 'Use SteamCMD' is set to no, where are the files located the installer should use for copying to new game server location.&nbsp; If &#39;Use SteamCMD&#39; is set to yes, the panel will cache files to a folder with the game type&#39;s Steam ID if left blank.&nbsp; Enter a folder name, no path seperators as it will be appended to the server definition's cache location (i.e. we use mc for our minecraft templates).</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Cache update command
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtUpdateCacheExe" runat="server" CssClass="form-control"></asp:TextBox>
                    If 'Use SteamCMD' is set to no, and you want to run something to update the local cache, enter the command here.&nbsp; This is entirely optional.&nbsp; Special variables %Cache% and %Install% are available.  %Cache% will resolve to the cache folder's path for this config, and %Install% will resolve to this config's Installer path.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Cache update command arguments
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtUpdateCacheExeArgs" runat="server" CssClass="form-control"></asp:TextBox>
                    If 'Use SteamCMD' is set to no, and you want to run something to update the local cache, enter the command line here.&nbsp; This is entirely optional.&nbsp; Special variables %Cache% and %Install% are available.  %Cache% will resolve to the cache folder's path for this config, and %Install% will resolve to this config's Installer path.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                SteamCMD branch
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtSteamExtras" runat="server" CssClass="form-control"></asp:TextBox>
                    If you need to specify additional options to the steamcmd app_update parameter, enter here.  For example if you need to +app_update ####### -beta, enter -beta here.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                SteamCMD user name
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtSteamun" runat="server" CssClass="form-control"></asp:TextBox>
                    If SteamCMD requires a steam account for this game server, enter the desired user name here.  If left blank anonymous will be used.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                SteamCMD password
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtSteampw" runat="server" CssClass="form-control"></asp:TextBox>
                    If SteamCMD requires a steam account for this server, enter the password here.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Notes
            </label>
            <div class="col-sm-10">
                    <asp:TextBox ID="txtNotes" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
        </div>
        </div>
    <asp:Button
        ID="BtnUpdate" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="BtnUpdate_Click" />
    <asp:Button
        ID="btnDel" runat="server" Text="Delete Selected" CssClass="btn btn-primary"
        OnClick="Button1_Click" />
    <asp:Button
        ID="btnExport" runat="server" Text="Export" CssClass="btn btn-primary" OnClick="btnExport_Click"
        />
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">
        Import</button>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
        New</button>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Add new Installer Config</h4>
                </div>
                <div class="modal-body">
                    To add a new installer config, enter the name of the new config and click the create button.<br />
                    <br />
                    <div class="input-group">
                        <asp:TextBox ID="txtNew" runat="server" CssClass="form-control" placeholder="Enter the name for the new gametype"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click"
                                Text="Create" />
                        </span>
                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Import installer config</h4>
                </div>
                <div class="modal-body">
                    Browse to installer config and click import.<br />
                    <br />
                    <div class="input-group">
                        <asp:FileUpload ID="fileImport" runat="server" CssClass="form-control" />
                        <span class="input-group-btn">
                            <asp:Button ID="btnImport" runat="server" CssClass="btn btn-primary" Text="Import" OnClick="btnImport_Click"
                                 />
                        </span>
                    </div>
                    <div class="checkbox-inline">
                    <asp:CheckBox runat="server" Text="Import game type if it already exists (It's best not to select this unless you know what you're doing; the panel is smart enough to figure it out on it's own)" ID="chkImportGT" CssClass="checkbox" />
                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</asp:Content>
