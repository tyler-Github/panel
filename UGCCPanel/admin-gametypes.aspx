<%@ Page Title="Game Type Management" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="admin-gametypes.aspx.cs" Inherits="UGCC_Sharp.admin_gametypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            About Gametypes
        </div>
        <div class="panel-body">
            Here you can manage the game types defined in the panel and define new game types.  More information on game type management can be found in the <a href="docs/installer.pdf" target="_blank">installer documentation</a>.</div>
    </div>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Defined game types
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlGT" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlGT_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <span class="help-block">Game types already configured in the panel.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Name
            </label>
            <div class="col-sm-10">

                <span class="help-block">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    Friendly game type name.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Game type
            </label>
            <div class="col-sm-10">

                <span class="help-block">
                    <asp:TextBox ID="txtType" runat="server" CssClass="form-control"></asp:TextBox>
                    Internal name used inside panel, <b>MUST</b> be unique and twelve characters or less.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Query type
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:DropDownList ID="ddlQry" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                    Query type used inside panel.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                RCON type
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:DropDownList ID="ddlRCON" runat="server" CssClass="form-control">
                    </asp:DropDownList>
                    RCON type used inside panel.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Default game port
            </label>
            <div class="col-sm-4">
                <span class="help-block">
                    <asp:TextBox ID="txtGamePort" runat="server" CssClass="form-control"></asp:TextBox>
                    Default port number used by game server.</span>
            </div>
            <div class="col-sm-4">
                <span class="help-block">
                    <asp:TextBox ID="txtGamePortType" runat="server" CssClass="form-control"></asp:TextBox>
                    Default port type used by game server (i.e. udp/tcp).</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Default query port
            </label>
            <div class="col-sm-4">
                <span class="help-block">
                    <asp:TextBox ID="txtQueryPort" runat="server" CssClass="form-control"></asp:TextBox>
                    Default port number used by game server.</span>
            </div>
            <div class="col-sm-4">
                <span class="help-block">
                    <asp:TextBox ID="txtQueryPortType" runat="server" CssClass="form-control"></asp:TextBox>
                    Default port type used by game server (udp/tcp).</span>
            </div>
            <div class="col-sm-2">
                <span class="help-block">
                    <asp:DropDownList ID="ddlStrictQry" CssClass="form-control" runat="server">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                    Strict query port</span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">
                Default query secondary port
            </label>
            <div class="col-sm-4">
                <span class="help-block">
                    <asp:TextBox ID="txtQueryPort2" runat="server" CssClass="form-control"></asp:TextBox>
                    Default port number used by game server</span>
            </div>
            <div class="col-sm-4">
                <span class="help-block">
                    <asp:TextBox ID="txtQueryPortType2" runat="server" CssClass="form-control"></asp:TextBox>
                    Default port type used by game server (udp/tcp).</span>
            </div>
            <div class="col-sm-2">
                <span class="help-block">
                    <asp:DropDownList ID="ddlStrictQry2" CssClass="form-control" runat="server">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                    Strict query2 port</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Default RCON port
            </label>
            <div class="col-sm-4">
                <span class="help-block">
                    <asp:TextBox ID="txtRconPort" runat="server" CssClass="form-control"></asp:TextBox>
                    Default port number used by game.</span>
            </div>
            <div class="col-sm-4">
                <span class="help-block">
                    <asp:TextBox ID="txtRconPortType" runat="server" CssClass="form-control"></asp:TextBox>
                    Default port type used by game server (udp/tcp).</span>
            </div>
            <div class="col-sm-2">
                <span class="help-block">
                    <asp:DropDownList ID="ddlStrictRcon" CssClass="form-control" runat="server">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                    Strict RCON port</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Other TCP ports
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtTCP" runat="server" CssClass="form-control"></asp:TextBox>
                    Comma separated list of other TCP ports used by the game server.&nbsp; The auto installer will use this information to help pick free ports for new servers.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Other UDP ports
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtUDP" runat="server" CssClass="form-control"></asp:TextBox>
                    Comma separated list of other UDP ports used by the game server.&nbsp; The auto installer will use this information to help pick free ports for new servers.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                NIC unbounded
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:DropDownList ID="ddlNic" CssClass="form-control" runat="server">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                    Does the server not allow you to bind ALL ports to a specific IP (i.e. does the server not have the option, via command line or cfg file, to specify a specific IP address to use)?  Select yes if not able to bind to a specific IP, otherwise select no.  If you're unsure, it's safe to set this to yes, though it may limit the usable IP address and port combinations the auto-installer can use.  Important for auto-installer IP and port selection.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                SteamCMD ID
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtSteam" runat="server" CssClass="form-control"></asp:TextBox>
                    ID used by SteamCMD for installing/updating this game type.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Steam APP ID
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtAppID" runat="server" CssClass="form-control"></asp:TextBox>
                    Game's Steam application ID, used for workshop updater mainly.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Workshop Support
            </label>
            <div class="col-sm-10">
                <div class="checkbox-inline">
                    <asp:CheckBox ID="chkWorkshop" runat="server" />&nbsp;
                </div>
                <span class="help-block">If checked the panel's mod updater/installer will be enabled for this game type.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Mod installation path
            </label>
            <div class="col-sm-10">
                <span class="help-block">
                    <asp:TextBox ID="txtModPath" runat="server" CssClass="form-control"></asp:TextBox>
                    The relative path from server root where mods need to be placed.&nbsp; The mod&#39;s id will be appended to this path, unless the %DirName% variable is found.&nbsp; In this case the path will be used as entered subsituting the variable with the mod&#39;s ID.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Graceful shutdown
            </label>
            <div class="col-sm-10">
                <div class="checkbox-inline">
                    <asp:CheckBox ID="chkRconGraceful" runat="server" />&nbsp;
                </div>
                <span class="help-block">If checked the panel will attempt to gracefully shutdown the server if it's not natively supported.&nbsp; If the panel does support it, it will be ignored.&nbsp; List of supported games can be found <a href="http://www.brainless.us/forum/viewtopic.php?f=21&t=637&p=2400#p2400">here</a>.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                RCON say
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtRconSay" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="help-block">Command to send text to all players in the server.&nbsp; If the panel doesn't support native graceful shutdowns, you can enter the command here. (i.e. /say).  Use %TEXT% if you need to quote text (i.e. /say "%TEXT%")</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                RCON save
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtRconSave" runat="server" CssClass="form-control" ></asp:TextBox>
                <span class="help-block">Command to save world state of the server.&nbsp; If the panel doesn't support native graceful shutdowns, you can enter the command here. (i.e. /save)  Can be left blank if not implemented by game type.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                RCON quit
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtRconQuit" runat="server" CssClass="form-control" ></asp:TextBox>
                <span class="help-block">Command to stop the server.&nbsp; If the panel doesn't support native graceful shutdowns, you can enter the command here. (i.e. /quit)</span>
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
    <div id="lblError" runat="server"></div>
    <br />
    <asp:Button
        ID="BtnUpdate" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="BtnUpdate_Click" />
    <asp:Button
        ID="btnDLUpdatePreview" runat="server" ToolTip="Preview changes to be made to game type configs" Text="Web Update (Preview)" CssClass="btn btn-primary" OnClick="btnDLUpdatePreview_Click"  />
    <asp:Button
        ID="btnDLUpdate" runat="server" ToolTip="Update game type configs from Brainless Tech, preview changes first to enable button" Text="Web Update" CssClass="btn btn-primary" OnClick="btnDLUpdate_Click" Enabled="false" />
    <asp:Button
        ID="btnDel" runat="server" Text="Delete Selected" CssClass="btn btn-primary"
        OnClick="Button1_Click" />
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
        New</button>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Add new game type</h4>
                </div>
                <div class="modal-body">
                   To add a new game type, enter the game type name and click the create button.<br />
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
    <div class="modal fade" id="previewModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Preview online update Game Type changes</h4>
                </div>
                <div class="modal-body">
                    <span id="spnPreview" runat="server"></span>
                </div>

            </div>
                    
                        
                    </div>
                </div>

            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</asp:Content>
