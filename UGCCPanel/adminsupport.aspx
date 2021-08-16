<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminsupport.aspx.cs" Inherits="UGCC_Sharp.adminsupport" Title="Support Tool" ValidateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>This will attempt to gather logs from remotes and local panel into <span id="spnPath" runat="server"></span> </p>
    <p>Note:  all monitors must be running in order for remote logs to be shipped to web panel host.</p>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click"
        Text="Get logs" />
    <br /><br />
    <div class="panel panel-default">
        <div class="panel-heading">
            Results
            </div>
        <div class="panel-body">
            <div id="sqlout" runat="server" class="divresults">
            </div>
        </div>
    </div>
   
</asp:Content>
