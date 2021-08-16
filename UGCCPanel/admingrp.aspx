<%@ Page Title="" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="admingrp.aspx.cs" Inherits="UGCC_Sharp.admingrpnew" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Current groups
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    CssClass="form-control">
                </asp:DropDownList>
                <span class="help-block">This is the current list of user groups.  To create a new group scroll to bottom of the page.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Group members
            </label>
            <div class="col-sm-10">
                <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Height="167px"
                    CssClass="form-control"></asp:ListBox>
                <span class="help-block">Highlighted users are members of the currently selected group.&nbsp; Ctrl+Click to select multiple
                    users.&nbsp; <span class="badge">*</span> = Denotes
                    a sub-user account.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Group description
            </label>
            <div class="col-sm-10">
                <asp:TextBox ID="TextBox2" runat="server" Height="78px" TextMode="MultiLine"
                    CssClass="form-control"></asp:TextBox>
                <span class="help-block"></span>
            </div>
        </div>

    </div>
    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click"
        Text="Update" />
    &nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click"
        Text="Delete" />
    <hr />
    <div class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Create new group
            </label>
            <div class="col-sm-10">
                <div class="input-group">
                <asp:TextBox ID="TextBox1" runat="server" EnableViewState="False" CssClass="form-control"
                    ToolTip="Enter a new group name and click create" placeholder="Name for new group"></asp:TextBox>
                <span class="input-group-btn">
                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" OnClick="Button3_Click"
                        Text="Create" />
                </span>
            </div>
            <span class="help-block"></span>
        </div>
    </div>

            
    
<div id="lblError" runat="server"></div>
</asp:Content>
