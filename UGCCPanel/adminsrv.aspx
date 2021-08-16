<%@ Page Title="Server Management" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminsrv.aspx.cs" Inherits="UGCC_Sharp.adminsrv_new" ValidateRequest="false" %>

<%@ Register Assembly="UGCC" Namespace="UGCC_Sharp" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </div>
    <div class="container-fluid">
        <div class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Select Server
                </label>
                <div class="col-sm-9">
                    <div class="input-group">
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" AutoPostBack="True"
                            OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                        </asp:DropDownList>

                        <span class="input-group-btn">
                            <!-- Single button -->
                            <div class="btn-group">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Actions <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li>
                                        <asp:LinkButton ID="LinkButton12" runat="server" OnClick="btnUpdate_Click">Update server</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton17" runat="server" OnClick="btnReinstall_Click">Re-install server</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton13" runat="server" OnClick="btnDel_Click">Delete server</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton16" runat="server" OnClick="btnDelFiles_Click">Delete server & files</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton14" runat="server" OnClick="btnSaveNew_Click">Save as new</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton ID="LinkButton15" runat="server" OnClick="LinkButton15_Click">Switch View</asp:LinkButton></li>

                                </ul>
                            </div>
                        </span>
                    </div>
                    <!-- /input-group -->
                </div>
            </div>
        </div>
        <div class="row">
            <ul class="nav nav-tabs nav-justified">
                <li id="liGeneral" runat="server" class="active">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Button1_Click">General</asp:LinkButton></li>
                <li id="liExec" runat="server">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Button2_Click">Executable</asp:LinkButton></li>
                <li id="liShutdown" runat="server">
                    <asp:LinkButton ID="lnkShutdown" runat="server" OnClick="lnkShutdown_Click">Shutdown</asp:LinkButton></li>
                <li id="liOptions" runat="server">
                    <asp:LinkButton ID="LinkButton10" runat="server" OnClick="Button10_Click">Options</asp:LinkButton></li>
                <li id="liQuery" runat="server">
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="Button3_Click">Query</asp:LinkButton></li>
                <li id="liRcon" runat="server">
                    <asp:LinkButton ID="LinkButtonRcon" runat="server" OnClick="LinkButtonRcon_Click">RCON</asp:LinkButton></li>
                <li id="liMon" runat="server">
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="Button4_Click">Monitoring</asp:LinkButton></li>
                <li id="liMonRes" runat="server">
                    <asp:LinkButton ID="LinkButton11" runat="server" OnClick="Button11_Click">Resource Mon.</asp:LinkButton></li>
                <li id="liRestart" runat="server">
                    <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Restart Tool</asp:LinkButton></li>
                <li id="liUpd" runat="server">
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="Button5_Click">Updates</asp:LinkButton></li>
                <li id="liFile" runat="server">
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="Button6_Click">File Tool</asp:LinkButton></li>
                <li id="liVar" runat="server">
                    <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Variables</asp:LinkButton></li>
                <li id="liPay" runat="server">
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="Button7_Click">Payment</asp:LinkButton></li>
            </ul>
        </div>
        <cc1:MyMultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Friendly name +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Enter a name for the server, the server will be referenced
                                by this name throughout the panel and will be presented to the user with this name.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Disabled
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkDisabled" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">Setting this will prevent the user and any groups from starting
                                the server.&nbsp; Useful if user hasn't paid and still needs access to other servers
                                or account info for making payment.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Hidden
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkHidden" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">Setting this will prevent the server from being listed on the main menu.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Owner
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <span class="help-block">Select the user who will control/own this server.&nbsp; <em>Sub-user accounts are not listed in this drop down</em>.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Server game type
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <span class="help-block">Specifies game type of server, if none fully match choose 'General' or <a href="admin-gametypes.aspx">create one in game type management page</a>.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Server definition
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlServDef" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <span class="help-block">Specify the server definition to use with this server.&nbsp;
                                This setting tells the panel which computer this game server is on.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Installer config ID
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtInstallerID" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">The ID of the auto installer configuration used to deploy/reinstall this server.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Groups
                        </label>
                        <div class="col-sm-10">
                            <asp:ListBox ID="ListBox1" runat="server" Height="104px" EnableViewState="False"
                                Enabled="False" CssClass="form-control"></asp:ListBox>
                            <span class="help-block">Groups that have been given some form of permission to this
                                server.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Extras *
                        </label>
                        <div class="col-sm-10">
                            <asp:HyperLink ID="lnkExtras" runat="server" Visible="False">Server Extras</asp:HyperLink>
                            <span class="help-block">Extras allow your users to be able to run other applications.&nbsp;
                                Useful for things like mod installers, git, SVN, Punkbuster updates, fastdownload tools, etc.&nbsp; These are
                                managed from another page, so save your settings here first before clicking the link.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Notes +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="textNotes" runat="server" Width="100%" TextMode="MultiLine" Height="185px"
                                CssClass="mce"></asp:TextBox>
                            <span class="help-block">Notes visible to the user. Payment instructions, web administration URLs,
                                passwords, FTP info, etc should be entered here.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Admin notes
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtAdminnotes" runat="server" Width="100%" TextMode="MultiLine" Height="185px">
                            </asp:TextBox>
                            <span class="help-block">Notes visible to admins only. Late payments, don't stop server, etc.  A new icon will appear next to the server title and the hover over text contains this message.</span>
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <br />
                <div class="alert alert-warning">
                    For game specific setup and guidance please visit our <a class="alert-link" href="http://www.brainless.us/forum/viewtopic.php?p=373#p373"
                        target="_blank">game and application notes</a> section of our forums.
                </div>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Server root
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtRoot" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Specifies the path where the game server is installed.&nbsp; Can be left blank unless used as a variable elsewhere.
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Working directory +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Specifies the path where the panel will run the executable
                                from.&nbsp; For most servers this can be left blank and the working directory will
                                be set to the path used in &#39;Server Executable&#39; setting below.
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Server executable +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Specify the executable to run.&nbsp; Include the <b>full path</b>
                                and executable extension.&nbsp; Do not use batch files or shell (.sh) scripts with the panel.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Command line arguments +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtCmdArgs" runat="server" CssClass="form-control" TextMode="MultiLine"
                                Height="63px"></asp:TextBox>
                            <span class="help-block">These command line options can be edited by the user if allowed.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Hidden command line arguments +
                        </label>
                        <div class="col-sm-10">

                            <asp:TextBox ID="txtHidden" runat="server" CssClass="form-control" TextMode="MultiLine"
                                Height="63px"></asp:TextBox>
                            <span class="help-block">These command line options aren't editable by the user. Useful
                                for locking down max player #, IPs, etc.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Allow users to edit command line
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0">No</asp:ListItem>
                                <asp:ListItem Value="1">Yes</asp:ListItem>
                            </asp:DropDownList>
                            <span class="help-block">Allow user to modify non-hidden command line arguments.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            File hash
                        </label>
                        <div class="col-sm-10">
                            <div class="input-group">
                                <asp:TextBox ID="txtHash" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                <span class="input-group-btn">
                                    <asp:Button ID="btnGenHash" runat="server" CssClass="btn btn-default" OnClick="btnGenHash_Click"
                                        Text="Generate Hash" />
                                    <asp:Button ID="btnClrHash" runat="server" CssClass="btn btn-default" OnClick="btnClrHash_Click"
                                        Text="Clear Hash" />
                                </span>
                            </div>
                            <span class="help-block">UGCC will not start the program if the hash differs.&nbsp; 
                                This prevents users from overwriting the executable (i.e. with a malicious program) and
                                starting it.&nbsp; Note:&nbsp; Don't click these buttons until you've saved your changes.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Secondary file hash +*
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtHashFile2" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If you need to verify a file other than the server executable
                                specify the full path and filename with extension here.&nbsp; For example, a java
                                archive/applet, a config file (to prevent changes to a config), etc.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Secondary file hash management
                        </label>
                        <div class="col-sm-10">
                            <div class="input-group">
                                <asp:TextBox ID="txtHash2" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                                <span class="input-group-btn">
                                    <asp:Button ID="btnGenHash2" runat="server" Text="Generate Hash" CssClass="btn btn-default"
                                        OnClick="btnGenHash2_Click" />
                                    <asp:Button ID="btnClrHash2" runat="server" Text="Clear Hash" CssClass="btn btn-default" OnClick="btnClrHash2_Click" /></span>
                            </div>
                            <span class="help-block">Don&#39;t click either of these button until you&#39;ve completed
                                setting the options and clicked update or save.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            PID file +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtPID" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If this executable can output it&#39;s process ID to a file,
                                enter the path to the file and the panel will use the ID in the file for monitoring
                                the server.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Send sigint
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkSigInt" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">Send sigint instead of killing process.  EXPERIMENTAL on windows, should work as expected on Linux.  Please <a href="https://www.brainless.us/forum/viewtopic.php?f=21&t=2157">see this topic</a> for setup/guidance (especially for Windows).</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Kill PID parent
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkKillParentPid" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">If checked the process that launches the server will be killed once the pid file is processed and verified running. &nbsp;Uncheck if using scrappier or if required by your server.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Process priority *
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                                <asp:ListItem Value="5">Realtime</asp:ListItem>
                                <asp:ListItem Value="2">High</asp:ListItem>
                                <asp:ListItem Value="0">Above Normal</asp:ListItem>
                                <asp:ListItem Selected="True" Value="4">Normal</asp:ListItem>
                                <asp:ListItem Value="1">Below Normal</asp:ListItem>
                                <asp:ListItem Value="3">Low</asp:ListItem>
                            </asp:DropDownList>
                            <span class="help-block">Sets the priority of the process when started.&nbsp; Typical setting is &#39;Normal&#39;.&nbsp; This will be applied to children if kill children is enabled. </span>
                            &nbsp;
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            CPU affinity *
                        </label>

                        <div class="col-sm-10">
                            <div class="form-inline">
                                <div class="checkbox">
                                    <asp:CheckBox ID="chkCPU0" runat="server" Text="&nbsp;0" />
                                    <asp:CheckBox ID="chkCPU1" runat="server" Text="&nbsp;1" />
                                    <asp:CheckBox ID="chkCPU2" runat="server" Text=" 2" />
                                    <asp:CheckBox ID="chkCPU3" runat="server" Text=" 3" />
                                    <asp:CheckBox ID="chkCPU4" runat="server" Text=" 4" />
                                    <asp:CheckBox ID="chkCPU5" runat="server" Text=" 5" />
                                    <asp:CheckBox ID="chkCPU6" runat="server" Text=" 6" />
                                    <asp:CheckBox ID="chkCPU7" runat="server" Text=" 7" />
                                    <asp:CheckBox ID="chkCPU8" runat="server" Text=" 8" />
                                    <asp:CheckBox ID="chkCPU9" runat="server" Text=" 9" />
                                    <asp:CheckBox ID="chkCPU10" runat="server" Text="10" />
                                    <asp:CheckBox ID="chkCPU11" runat="server" Text="11" />
                                    <asp:CheckBox ID="chkCPU12" runat="server" Text="12" />
                                    <asp:CheckBox ID="chkCPU13" runat="server" Text="13" />
                                    <asp:CheckBox ID="chkCPU14" runat="server" Text="14" />
                                    <asp:CheckBox ID="chkCPU15" runat="server" Text="15" />
                                    <br />
                                    <asp:CheckBox ID="chkCPU16" runat="server" Text="16" />
                                    <asp:CheckBox ID="chkCPU17" runat="server" Text="17" />
                                    <asp:CheckBox ID="chkCPU18" runat="server" Text="18" />
                                    <asp:CheckBox ID="chkCPU19" runat="server" Text="19" />
                                    <asp:CheckBox ID="chkCPU20" runat="server" Text="20" />
                                    <asp:CheckBox ID="chkCPU21" runat="server" Text="21" />
                                    <asp:CheckBox ID="chkCPU22" runat="server" Text="22" />
                                    <asp:CheckBox ID="chkCPU23" runat="server" Text="23" />
                                    <asp:CheckBox ID="chkCPU24" runat="server" Text="24" />
                                    <asp:CheckBox ID="chkCPU25" runat="server" Text="25" />
                                    <asp:CheckBox ID="chkCPU26" runat="server" Text="26" />
                                    <asp:CheckBox ID="chkCPU27" runat="server" Text="27" />
                                    <asp:CheckBox ID="chkCPU28" runat="server" Text="28" />
                                    <asp:CheckBox ID="chkCPU29" runat="server" Text="29" />
                                    <asp:CheckBox ID="chkCPU30" runat="server" Text="30" />
                                    <asp:CheckBox ID="chkCPU31" runat="server" Text="31" />
                                    <br />
                                    <asp:CheckBox ID="chkCPU32" runat="server" Text="32" />
                                    <asp:CheckBox ID="chkCPU33" runat="server" Text="33" />
                                    <asp:CheckBox ID="chkCPU34" runat="server" Text="34" />
                                    <asp:CheckBox ID="chkCPU35" runat="server" Text="35" />
                                    <asp:CheckBox ID="chkCPU36" runat="server" Text="36" />
                                    <asp:CheckBox ID="chkCPU37" runat="server" Text="37" />
                                    <asp:CheckBox ID="chkCPU38" runat="server" Text="38" />
                                    <asp:CheckBox ID="chkCPU39" runat="server" Text="39" />
                                    <asp:CheckBox ID="chkCPU40" runat="server" Text="40" />
                                    <asp:CheckBox ID="chkCPU41" runat="server" Text="41" />
                                    <asp:CheckBox ID="chkCPU42" runat="server" Text="42" />
                                    <asp:CheckBox ID="chkCPU43" runat="server" Text="43" />
                                    <asp:CheckBox ID="chkCPU44" runat="server" Text="44" />
                                    <asp:CheckBox ID="chkCPU45" runat="server" Text="45" />
                                    <asp:CheckBox ID="chkCPU46" runat="server" Text="46" />
                                    <asp:CheckBox ID="chkCPU47" runat="server" Text="47" />
                                    <br />
                                    <asp:CheckBox ID="chkCPU48" runat="server" Text="48" />
                                    <asp:CheckBox ID="chkCPU49" runat="server" Text="49" />
                                    <asp:CheckBox ID="chkCPU50" runat="server" Text="50" />
                                    <asp:CheckBox ID="chkCPU51" runat="server" Text="51" />
                                    <asp:CheckBox ID="chkCPU52" runat="server" Text="52" />
                                    <asp:CheckBox ID="chkCPU53" runat="server" Text="53" />
                                    <asp:CheckBox ID="chkCPU54" runat="server" Text="54" />
                                    <asp:CheckBox ID="chkCPU55" runat="server" Text="55" />
                                    <asp:CheckBox ID="chkCPU56" runat="server" Text="56" />
                                    <asp:CheckBox ID="chkCPU57" runat="server" Text="57" />
                                    <asp:CheckBox ID="chkCPU58" runat="server" Text="58" />
                                    <asp:CheckBox ID="chkCPU59" runat="server" Text="59" />
                                    <asp:CheckBox ID="chkCPU60" runat="server" Text="60" />
                                    <asp:CheckBox ID="chkCPU61" runat="server" Text="61" />
                                    <asp:CheckBox ID="chkCPU62" runat="server" Text="62" />

                                </div>
                            </div>
                            <span class="help-block">Set which CPUs to run this process on.&nbsp; Leave all boxes unchecked (recommended) to allow the operating system to manage affinity.&nbsp; This will be applied to children if kill children is enabled.</span>
                        </div>
                    </div>
                </div>

            </asp:View>
            <asp:View ID="View3" runat="server">
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            IP address
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtQryIP" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Game Server IP address to use for querying the game server.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Display address
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtDispAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If you want to display a different IP address or FQDN for the
                                game server to the user in the panel, enter what you want displayed here.&nbsp;
                                If left blank the &#39;IP Address&#39; will be displayed to users.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Game server port
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtGamePort" runat="server" CssClass="form-control">0</asp:TextBox>
                            <span class="help-block">The port the game server is bound to.&nbsp; This will be shown
                                to users in the main menu as well as the management page for the game server.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Query port
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtQryPort" runat="server" CssClass="form-control">0</asp:TextBox>
                            <span class="help-block">Server's query port the panel should use.&nbsp; Set to zero to
                                use the default port from game type setting, although it is recommended to always enter the actual port.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Secondary query port
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtQryPort2" runat="server" CssClass="form-control">0</asp:TextBox>
                            <span class="help-block">Currently, only used for select games and for querying Teamspeak servers.&nbsp;
                                Enter the TCPQuery port in the above setting, and enter the UDP port of the instance
                                you want to query here.&nbsp; 8767 is the default for TS2 and 9987 for TS3&nbsp;
                                You can leave it at 0 and the panel with use the default game type value.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Internal address (not normally needed)
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtPrvqryip" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If this server is managed by a remote monitor and the computer
                                is behind a NAT router or other setup where the above query address is not the actual
                                address of the computer the monitor is running on; enter the IP address to use for
                                queries by the monitor.&nbsp; If you have the above type of setup and do not enter
                                this address, the query monitoring will not work.&nbsp; <i>Most users will not have
                                    to worry about this and can leave it blank</i>.</span>
                        </div>
                    </div>
                </div>

            </asp:View>
            <asp:View ID="View4" runat="server">
                <div class="form-horizontal">
                    <div class="alert alert-info" id="licAlert3" runat="server">The features on this page will only work if your panel is licensed.&nbsp; <a class="alert-link" href="admininfo.aspx">Verify license status.</a></div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Enable process monitoring *
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="CheckBox1" runat="server"></asp:CheckBox>&nbsp;
                            </div>
                            <span class="help-block">The panel will monitor this server's process and restart it should it crash and also start it automatically at system boot if it was running previously.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Enable query monitoring *
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkAdvMon" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">The monitor will perform queries against the server to determine
                                if the server is alive.&nbsp; Game type and query port/address need to be set correctly
                                for this feature to work correctly.&nbsp; Ensure that the game server is working
                                correctly and you are able to query the server from the panel before enabling this
                                feature.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Server startup time
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtTimeToStart" runat="server" CssClass="form-control">0</asp:TextBox>
                            <span class="help-block">In minutes, the amount of time it takes for this server to
                                start.&nbsp; This is the amount of time the panel will wait before querying this
                                server using server queries for the above setting.&nbsp; Specify a value greater than 1.&nbsp; If
                                your server takes an excessive amount of time to start and the panel restarts the
                                server before it fully comes up; you&#39;ll need to set this value to prevent the panel from restarting it due to query monitoring.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Alert users on crash *
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkAlert" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">The monitor will send an email to user when their server is restarted.&nbsp;
                                An email will also be sent to the bcc email address configured if enabled.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Prevent crash loops *
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkDisableRestartLoops" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">The monitor will attempt to detect a server that is continuously crashing (via process and/or query monitoring) and will not further attempt to restart it until it is manually restarted.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Enable maximum player monitoring *
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtMaxPlayersAllowed" runat="server" CssClass="form-control">0</asp:TextBox>
                            <span class="help-block">Setting this to a value greater than 0 will cause the panel
                                to query the game server&#39;s max players.&nbsp; If the server&#39;s max players
                                value goes over this value, it&#39;ll stop the server and send a notice.&nbsp; &#39;Process monitoring&#39; and &#39;Query monitoring&#39; have to be enabled for
                                this feature to work.</span>
                        </div>
                    </div>
                </div>

            </asp:View>
            <asp:View ID="View5" runat="server">
                <div class="alert alert-info" id="licAlert2" runat="server">
                    The features on this page will only work if your panel is licensed.&nbsp; <a class="alert-link" href="admininfo.aspx">Verify license status.</a>
                </div>
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Allow users to update
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="Dropdownlist5" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0">No</asp:ListItem>
                                <asp:ListItem Value="1">Yes</asp:ListItem>
                            </asp:DropDownList>
                            <span class="help-block">Allow users to update server via the update tool.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Update executable +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Enter the full path and executable name here (including file
                                    extension), even if the user isn't granted permissions to the update tool all admin's can use the update tool.&nbsp; The panel can also automatically update steamcmd servers.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Update command line +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            <span class="help-block">Command line arguments for the update executable.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Run extra after update
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlExtras" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <span class="help-block">After the update is completed, run the selected extra after the update completes. &nbsp;Please note the dropdown contents update only after saving changes.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Auto update (steam.inf folder) +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtSteamInf" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">The panel looks in this folder for the steam.inf file and uses
                                    it to check for updates for the server.&nbsp; If server is out of date the panel
                                    will automatically stop, update, and restart the server.&nbsp; Leave blank to disable this
                                    feature.&nbsp; Steam.inf can usually be found in the root of the mod folder.&nbsp; You may use the 'Server shutdown minimum players count' setting on the shutdown tab to prevent the server from updating if players are on the server.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Auto update (alternate method)
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkAltUpdate" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">Works with any steamcmd based server, and doesn't require a steam.inf.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Always auto update
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkAlwaysAutoUpdate" runat="server" />&nbsp;
                            </div>


                            <span class="help-block">The panel will ignore 'Server shutdown minimum players count' setting on the shutdown tab when performing auto-updates.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Run update after server crash/halt
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkUpdOnRestart" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">The monitor will run the update command on this server before restarting it if it stops or crashes.&nbsp;  This is useful with servers that have the capability to stop
                                when they need to be updated.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Update hashes with update
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkUpdateHash" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">This will cause the panel to update the hashes configured on the executable tab when the server is manually or automatically updated.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Update mods
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkModUpdate" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">The panel will update the defined mods after performing a manual or automatic update.</span>
                        </div>
                    </div>
                </div>

            </asp:View>
            <asp:View ID="View6" runat="server">
                <div class="alert alert-warning">
                    For specific setup and guidance please visit
                    our <a class="alert-link" href="http://www.brainless.us/forum/viewtopic.php?p=1662#p1662"
                        target="_blank">File tools notes</a> section of our forums.
                </div>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Enable file access
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="chkFileTool" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0">No</asp:ListItem>
                                <asp:ListItem Value="1">Yes</asp:ListItem>
                            </asp:DropDownList>
                            <span class="help-block">Allow the user to access this game server&#39;s files via the
                                    integrated FTP server and the panel&#39;s file tool.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                           File allow list
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtWhiteList" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">You may over-ride the global file block list for this server here.  Enter a comma separated list of files or extensions.  Entering '*' will allow all files.  Applies to non-admins.</span>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">File tool settings for local servers (i.e. servers on the same host as the panel.</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Root path +
                                </label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txtFPath" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="help-block">The root path used for the file tool and integrated FTP server
                                            (for local monitor).</span>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">File settings for remote servers (i.e. remote monitors and/or third party FTP servers).&nbsp; For remote monitors, simply supply information for the last three items.</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    FTP server
                                </label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txtFTPServer" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="help-block">IP Address or FQDN of ftp server.&nbsp; Leave blank and the integrated
                                            FTP server info will be used automatically.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    FTP port
                                </label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txtFTPPort" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="help-block">FTP server port to connect to, default port is 21.&nbsp;&nbsp; Leave blank and the integrated FTP server info will be used automatically.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    FTP username
                                </label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txtFTPUser" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="help-block">Username to use to connect to FTP server.&nbsp;&nbsp; Leave blank and the integrated FTP server info will be used automatically.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    FTP password
                                </label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txtFTPPassword" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="help-block">Password to use to connect to FTP server.&nbsp;&nbsp; Leave blank and the integrated FTP server info will be used automatically.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Use passive mode
                                </label>
                                <div class="col-sm-10">
                                    <div class="checkbox-inline">
                                        <asp:CheckBox ID="chkPassv" runat="server" />&nbsp;
                                    </div>
                                    <span class="help-block">Enables passive transfer mode.&nbsp; It&#39;s recommended to always enable this option.&nbsp; You may disable it if you experiences issues.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    FTP root path
                                </label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txtFTPPath" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="help-block">The path from FTP root to give access to the user via the file tool.&nbsp; All folders and files below this path will be accessible via the file tool.&nbsp; If you wanted to limit access to a specific subfolder, you could enter that information here.&nbsp; This path is relative to ftp root.&nbsp; If you don&#39;t want to limit access to a subfolder enter &#39;/&#39;.&nbsp; If you want users to only be able to view the folder maps, enter &#39;/maps&#39;.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Path on remote server +
                                </label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txtRemoteAbsPath" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="help-block">Enter the actual path on the server.&nbsp; This setting is the path the integrated FTP server will use (for remote monitors) and it&#39;s also used by the decompress option of the file tool.&nbsp; You can use a variable here such as %Root% or %ServerWD% if one is assigned.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </asp:View>
            <asp:View ID="View7" runat="server">
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Payment due date
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtDueDate" runat="server" CssClass="form-control">0</asp:TextBox>
                            <span class="help-block">Enter the day of the month payment is due.&nbsp; A reminder
                                will be sent a week before and a day before payment is due.&nbsp; Set to 0 to disable
                                feature.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Payment amount
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Payment amount used in email reminders.&nbsp; A number will
                                have local currency symbol, to use a different symbol enter the symbol as part of
                                the setting (ie. $25).</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Automatic disable date *
                        </label>
                        <div class="col-sm-10">
                            <div class="input-group">
                                <asp:TextBox ID="txtDsblDate" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                <span class="input-group-btn">
                                    <asp:Button ID="btnResetDisableDate" runat="server" CssClass="btn btn-default" OnClick="btnResetDisableDate_Click"
                                        Text="Disable" />
                                </span>
                            </div>

                            <span class="help-block">Setting a date here will cause the panel to automatically stop the game server and disable the server when this date is reached.&nbsp; A date of 1/1/1970 indicates the feature is disabled.&nbsp; Use the calendar below to set the date or click the disable button to disable this feature if a date is set.  If using automated purging of disabled servers, this server will be removed automatically X days after this date.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Set automatic disable date *
                        </label>
                        <div class="col-sm-10">
                            <asp:Calendar ID="Calendar1" runat="server" DayNameFormat="FirstTwoLetters" OnSelectionChanged="Calendar1_SelectionChanged" CssClass="table"></asp:Calendar>
                            <div class="help-block">Allows you to set the the date for the above option.</div>
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View8" runat="server">
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Public variables
                        </label>
                        <div class="col-sm-10">
                            <div class="form-inline">
                                <div class="checkbox">
                                    <asp:CheckBox ID="chkVar1" runat="server" Text="Var1" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar2" runat="server" Text="Var2" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar3" runat="server" Text="Var3" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar4" runat="server" Text="Var4" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar5" runat="server" Text="Var5" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar6" runat="server" Text="Var6" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar7" runat="server" Text="Var7" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar8" runat="server" Text="Var8" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar9" runat="server" Text="Var9" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar10" runat="server" Text="Var10" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar11" runat="server" Text="Var11" />
                                    &nbsp;
                                    <asp:CheckBox ID="chkVar12" runat="server" Text="Var12" />
                                </div>
                            </div>
                            <span class="help-block">Select the variable(s) you want to allow the owner/user to
                                    be able to modify.&nbsp; These variables can then be edited by the user, via a special
                                    page (the variables button) from the server management page.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 1 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar1Desc" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">The variable description is shown on the variable editor page
                                    and should explain what the variable is used for.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 1
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar1" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">This is the variable's value.&nbsp; This value will replace
                                    %Var1% throughout the panel.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 2 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar2Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 2
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 3 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar3Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 3
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 4 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar4Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 4
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 5 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar5Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 5
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar5" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 6 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar6Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 6
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar6" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 7 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar7Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 7
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar7" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 8 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar8Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 8
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar8" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 9 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar9Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 9
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar9" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 10 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar10Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 10
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar10" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 11 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar11Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 11
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar11" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 12 description
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar12Desc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Variable 12
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtVar12" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>


                </div>
            </asp:View>
            <asp:View ID="View9" runat="server">

                <div class="alert alert-info" id="licAlert" runat="server">
                    The features on this page will only work if your panel is licensed.&nbsp; <a class="alert-link" href="admininfo.aspx">Verify license status.</a>
                </div>



                <div class="form-horizontal">
                    <div class="alert alert-info" role="alert">You can setup automatic server restart settings from this page. &nbsp;You should only choose one of the following methods.</div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Process runtime based server restarts *</h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Restart server after specified time
                                </label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="txtRestartInMin" runat="server" CssClass="form-control"></asp:TextBox>
                                    <span class="help-block">Enter a value in minutes and the panel will restart the server after it has an uptime greater than the specified value.  &nbsp;This feature honors the minimum player count setting on the shutdown tab.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Scheduled based server restarts *</h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Enable automatic restarts
                                </label>
                                <div class="col-sm-10">
                                    <div class="checkbox-inline">
                                        <asp:CheckBox ID="chkTimedRestart" runat="server" />&nbsp;
                                    </div>
                                    <span class="help-block">If enabled, the server will be restarted at the configured
                                time and day.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Time to stop/start server
                                </label>
                                <div class="col-sm-10">
                                    <div class="form-inline">
                                        <asp:DropDownList ID="ddlTime" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="0">00</asp:ListItem>
                                            <asp:ListItem Value="1">01</asp:ListItem>
                                            <asp:ListItem Value="2">02</asp:ListItem>
                                            <asp:ListItem Value="3">03</asp:ListItem>
                                            <asp:ListItem Value="4">04</asp:ListItem>
                                            <asp:ListItem Value="5">05</asp:ListItem>
                                            <asp:ListItem Value="6">06</asp:ListItem>
                                            <asp:ListItem Value="7">07</asp:ListItem>
                                            <asp:ListItem Value="8">08</asp:ListItem>
                                            <asp:ListItem Value="9">09</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                            <asp:ListItem Value="13">13</asp:ListItem>
                                            <asp:ListItem Value="14">14</asp:ListItem>
                                            <asp:ListItem Value="15">15</asp:ListItem>
                                            <asp:ListItem Value="16">16</asp:ListItem>
                                            <asp:ListItem Value="17">17</asp:ListItem>
                                            <asp:ListItem Value="18">18</asp:ListItem>
                                            <asp:ListItem Value="19">19</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                            <asp:ListItem Value="21">21</asp:ListItem>
                                            <asp:ListItem Value="22">22</asp:ListItem>
                                            <asp:ListItem Value="23">23</asp:ListItem>
                                        </asp:DropDownList>
                                        :
                            <asp:DropDownList ID="ddlMin" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0">00</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                            </asp:DropDownList>
                                    </div>
                                    <span class="help-block">Set the time for the automatic restarts.&nbsp; Based on 24 clock.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Hourly restarts
                                </label>
                                <div class="col-sm-10">
                                    <div class="form-inline">
                                        <asp:DropDownList ID="ddlHourly" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="0">0</asp:ListItem>
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="6">6</asp:ListItem>
                                            <asp:ListItem Value="7">7</asp:ListItem>
                                            <asp:ListItem Value="8">8</asp:ListItem>
                                            <asp:ListItem Value="9">9</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>
                                    <span class="help-block">If a value greater than zero is specified the panel will restart the server every specified hours after the time set above.</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    Day of week to restart
                                </label>
                                <div class="col-sm-10">
                                    <asp:DropDownList ID="ddlDay" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">Sunday</asp:ListItem>
                                        <asp:ListItem Value="1">Monday</asp:ListItem>
                                        <asp:ListItem Value="2">Tuesday</asp:ListItem>
                                        <asp:ListItem Value="3">Wednesday</asp:ListItem>
                                        <asp:ListItem Value="4">Thursday</asp:ListItem>
                                        <asp:ListItem Value="5">Friday</asp:ListItem>
                                        <asp:ListItem Value="6">Saturday</asp:ListItem>
                                        <asp:ListItem Value="7">Everyday</asp:ListItem>
                                    </asp:DropDownList>
                                    <span class="help-block">Choose the day of the week for the restart to take place or
                                choose everyday for the restart to occur everyday.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Allow users to set schedule
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkUserSchedule" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">If checked the owner will be able to set the restart schedule from
                                the server's management page.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Update on restart *
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkAutoRestartUpdate" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">If checked the server will update when restarted&nbsp; Works with either restart method.</span>
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View10" runat="server">
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Show resource usage to users
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkShowResources" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">Show the game server's resource usage to users on the management page of the server. &nbsp;Always shown to admin users.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Console log file +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtConsole" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Set this to a log file that the server logs console output to.&nbsp; It will be shown in the console tool in the server management page.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Workshop Mods
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtMods" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">Workshop items defined for this server.&nbsp; Format is a comma separated list of IDs (i.e. 2342,5234,2345, etc).</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Environment Variables +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtEnvVars" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If you need to set a custom environment variable for a server to run, enter it here.  Changed variables will be reset to their previous state after the server launches.  Separate multiple variables with a double colon. I.e. PATH=/bin:/sbin::LD_LIBRARY_PATH=.:./bin</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Dependency of *
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlDeps" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <span class="help-block">If this server requires that another server be running, select
                                that server here.&nbsp; If the server selected is
                                not running the monitor will not start this server until the selected server is
                                started.&nbsp; More info <a href="http://www.brainless.us/forum/viewtopic.php?f=21&t=1271">here.</a></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Dependencies follow server *
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkDepsFollow" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">If other servers are dependent on this server, checking this
                                setting will cause the panel to start and stop the servers that are dependent on
                                this one when this server is started or stopped.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Dependencies wait time *
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtDepsTime" runat="server" CssClass="form-control">0</asp:TextBox>
                            <span class="help-block">This value, in seconds, is the amount of the time the panel
                                waits before starting dependencies.&nbsp; You should try to keep this as low as
                                possible.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Start with broker
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkBroker" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">If the <a href="http://www.brainless.us/forum/viewtopic.php?f=21&t=1043" target="_blank">local broker</a> is running the panel will start the server through the broker.&nbsp; Otherwise start the server normally.</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Run command before server start +*
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtSecondaryExe" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If you want to run something before starting this server, enter
                                the command here with its full path.&nbsp; The panel will wait up to five seconds for
                                the command to finish before starting the game server.  This should be something that starts and stops.  If you need something the runs long term, consider setting up a second server and making it a dependency of this server.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Command line arguments +*
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtSecondaryArg" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If the program that starts before the game server needs any
                                command line arguments, you may enter them here.</span>
                        </div>
                    </div>



                </div>

            </asp:View>
            <asp:View ID="View11" runat="server">

                <div class="form-horizontal">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Enable CPU monitoring *
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkCpuMon" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">The monitor will monitor the CPU utilization of the process
                                and if the process uses more than the configured settings it&#39;ll be shut down/restarted.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            CPU monitoring threshold
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtCpuMonThreshold" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If the process uses more CPU than this setting for an x amount
                                of time (below setting) it&#39;ll be stopped or restarted.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            CPU threshold time limit
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtCpuMonTime" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">The number of seconds the process has to be consecutively over
                                the threshold for the action to be triggered.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            CPU over limit action
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlCPUAction" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0">Shutdown</asp:ListItem>
                                <asp:ListItem Value="1">Restart</asp:ListItem>
                                <asp:ListItem Value="2">Notify Only</asp:ListItem>
                            </asp:DropDownList>
                            <span class="help-block">What action do you want performed on the server if it is over
                                the configured threshold for the configured time limit.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Enable memory monitoring *
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkRamMon" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">The monitor will monitor the memory usage of the process and
                                if the process uses more than the configured setting it&#39;ll be shutdown/restarted.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Memory monitoring threshold
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtRamMonThreshold" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If the process uses more memory than this setting for the specified
                                amount of time (below setting) it&#39;ll be stopped or restarted.&nbsp; Specify
                                a value in megabytes (MB).</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Memory threshold time limit
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtRamMonTime" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">The number of seconds the process has to be consecutively over
                                the threshold for the action to be triggered.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Memory over limit action
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlRamAction" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0">Shutdown</asp:ListItem>
                                <asp:ListItem Value="1">Restart</asp:ListItem>
                                <asp:ListItem Value="2">Notify Only</asp:ListItem>
                            </asp:DropDownList>
                            <span class="help-block">What action do you want performed on the server if it is over
                                the configured threshold for the configured time limit.</span>
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="View12" runat="server">
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Graceful shutdown time *
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtGracefulDelay" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If this server supports graceful shutdowns, how much time (in seconds) do you want to give users before stopping the server?&nbsp; Please view <a href="http://www.brainless.us/forum/viewtopic.php?f=21&t=637">the documentation</a> for more information.&nbsp; This feature requires a license and a working monitor if greater than 10 seconds.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Graceful shutdown msg *
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtGracefulText" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">This message will display the time remaining until the panel stops the server.&nbsp; %TIME% will be replaced with the time (i.e. 1 minute, 30 seconds, etc.) remaining.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Graceful shutdown imminent msg *
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtGracefulTextNow" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">This message will be displayed right before the server is stopped.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Server shutdown minimum players count *
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtAutoUpdatePlayerMin" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">If the player count on the server is greater than or equal
                                to this value, the panel will not stop the server for automatic updates or restarts and will wait until the player count
                                falls below this value.&nbsp; Set to zero to ignore player count and do server updates
                                and scheduled restarts immediately.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Kill child processes
                        </label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <asp:CheckBox ID="chkKillChild" runat="server" />&nbsp;
                            </div>
                            <span class="help-block">If your game server spawns multiple processes when started,
                                this option will allow the panel to closes those extra processes when this server
                                is stopped.&nbsp; <b>Do not enable this feature unless explicitly asked/told to as it may cause issues if it is not required!</b></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            Run extra after shutdown
                        </label>
                        <div class="col-sm-10">
                            <asp:DropDownList ID="ddlStopExtras" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <span class="help-block">After a server is stopped, run the selected extra. &nbsp;Please note the dropdown contents update only after saving changes.</span>
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="ViewRcon" runat="server">
                <br />
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            RCON port
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtRconPort" runat="server" CssClass="form-control">0</asp:TextBox>
                            <span class="help-block">You can specify the RCON port here.&nbsp; If left at 0
                                the panel will use the Game Type's RCON port value.</span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">
                            RCON password +
                        </label>
                        <div class="col-sm-10">
                            <asp:TextBox ID="txtRconPW" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="help-block">You can specify your RCON password here.&nbsp; Leave blank if the panel has native support for graceful shutdowns.&nbsp; If this setting is required the panel will notify you in the logs when trying to stop.</span>
                        </div>
                    </div>
                </div>
            </asp:View>
        </cc1:MyMultiView>


        <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary"
            OnClick="btnUpdate_Click" Text="Update" />
        &nbsp;<asp:Button ID="btnSaveNew" runat="server" CssClass="btn btn-primary"
            OnClick="btnSaveNew_Click" Text="Save new" />
        &nbsp;
				<asp:Button ID="btnDel" runat="server" CssClass="btn btn-primary"
                    OnClick="btnDel_Click" Text="Delete" />
        &nbsp;
				<asp:Button ID="btnReinstall" runat="server" CssClass="btn btn-primary"
                    Text="Reinstall Server" OnClick="btnReinstall_Click" />
        &nbsp;
				<asp:Button ID="btnDelFiles" runat="server" CssClass="btn btn-primary"
                   Text="Delete Files and Server" OnClick="btnDelFiles_Click" />
        <br />
        <br />
        <div class="well well-sm">
            Legend:<br />
            <strong>*</strong> = Only functional in licensed mode.&nbsp; Check your license status in <a href="admininfo.aspx">About UGCC</a> page.
    <br />
            <strong>+</strong> = May use variables in setting.&nbsp; See the 
    <a href="http://www.brainless.us/forum/viewtopic.php?f=21&t=1030" target="_blank">variable section</a>
            on our forums for help and a variable list.
        </div>
    </div>
</asp:Content>
