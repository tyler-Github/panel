<%@ Page Title="New Server Tool" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="admininstaller.aspx.cs" Inherits="UGCC_Sharp.admininstaller1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="lblError" runat="server"></div>
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-info">
                <div class="panel-heading">Common options for all deployments</div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                User
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlUser" runat="server" CssClass="form-control" Enabled="true">
                                </asp:DropDownList>
                                <span class="help-block">Who will be the owning user of this server?</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Player slots
                            </label>
                            <div class="col-sm-10">
                                <span class="help-block">
                                    <asp:TextBox ID="txtSlots" runat="server" CssClass="form-control"></asp:TextBox>
                                    Number of slots for the server.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Launch</label>
                            <div class="col-sm-10">
                                <div class="checkbox-inline-inline">
                                    <asp:CheckBox ID="chkStart" runat="server" />&nbsp;
                                </div>
                                <span class="help-block">Start server once install is complete.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Send email</label>
                            <div class="col-sm-10">
                                <div class="checkbox-inline-inline">
                                    <asp:CheckBox ID="chkEmail" runat="server" />&nbsp;
                                </div>
                                <span class="help-block">Sends an email to user's email account with details about server once setup.  The email template can be edited in general configuration page.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="panel panel-default">
                <div class="panel-heading">Install method 1 - Place new server exactly where you want.</div>
                <div class="panel-body">
                    <div class="form-horizontal">

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Installer
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlConfigs" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlConfigs_SelectedIndexChanged">
                                </asp:DropDownList>
                                <span class="help-block">Installer configurations setup in the panel.</span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Location
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlLocation" runat="server" CssClass="form-control" AutoPostBack="True" Enabled="false" OnSelectedIndexChanged="ddlLocation_SelectedIndexChanged">
                                </asp:DropDownList>
                                <span class="help-block">Install location group.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Server
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlSdef" runat="server" CssClass="form-control" AutoPostBack="True" Enabled="false" OnSelectedIndexChanged="ddlSdef_SelectedIndexChanged">
                                </asp:DropDownList>
                                <span class="help-block">Server definition for this server.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Install folder
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlInstallLoc" runat="server" CssClass="form-control" AutoPostBack="True" Enabled="false">
                                </asp:DropDownList>
                                <span class="help-block">Game server install folder.</span>
                            </div>
                        </div>
                        <asp:Button
                            ID="btnNext" runat="server" Text="Install" CssClass="btn btn-primary" OnClick="BtnUpdate_Click" />
                        <asp:Button
                            ID="btnFast" runat="server" Text="Background Install" CssClass="btn btn-primary" OnClick="btnFast_Click" />

                    </div>
                </div>
            </div>

        </div>

        <div class="col-sm-6">
            <div class="panel panel-default">
                <div class="panel-heading">Install method 2 - Place new server on any server def in a specific location.</div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Location
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlLocationLoc" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <span class="help-block">Target location group.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Installer Win
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlInstallerWin" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <span class="help-block">Installer configuration to use if selected server def is Windows based.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Installer Lin
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlInstallerLin" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                                <span class="help-block">Installer configuration to use if selected server def is Linux based.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Install folder
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlFastInstallLoc" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlInstallLoc_SelectedIndexChanged">
                                    <asp:ListItem Selected="True" Value="0">Primary</asp:ListItem>
                                    <asp:ListItem Value="1">Alternate</asp:ListItem>
                                </asp:DropDownList>
                                <span class="help-block">Game server install folder.</span>
                            </div>
                        </div>
                        <asp:Button
                            ID="btnBackgroundLoc" runat="server" Text="Background Install" CssClass="btn btn-primary" OnClick="btnBackgroundLoc_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br />
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-default">
                <div class="panel-heading">Installer output</div>
                <div class="panel-body">
                    <asp:TextBox ID="txtLog" runat="server" CssClass="form-control" TextMode="MultiLine" Height="66px"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>
