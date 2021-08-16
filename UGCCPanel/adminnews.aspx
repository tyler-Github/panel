<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminnews.aspx.cs" Inherits="UGCC_Sharp.AdminNews" Title="News Management" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">
        News items
        </label>
        <div class="col-sm-10">
            <asp:DropDownList ID="ddlNews" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNews_SelectedIndexChanged"
                CssClass="form-control">
            </asp:DropDownList>
            <span class="help-block">Existing news items.  To create a new news item see the bottom of the page.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
        Subject
        </label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" ToolTip="Enter the news item subject."></asp:TextBox>
            <span class="help-block">Subject of selected news item.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
        News text
        </label>
        <div class="col-sm-10">
            <asp:TextBox ID="txtMessage" runat="server" CssClass="mce" Height="274px" TextMode="MultiLine"
                ToolTip="News item message." Width="100%"></asp:TextBox>
            <span class="help-block">The news goes here!</span>
        </div>
    </div>
</div>

    <asp:Label ID="lblError" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" 
        onclick="btnSave_Click" />
    &nbsp;<asp:Button ID="btnDel" runat="server" CssClass="btn btn-primary" Text="Delete" 
        onclick="btnDel_Click" />
    &nbsp;<asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" 
        Text="Email to Users" onclick="Button3_Click" />

    <hr />

    To create a new news item, enter the desired subject title (can be changed later)
    and click new.<br />
    <div class="input-group">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <span class="input-group-btn">
            <asp:Button ID="btnNew" runat="server" CssClass="btn btn-primary" Text="Create" OnClick="btnNew_Click" placeholder="New news subject" />
            </span>
    </div>
</asp:Content>
