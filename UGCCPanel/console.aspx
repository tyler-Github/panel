<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="console.aspx.cs" Inherits="UGCC_Sharp.console" Title="Console Viewer" ValidateRequest="false" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"
        Wrap="False" Height="566px" CssClass="form-control" BackColor="Black" ForeColor="#66FF33" ReadOnly="True" Width="100%" Style="font-family: monospace" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
    <br />
    <div>
        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary"
            OnClick="btnSave_Click" Text="Refresh" meta:resourcekey="btnSaveResource1" />
        &nbsp;
							<asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default"
                                OnClick="btnCancel_Click" Text="Cancel" meta:resourcekey="btnCancelResource1" />
    </div>

    <div id="lblErr" runat="server"></div>
    <div>
        <span class="checkbox checkbox-inline text-center">
            
                <asp:CheckBox ID="chkRefresh" runat="server" AutoPostBack="True" OnCheckedChanged="chkRefresh_CheckedChanged" type="checkbox" Text="Auto refresh" />
        </span>
    </div>
    <script type="text/javascript" src="js/ugcc.js"></script>
    <script type="text/javascript">
                       $(document).ready(function () {
                           $('textarea').bind("change", scrollBottom());

                       });

    </script>

</asp:Content>
