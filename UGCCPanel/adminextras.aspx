<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminextras.aspx.cs" Inherits="UGCC_Sharp.adminextras" Title="Extras Tool Management" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="alert alert-success" id="alert" runat="server" visible="false">Test</div>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">
            Server
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlServers" runat="server" AutoPostBack="True" CssClass="form-control"
                    OnSelectedIndexChanged="ddlServers_SelectedIndexChanged">
                </asp:DropDownList>
                <span class="help-block">Choose the server you'd like to manage the extras for.&nbsp;
                    Items with &#39;*&#39; have extras explicitly configured.&nbsp; The 'All servers' option will apply to all servers.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Extras
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlExtras" runat="server" AutoPostBack="True" CssClass="form-control"
                    OnSelectedIndexChanged="ddlExtras_SelectedIndexChanged">
                </asp:DropDownList>
                <span class="help-block">List of extras currently setup for the above selected
                    server.&nbsp; Select one to manage.&nbsp; To add a new item enter a description in the text box at the very bottom and click create.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Extra name
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtText" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="help-block">This will be displayed to the user in the extra tool's drop
                    down list box.&nbsp; Enter a brief description.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Program to run (win) +
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtBin" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="help-block">Enter the full path and executable with extension the panel should run on Windows.&nbsp; You may use variables for this setting.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Command arguments (win) +
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtArgs" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="help-block">Enter the command line arguments to use on Windows.&nbsp; You may use variables for this setting.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Program to run (lin) +
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtBinLin" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="help-block">Enter the full path and executable with extension the panel should run on Linux.&nbsp; You may use variables for this setting.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Command arguments (lin) +
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtArgsLin" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="help-block">Enter the command line arguments to use on Linux.&nbsp; You may use variables for this setting.</span>
            </div>
        </div>
                <div class="form-group">
            <label class="col-sm-2 control-label">
                Admins only
            </label>
            <div class="col-sm-10">
                <div class="checkbox">
                    <label>
                <asp:CheckBox ID="chkAdmin" runat="server" />
                        </label>
                </div>
                    <span class="help-block">If checked only administrators will be able to see/run this extra.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Server state
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                    <asp:ListItem Selected="True" Value="0">Any State</asp:ListItem>
                    <asp:ListItem Value="1">Only run if server is stopped.</asp:ListItem>
                    <asp:ListItem Value="2">Only run if server is running.</asp:ListItem>
                </asp:DropDownList>
                    <span class="help-block">Choose the required state of the server for the panel to run this extra.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Description
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtDesc" runat="server" Height="200px" TextMode="MultiLine"
                    CssClass="mce"></asp:TextBox>
                <span class="help-block">This text is shown to the user on the extras page.&nbsp; A description of what the extra does should be helpful for users.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
            </label>
            <div class="col-sm-10">
                <span class="help-block"></span>
            </div>
        </div>
    </div>

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" 
            onclick="Button1_Click" Text="Save" />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" onclick="Button2_Click" 
            Text="Delete" />
<hr /><p>
    To add a new extra option,select the server from the top dropdown and then enter the option&#39;s desired name/text (it can be changed later) and click
    create.</p>
    <div class="input-group">
        <asp:TextBox ID="txtNew" runat="server" CssClass="form-control"></asp:TextBox>
        <span class="input-group-btn">
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" OnClick="Button3_Click"
                Text="Create" /></span>
    </div>

    <hr />
    <p>
        To copy the extra options from one server to the currently selected server, select
        the server with the extra options below and click the copy button.</p>
    <div class="input-group">
        <asp:DropDownList ID="ddlCopyList" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCopyList_SelectedIndexChanged">
        </asp:DropDownList>
        <span class="input-group-btn">
            <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary" OnClick="Button4_Click"
                Text="Copy" />
                </span>
    </div>
    <hr />
    <span class="badge">+</span> = Denotes a setting that can use 
    <a href="http://www.brainless.us/forum/viewtopic.php?f=21&amp;t=1030" target="_blank">variables</a>. 
   
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
</asp:Content>

