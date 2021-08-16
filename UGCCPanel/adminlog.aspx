<%@ Page Title="Log Viewer Tool" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminlog.aspx.cs" Inherits="UGCC_Sharp.adminlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-6 col-md-2">
            <asp:DropDownList ID="ddlServers" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
        <div class="col-xs-6 col-md-2">
            <asp:DropDownList ID="ddlUser" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
        <div class="col-xs-6 col-md-2">
            <asp:DropDownList ID="ddlServerDef" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
        <div class="col-xs-6 col-md-2">
            <asp:DropDownList ID="ddlSource" runat="server" CssClass="form-control">
                <asp:ListItem Value="0">Filter By Source</asp:ListItem>
                <asp:ListItem Value="www">Web Panel</asp:ListItem>
                <asp:ListItem Value="monitor">Monitor</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-xs-6 col-md-2">
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search text"></asp:TextBox>
        </div>
        <div class="col-xs-6 col-md-2">
            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary btn-sm" OnClick="btnUpdate_Click"
                Text="Apply filters" />
        </div>

    </div>
    <ul class="pager">
        <li class="previous">
            <asp:LinkButton ID="hrefPrev" runat="server" OnClick="hrefPrev_Click"><span aria-hidden="true">&larr;</span> Newer</asp:LinkButton></li>
        <span id="pagecnt" class="page-link" runat="server" visible="true">Page 1</span>
        <li class="next">
            <asp:LinkButton ID="hrefNext" runat="server" OnClick="hrefNext_Click">Older <span aria-hidden="true">&rarr;</span></asp:LinkButton></li>
    </ul>


<span id=logdata runat=server></span>
    </div>
</asp:Content>
