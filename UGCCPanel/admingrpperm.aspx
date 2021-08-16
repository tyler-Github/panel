<%@ Page Title="Group permissions tool" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="admingrpperm.aspx.cs" Inherits="UGCC_Sharp.admingrpperm_new" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">
            Choose a group
        </label>
        <div class="col-sm-10">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control"
                ToolTip="Select group to manage">
            </asp:DropDownList>
            <span class="help-block">This is the current list of groups.&nbsp; Go to the 
            <a href="admingrp.aspx">group management</a> page to create a new group.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
            Choose server
        </label>
        <div class="col-sm-10">
            <asp:DropDownList ID="listbox1" runat="server" AutoPostBack="True"
                OnSelectedIndexChanged="listbox1_SelectedIndexChanged" CssClass="form-control" ToolTip="Select server to manage permissions">
            </asp:DropDownList>
            <span class="help-block">Select a server that you want to manage permissions for.&nbsp; <span class="badge">*</span> = A server that already has permissions assigned.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Group members
        </label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtUsers" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
            <span class="help-block">List of current members in this group, visit the group management page to edit the user list.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Group description
        </label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtDesc" Enabled="false" CssClass="form-control" runat="server"></asp:TextBox>
            <span class="help-block">Description for this group.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Permissions to grant group for selected server
        </label>
        <div class="col-sm-10">
            <table id="Table1" class="table table-responsive table-bordered">
                <tr>
                    <td>
                        <div class="checkbox">
                        <label>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="Start"></asp:CheckBox>
                        </label>
                        </div>
                    </td>
                    <td>
                        <div class="checkbox">
                        <label>
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Update"></asp:CheckBox>
                        </label>
                        </div>
                    </td>
                    <td>
                        <div class="checkbox">
                        <label><asp:CheckBox ID="CheckBox7" runat="server" Text="View Notes"></asp:CheckBox></label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="checkbox">
                            <label><asp:CheckBox ID="CheckBox2" runat="server" Text="Stop"></asp:CheckBox></label>
                        </div>
                    </td>
                    <td>
                        <div class="checkbox">
                        <label><asp:CheckBox ID="CheckBox5" runat="server" Text="Extra Cmd"></asp:CheckBox></label>
                        </div>
                    </td>
                    <td>
                        <div class="checkbox">
                        <label><asp:CheckBox ID="CheckBox8" runat="server" Text="Modify Restart Schedule" /></label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="checkbox">
                            <label><asp:CheckBox ID="CheckBox3" runat="server" Text="Edit Commandline/Variables"></asp:CheckBox></label>
                        </div>
                    </td>
                    <td>
                        <div class="checkbox">
                        <label><asp:CheckBox ID="CheckBox6" runat="server" Text="File Tool"></asp:CheckBox></label>
                        </div>
                    </td>
                    <td>
                        
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click"
                                Text="Select All" />
                            &nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click"
                                Text="Clear" />
                        
                    </td>
                </tr>
            </table>
            
        </div>
    </div>
    </div>


        <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" 
            onclick="Button3_Click" Text="Save" />
</asp:Content>
