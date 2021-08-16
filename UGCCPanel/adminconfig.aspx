<%@ Page Title="" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true"
    CodeBehind="adminconfig.aspx.cs" Inherits="UGCC_Sharp.adminconfig2" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <ul class="nav nav-tabs nav-justified">
            <li id="liEmail" runat="server" class="active">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Button1_Click">Email</asp:LinkButton></li>
            <li id="liMon" runat="server">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Button2_Click">Monitoring</asp:LinkButton></li>
            <li id="liSupport" runat="server">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="Button3_Click">Support</asp:LinkButton></li>
            <li id="liPay" runat="server">
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="Button4_Click">Pay Reminders</asp:LinkButton></li>
            <li id="liNews" runat="server">
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="Button5_Click">News System</asp:LinkButton></li>
            <li id="liUpdate" runat="server">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="txtUpdBtn_Click">Updates</asp:LinkButton></li>
            <li id="liSteam" runat="server">
                <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">SteamCMD</asp:LinkButton></li>
            <li id="liFiletool" runat="server">
                <asp:LinkButton ID="lnkBtnFiletool" runat="server" OnClick="lnkBtnFiletool_Click">Filetool</asp:LinkButton></li>
            <li id="liMisc" runat="server">
                <asp:LinkButton ID="LinkButton7" runat="server" OnClick="Button6_Click">Other</asp:LinkButton></li>
        </ul>
    </div>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        SMTP mail server</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtSMTP" runat="server" CssClass="form-control" ToolTip="Enter the IP/FQDN for your mail server"></asp:TextBox>
                        <span class="help-block">IP address or FQDN for your mail server.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        SMTP mail server port</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtSMTPPort" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">Default port is typically 25, and 465 for encrypted connections</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Mail server uses SSL</label>
                    <div class="col-sm-10">
                        <div class="checkbox-inline-inline">

                            <asp:CheckBox ID="chkSMTPssl" runat="server" />&nbsp;
                        </div>
                        <span class="help-block">Enable this if your server requires SSL or TLS.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Email from text</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">All messages sent by the panel (except payment reminders) will
                            use this as the from field.&nbsp; Use the format:&nbsp; &quot;Brainless Game Servers&quot;&lt;masher@brainless.us&gt;</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Send emails To/BCC</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtBcc" runat="server" CssClass="form-control" ToolTip="Payment reminders will be copied to this person"></asp:TextBox>
                        <span class="help-block">Sends a blind carbon copy message for all emails sent by the
                            panel to this address.&nbsp; New support ticket alerts are sent to this email address
                            also.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        SMTP authentication username</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtSMTPUser" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">If you need to authenticate to send email enter your username
                            here.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        SMTP authentication password</label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtSMTPPass" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">If you need to authenticate to send email; enter your password
                            here.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Test email settings</label>
                    <div class="col-sm-10">
                        <asp:Button ID="Button8" runat="server" CssClass="btn btn-default" OnClick="Button8_Click" Text="Test" />
                        <asp:Label ID="lblMailTest" runat="server" CssClass="lblError"></asp:Label>
                        <span class="help-block">Sends a test message using the settings above to the bcc email
                            address.</span>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        No response restart count
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtNoRespCount" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">After this many failed consecutive attempts to query the game
                            server (advanced monitoring), it will be considered dead and will be restarted.&nbsp;
                            Keep in mind the frequency you are checking the status of the game servers to take
                            into account map changes, etc.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        CPU check interval (secs)
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtCPUInterval" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">How often to check CPU and memory usage of servers for process
                            resource monitoring in seconds.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        CPU overage email
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtCPUEmail" runat="server" CssClass="mce" Height="216px" TextMode="MultiLine"
                            Width="100%"></asp:TextBox>
                        <span class="help-block">Email message sent to owner of server when server exceeds its
                            allotted amount of CPU.&nbsp; The following keywords will be replaced with their
                            meaning.&nbsp; Keywords must match <strong><em>exactly</em></strong>.<br />
                            <br />
                            %ServerName%<br />
                            %UserName%<br />
                            %DateTime%<br />
                            %Action% (shutdown/restarted depending on setting)</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Server crash notification message
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtCrashMsg" runat="server" CssClass="mce" Height="217px" TextMode="MultiLine"
                            Width="100%"></asp:TextBox>
                        <span class="help-block">If the monitor restarts a dead server, and the option is enabled
                            to generate a report; this message will be sent to the user.&nbsp; The following
                            keywords will be replaced with their meaning.&nbsp; Keywords must match <strong><em>exactly</em></strong>.<br />
                            <br />
                            %ServerName%<br />
                            %UserName%<br />
                            %DateTime%</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Memory overage email
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtRamEmail" runat="server" CssClass="mce" Height="216px" TextMode="MultiLine"
                            Width="100%"></asp:TextBox>
                        <span class="help-block">Email message sent to owner of server when server exceeds its
                            allotted amount of memory.&nbsp; The following keywords will be replaced with their
                            meaning.&nbsp; Keywords must match <strong><em>exactly</em></strong>.<br />
                            <br />
                            %ServerName%<br />
                            %UserName%<br />
                            %DateTime%<br />
                            %Action% (shutdown/restarted depending on setting)</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Max slots overage email
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtMaxPlayersEmail" runat="server" CssClass="mce" Height="216px"
                            TextMode="MultiLine" Width="100%"></asp:TextBox>
                        <span class="help-block">Email message sent to owner of server when server exceeds its
                            allotted amount of slots (max players).&nbsp; The following keywords will be replaced
                            with their meaning.&nbsp; Keywords must match <strong><em>exactly</em></strong>.<br />
                            <br />
                            %ServerName%<br />
                            %UserName%<br />
                            %DateTime%<br />
                            %Number% (replaced with max slots #)</span>
                    </div>
                </div>
            </div>

        </asp:View>
        <asp:View ID="View3" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Support email address
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">This is displayed on the support page as a clickable link.&nbsp; Leave
                            blank if you do not want an email address displayed.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Additional support contact information
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="mce" Height="214px" TextMode="MultiLine"
                            Width="100%"></asp:TextBox>
                        <span class="help-block">This additional information is displayed on the support page.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Enable the trouble ticket system
                    </label>
                    <div class="col-sm-10">
                        <div class="checkbox-inline">
                            <asp:CheckBox ID="chkTicketSys" runat="server" />&nbsp;
                        </div>
                        <span class="help-block">This option will display a link on the
                            support page to the ticket system.&nbsp; If you disable this option the ticket system can still be
                            used, but links won&#39;t be displayed.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Trouble ticket categories
                    </label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <asp:DropDownList ID="ddlTroubleCats" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <span class="input-group-btn">
                                <asp:Button ID="Button9" runat="server" CssClass="btn btn-primary" OnClick="Button9_Click" Text="Delete" />
                            </span>
                        </div>
                        <!-- /input-group -->

                        <span class="help-block">Here you can remove the categories visible to end users
                            when creating a new ticket.&nbsp; Use the setting below to add new categories.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Add a new trouble ticket category
                    </label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <asp:TextBox ID="txtNewCat" runat="server" CssClass="form-control"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button ID="Button10" runat="server" CssClass="btn btn-primary" OnClick="Button10_Click"
                                    Text="Add" />
                            </span>
                        </div>
                        <!-- /input-group -->

                        <span class="help-block">Add a new category shown to in the problem category when users create new tickets.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        New user email message
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtWelcomeMsg" runat="server" Height="214px" TextMode="MultiLine"
                            Width="100%" CssClass="mce"></asp:TextBox>
                        <span class="help-block">This is the text sent to users from the user management page.&nbsp; The following keywords will be replaced with their meaning.&nbsp;
                            Keywords must match <strong>exactly</strong>.<br />
                            <br />
                            %UserName%<br />
                            %Password% - Doesn't work any longer as passwords aren't stored<br />
                            %SiteURL% - will be replaced with browser&#39;s address</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        New server email message
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtNewServer" runat="server" Height="214px" TextMode="MultiLine"
                            Width="100%" CssClass="mce"></asp:TextBox>
                        <span class="help-block">This is the text sent to users when a new server is deployed.&nbsp; The following keywords will be replaced with their meaning.&nbsp;
                            Keywords must match <strong>exactly</strong>.<br />
                            <br />
                            %IP% - Replaced with server's IP address<br />
                            %Port% - Replaced with server's game port
                            <br />
                            %UserName%<br />
                            %SiteURL% - will be replaced with browser&#39;s address</span>
                    </div>
                </div>
            </div>

        </asp:View>
        <asp:View ID="View4" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Disable Pay Reminders</label>
                    <div class="col-sm-10">
                        <div class="checkbox-inline-inline">

                            <asp:CheckBox ID="chkDisablePayReminders" runat="server" />&nbsp;
                        </div>
                        <span class="help-block">Disable panel's payment reminder system.&nbsp; If using a billing system (or you just don't need it) that handles doing this, you can disable this functionality.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Email address payment reminders are sent as
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtFromPay" runat="server" CssClass="form-control" ToolTip="Specifies who will be the sender of the payment reminders"></asp:TextBox>
                        <span class="help-block">Format:&nbsp; &quot;Brainless Game Servers&quot; &lt;masher@brainless.us&gt;</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Payment reminder subject text
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtReminderSubject" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">The subject line of the reminder email.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Payment reminder message
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtRemMessage" runat="server" CssClass="mce" Height="219px" TextMode="MultiLine"
                            Width="100%"></asp:TextBox>
                        <span class="help-block">The following keywords will be replaced with their meaning.&nbsp;
                            Keywords must match <strong><em>exactly</em></strong>.&nbsp;<br />
                            <br />
                            %ServerName%<br />
                            %PaymentAmount%<br />
                            %DueDate% &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; -Date in
                            Month/Day format<br />
                            %DueDateDDMM% &nbsp;&nbsp; -Date in Day/Month format<br />
                            %ID% &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; -Server&#39;s ID#</span>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Enable news publishing
                    </label>
                    <div class="col-sm-10">
                        <div class="checkbox-inline">
                            <asp:CheckBox ID="chkExternalNews" runat="server" />&nbsp;
                        </div>
                        <span class="help-block">This option will create a html page that can be included on
                            another page to show news externally.&nbsp; A file will be created in the same folder
                            that UGCC is in and will be called news.html.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Max news items to publish
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtExternalNewsMax" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">Limits the amount of items published.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                    </label>
                    <div class="col-sm-10">
                        <span class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Heading HTML opening tags
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtHead" runat="server" CssClass="form-control" Wrap="False"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Heading HTML closing tags
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtHeadClose" runat="server" CssClass="form-control" Wrap="False"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Body HTML opening tags
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtBody" runat="server" CssClass="form-control" Wrap="False"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Body HTML closing tags
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtBodyClose" runat="server" CssClass="form-control" Wrap="False"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Author HTML opening tags
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control" Wrap="False"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Author HTML closing tags
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtAuthorClose" runat="server" CssClass="form-control"
                            Wrap="False"></asp:TextBox>
                    </div>
                </div>
            </div>

        </asp:View>
        <asp:View ID="View6" runat="server">
            <br />
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Only 'god' admins can delete servers
                </label>
                <div class="col-sm-10">
                    <div class="checkbox-inline">
                        <asp:CheckBox ID="chkGodDel" runat="server" />&nbsp;
                    </div>
                    <span class="help-block">This option, if enabled, allows only 'god' level admin account to delete servers.  Disabling this option allows all admins to delete servers.  If enabled only 'god' level accounts can disable.</span>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Administrator home page
                </label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddlAdminHome" runat="server" CssClass="form-control">
                        <asp:ListItem Value="menu.aspx">Server Status</asp:ListItem>
                        <asp:ListItem Value="adminmenu.aspx">Admin Menu</asp:ListItem>
                    </asp:DropDownList>
                    <span class="help-block">When an admin logins, should they be directed to the server
                            status page, or the admin menu page.&nbsp; If you have a lot of servers and want
                            to be able to quickly get into the panel, choose the admin menu page.</span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Disable server images
                </label>
                <div class="col-sm-10">
                    <div class="checkbox-inline">
                        <asp:CheckBox ID="chkDisableSrvImg" runat="server" />&nbsp;
                    </div>
                    <span class="help-block">Disables the real time status image for servers.&nbsp; Removes
                            links from panel and disables the feature.</span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Auto remove disabled servers
                </label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtRemoveDisabled" runat="server" CssClass="form-control"></asp:TextBox>
                    <span class="help-block">Automatically remove disabled servers and their files after specified amount of days.  Set to 0 to disable.  Value can only be modified by 'god' level accounts.</span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Clear menu cache
                </label>
                <div class="col-sm-10">
                    <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="Clear"
                        CssClass="btn btn-default" />
                    <span class="help-block">Clicking this button will clear the menu cache.&nbsp; If you
                            made changes to the menu's file template you'll need to do this for your changes
                            to show up.</span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Clean database
                </label>
                <div class="col-sm-10">
                    <asp:Button ID="btnClnLog" runat="server" Text="Purge"
                        CssClass="btn btn-default" OnClick="btnClnLog_Click" />
                    <span class="help-block">Purge anything older than 30 
                        days out of the log table, queue table jobs older than 3 days, and optimizes tables.</span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">
                    Sync installer utility folder
                </label>
                <div class="col-sm-10">
                    <asp:Button ID="btnSyncUtil" runat="server" Text="Sync"
                        CssClass="btn btn-default" OnClick="btnSyncUtil_Click" />
                    <span class="help-block">The installer has a 'utility' folder (cache/ugcc) that is sync'd from sdefid #1 to target server when each install runs.  This will force a sync of the utility folder to all sdef's without doing an install.  Must be done from sdef #1.</span>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View7" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Interval of time users must wait before re-running updates
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">Limits how quickly a user can re-run the update tool after performing an update on the same server.&nbsp; Value is in minutes.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Pre-update message
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtUpdStartedMsg" runat="server" Height="217px" TextMode="MultiLine"
                            Width="100%" CssClass="mce"></asp:TextBox>
                        <span class="help-block">This message is sent to users when the panel is about to shutdown
                            a server before starting an auto update.&nbsp; The following variables can be used
                            and must match <strong>exactly</strong>.<br />
                            %ServerName%<br />
                            %UserName%<br />
                            %DateTime%</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Post-update message
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtUpdDoneMsg" runat="server" Height="217px" TextMode="MultiLine"
                            Width="100%" CssClass="mce"></asp:TextBox>
                        <span class="help-block">This message is sent to users when the panel is done updating
                            a server.&nbsp; The following variables can be used and must match <strong>exactly</strong>.
                            <br />
                            <br />
                            %ServerName%<br />
                            %UserName%<br />
                            %DateTime%<br />
                            %UpdateTxt%</span>
                    </div>
                </div>


            </div>

        </asp:View>
        <asp:View ID="View8" runat="server">

            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Workshop SteamCMD Options
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtSteamWksp" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">Specify additional options for SteamCMD Workshop downloads (i.e. +@nCSClientRateLimitKbps)</span>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View9" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        File editor maximum file size (bytes)
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">The maximum size of a file, in bytes, that is able to be opened in the panel's file editor.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        File editor maximum download file size
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtMaxDlSize" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">The maximum size of a file, in bytes, that is able to be downloaded using the panel's file tool.&nbsp; This setting has no effect on the integrated FTP server.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        FTP virtual directory display type
                    </label>
                    <div class="col-sm-10">
                        <div class="checkbox-inline">
                            <asp:CheckBox ID="chkFName" runat="server" />&nbsp;
                        </div>
                        <span class="help-block">The default behavior for representing game servers in the integrated
                            FTP server is by the server&#39;s IP:Port, enabling this option will use the server&#39;s
                            friendly name instead.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Admins override ugcc.exclude
                    </label>
                    <div class="col-sm-10">
                        <div class="checkbox-inline">
                            <asp:CheckBox ID="chkAdminsExcludeOverride" runat="server" />&nbsp;
                        </div>
                        <span class="help-block">By default only 'god' admin accounts can see folders that contain ugcc.exclude files.  Enabling this will allow regular admins access to these folders as well. If enabled only 'god' level accounts can disable.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        File block-list
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtBlackList" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">These files will never be allowed to be uploaded, created, or renamed by non-admin users.  Can be over-ruled by individual server allow-lists.  Block lists never apply to admins.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Allowed file extensions
                    </label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <asp:DropDownList ID="ddlExt" runat="server" CssClass="form-control">
                            </asp:DropDownList>
                            <span class="input-group-btn">
                                <asp:Button ID="Button11" runat="server" CssClass="btn btn-primary" OnClick="Button11_Click"
                                    Text="Delete" />
                            </span>
                        </div>
                        <span class="help-block">File extensions that are allowed to be opened with the panel's file
                            editor.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Add extension
                    </label>
                    <div class="col-sm-10">
                        <div class="input-group">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" EnableViewState="False"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button ID="Button12" runat="server" CssClass="btn btn-primary" OnClick="Button12_Click"
                                    Text="Add" />
                            </span>
                        </div>
                        <span class="help-block">Add a new extension to the panel's allowed extensions list for the file editor.</span>
                    </div>
                </div>

        </asp:View>
    </asp:MultiView>
    <br />
    <asp:Button ID="Button7" runat="server" CssClass="btn btn-primary" OnClick="Button7_Click"
        Text="Save" />
</asp:Content>
