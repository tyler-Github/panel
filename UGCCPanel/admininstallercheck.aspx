<%@ Page Title="" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="admininstallercheck.aspx.cs" Inherits="UGCC_Sharp.admininstaller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    This tools checks various things to ensure you and the auto installer will be 
    happy.  If any settings need to be modified please visit the <a href="adminsrvdef.aspx">Server Definitions Page</a>.<br />
    <br />
    <asp:DropDownList ID="ddlSdefid" runat="server" AutoPostBack="True" 
        CssClass="form-control">
    </asp:DropDownList>
    <br />
    <br />
    <asp:TextBox ID="txtToolStatus" runat="server" Height="407px" 
        TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
    </asp:Content>
