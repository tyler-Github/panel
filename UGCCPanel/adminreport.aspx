<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminreport.aspx.cs" Inherits="UGCC_Sharp.adminreport" Title="Report Page" ValidateRequest="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </div>
    <div class="container-fluid">
        <div class="form-inline">
            <div class="form-group">
               
                <asp:DropDownList ID="ddlReport" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlReport_SelectedIndexChanged"
                    CssClass="form-control">
                </asp:DropDownList><asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Refresh" OnClick="Button1_Click" />
            </div>
        </div>
        <div class="row">
            <div id="div1" runat="server"></div>
        </div>
    </div>
</asp:Content>
