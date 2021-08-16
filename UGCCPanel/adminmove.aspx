<%@ Page Title="Move Server Tool" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminmove.aspx.cs" Inherits="UGCC_Sharp.adminmove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="lblError" runat="server"></div>
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-info">
                <div class="panel-heading">Server move options</div>
                <div class="panel-body">It's recommended to only move between similar platforms, although moving between different platforms is supported.</div>
                <div class="panel-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Server
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlServer" runat="server" CssClass="form-control" Enabled="true" AutoPostBack="True" OnSelectedIndexChanged="ddlServer_SelectedIndexChanged">
                                </asp:DropDownList>
                                <span class="help-block">Select the server to move, only stopped servers are shown.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Server def
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlNewSDef" runat="server" CssClass="form-control" Enabled="False" AutoPostBack="True" OnSelectedIndexChanged="ddlNewSDef_SelectedIndexChanged">
                                </asp:DropDownList>
                                <span class="help-block">Select the server definition to move the server to.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Installer config
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlCfg" runat="server" CssClass="form-control" Enabled="False">
                                </asp:DropDownList>
                                <span class="help-block">Installer config to use. If platforms are the same the original installer config is automatically selected.</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">
                                Install folder
                            </label>
                            <div class="col-sm-10">
                                <asp:DropDownList ID="ddlFolder" runat="server" CssClass="form-control" >
                                    <asp:ListItem Selected="True" Value="0">Primary</asp:ListItem>
                                    <asp:ListItem Value="1">Alternate</asp:ListItem>
                                </asp:DropDownList>
                                <span class="help-block">Game server install folder.</span>
                            </div>
                        </div>
                        <asp:Button
                            ID="btnInstall" runat="server" Text="Move" CssClass="btn btn-primary" OnClick="btnInstall_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
