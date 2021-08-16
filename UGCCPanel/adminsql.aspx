<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminsql.aspx.cs" Inherits="UGCC_Sharp.adminsql" Title="SQL Tool" ValidateRequest="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">SQL Query
        </label>
        <div class="col-sm-10">
            <div class="input-group">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <span class="input-group-btn">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click"
                        Text="Execute" />
                        </span>
            </div>
            
        </div>
    </div>
</div>
  
    <div class="panel panel-default">
        <div class="panel-heading">
            Query Results
            </div>
        <div class="panel-body">
            <div id="sqlout" runat="server" class="divresults">
            </div>
        </div>
    </div>
   
</asp:Content>
