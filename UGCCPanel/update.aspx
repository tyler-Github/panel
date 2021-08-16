<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="UGCC_Sharp.updatenew" Title="Update Center" ValidateRequest="false" meta:resourcekey="PageResource1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:Panel id="note" runat="server" visible="False" meta:resourcekey="noteResource1">
    <div class="panel panel-default">
  <div class="panel-heading">
      <asp:Localize ID="Localize1" runat="server" Text="About the update tool" meta:resourcekey="Localize1Resource1"></asp:Localize></div>
  <div class="panel-body" id="updatePnl" runat="server">
        </div>
</div>
        </asp:Panel>
    
<p>
    
				<asp:TextBox id="TextBox1" runat="server" Height="344px" 
                    TextMode="MultiLine" EnableViewState="False" 
                    ReadOnly="True" CssClass="form-control" meta:resourcekey="TextBox1Resource1"  ></asp:TextBox></p>
			<div id="spnStatus" runat="server"></div>
			<div class="form-group">
				<asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" 
                    onclick="btnUpdate_Click" Text="Update" meta:resourcekey="btnUpdateResource1" />
                <asp:Button ID="btnRefresh" runat="server" CssClass="btn btn-primary" 
                    onclick="btnRefresh_Click" Text="Refresh" meta:resourcekey="btnRefreshResource1" />
                <asp:Button ID="btnKill" runat="server" CssClass="btn btn-primary" 
                    onclick="btnKill_Click" Text="Kill Update" Visible="False" meta:resourcekey="btnKillResource1" />
                <asp:Button ID="btnStop" runat="server" CssClass="btn btn-warning"
                    OnClick="btnStop_Click" Text="Stop Server" Visible="False" meta:resourcekey="btnStopResource1" />
                <asp:Button ID="btnReturn" runat="server" CssClass="btn btn-default"
                    OnClick="btnReturn_Click" Text="Return" Visible="True"  />
                <br />
                <span class="checkbox checkbox-inline text-center">
                <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" type="checkbox"
                    Text="Restart server after update" meta:resourcekey="CheckBox1Resource1" />
                </span>
                    </div>
                   <script type="text/javascript" src="js/ugcc.js"></script>
                   <script type="text/javascript">
                       $(document).ready(function () {
                           $('textarea').bind("change", scrollBottom());

                       });

                   </script>


</asp:Content>
