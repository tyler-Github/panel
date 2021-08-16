<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="file.aspx.cs" Inherits="UGCC_Sharp.filenew" Title="File Editor" ValidateRequest="false" EnableViewState="true" ViewStateEncryptionMode="Always" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div id="Label1" runat="server" class="panel-title"></div>
        </div>
        <div class="panel-body">
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"
                Wrap="False" Height="400px" CssClass="form-control"></asp:TextBox>
            <br />
            <div>
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary"
                    OnClick="btnSave_Click" Text="Save" />
                &nbsp;
							<asp:Button ID="btnCancel" runat="server" CssClass="btn btn-primary"
                                OnClick="btnCancel_Click" Text="Cancel" />
            </div>
            <div id="lblErr" runat="server"></div>
        </div>
    </div>


</asp:Content>
