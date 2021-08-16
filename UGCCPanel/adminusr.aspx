<%@ Page Title="" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true"
    CodeBehind="adminusr.aspx.cs" Inherits="UGCC_Sharp.adminusr_new" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Users
            </label>
            <div class="col-sm-10">
                <div class="input-group">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True"
                        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2" >
                            <span class="glyphicon glyphicon-filter"></span>
                        </button>
                    </span>
                    </div>
                    <span class="help-block">Current users.&nbsp; Accounts with an <span class="badge">*</span>
                        indicate the account is a sub-user account.&nbsp; Add a new user at the bottom of
                    the page.</span>
                </div>
            
        </div>
    </div>
    <div class="row">
        <ul class="nav nav-tabs nav-justified">
            <li id="liGeneral" runat="server" class="active">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">General</asp:LinkButton></li>
            <li id="liContact" runat="server">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Contact Info</asp:LinkButton></li>
            <li id="liOther" runat="server">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Other</asp:LinkButton></li>
        </ul>
    </div>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        User name
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">The name the user logs on with.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Password
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" autocomplete="new-password" TextMode="Password"></asp:TextBox>
                        <span class="help-block">The user's password.&nbsp; Password is left unchanged if empty.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        TFA status
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtTfa" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
                        <span class="help-block">Displays whether the user has enabled TFA on their account.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Account enabled
                    </label>
                    <div class="col-sm-10">
                        <div class="checkbox-inline">
                            <asp:CheckBox ID="chkEnabled" runat="server" />&nbsp;
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Admin privileges
                    </label>
                    <div class="col-sm-10">
                        <div class="checkbox-inline">
                            <asp:CheckBox ID="chkAdmin" runat="server" />&nbsp;
                        </div>
                        <span class="help-block">Grants full access to all aspects of the panel and configured
                            servers.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Max servers
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtMaxSrvrs" runat="server" CssClass="form-control">1</asp:TextBox>
                        <span class="help-block">If the user has multiple servers setup, do we limit how many
                            he can run?&nbsp; Set to 0 to disable limit.</span>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Email address
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                            CssClass="lblError" ErrorMessage="Valid email address required" SetFocusOnError="True"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Alternate email
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        First name
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtFName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Last name
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtLName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Address
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtAdd" runat="server" CssClass="form-control" placeholder="Address line 1"></asp:TextBox>
                        <asp:TextBox ID="txtAdd2" runat="server" CssClass="form-control" placeholder="Address line 2"></asp:TextBox>
                        <asp:TextBox ID="txtAdd3" runat="server" CssClass="form-control" placeholder="Address line 3"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        City
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        State/region
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Zip/Postal code
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtZip" runat="server" CssClass="form-control"></asp:TextBox>
                        <span class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Country
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Phone
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <br />
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        User info
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtInfo" runat="server" TextMode="MultiLine" Height="82px" CssClass="form-control"></asp:TextBox>
                        <span class="help-block">Misc info, im, steam acct name, contact info, etc.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Group Memberships
                    </label>
                    <div class="col-sm-10">
                        <asp:ListBox ID="ListBox1" runat="server" Enabled="False" CssClass="form-control"></asp:ListBox>
                        <span class="help-block">The list of groups this user is a member of.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Owner
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtOwner" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        <span class="help-block">If a name is listed, this user is a sub-user of the listed
                            user.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        Sub-user accounts
                    </label>
                    <div class="col-sm-10">
                        <asp:ListBox ID="lstSubUsers" runat="server" CssClass="form-control" Enabled="False"></asp:ListBox>
                        <span class="help-block">If this account is not a sub-user account; any sub-user accounts
                            that belong to this user are shown here.</span>
                    </div>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>
    <div id="lblError" runat="server">
    </div>
    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click"
        Text="Update" ToolTip="Update settings" />
    &nbsp;<asp:Button ID="btnDel" runat="server" CssClass="btn btn-primary" OnClick="btnDel_Click"
        Text="Delete" ToolTip="Delete account and sub-user accounts" />
    &nbsp;<asp:Button ID="btnPurge" runat="server" CssClass="btn btn-warning" OnClick="btnPurge_Click"
        Text="Delete User & Servers" ToolTip="Delete account, sub-user accounts and all servers and their files" />
    &nbsp;<asp:Button ID="btnNotify" runat="server" CssClass="btn btn-primary" OnClick="btnNotify_Click"
        Text="Notify" ToolTip="Send user an email with user name and password" />
    &nbsp;<asp:Button ID="btnTfa" runat="server" CssClass="btn btn-primary" OnClick="btnTfa_Click" Text="Reset TFA" ToolTip="Reset user's TFA secret in case they lost their TFA device" />
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" title="Create a new user">
        New user</button>

    <!-- /input-group -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Add a new user</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <asp:TextBox ID="txtNew" runat="server" CssClass="form-control" placeholder="enter the new account username"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="btnNew" runat="server" CssClass="btn btn-primary" OnClick="btnNew_Click"
                                Text="New" ToolTip="Enter a username and click New to create a new user" />
                        </span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Filter user list</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <asp:TextBox ID="txtFilter" runat="server" CssClass="form-control" placeholder="enter text to filter user list by"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="btnDoFilter" runat="server" CssClass="btn btn-primary" 
                                Text="Filter" ToolTip="Filter user list" OnClick="btnDoFilter_Click" />
                        </span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
