<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="extra.aspx.cs" Inherits="UGCC_Sharp.extranew" Title="Extra Functions/Options" ValidateRequest="false" meta:resourcekey="PageResource1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:Panel id="note" runat="server" visible="False" meta:resourcekey="noteResource1">
    <div class="panel panel-default"  runat="server" >
  <div class="panel-heading">
      <asp:Localize ID="Localize1" runat="server" Text="About the extra tool" meta:resourcekey="Localize1Resource1"></asp:Localize></div>
  <div class="panel-body" id="updatePnl" runat="server">
        </div>
</div>
        </asp:Panel>
    
<asp:TextBox id="TextBox1" runat="server" CssClass="form-control" 
        TextMode="MultiLine" Height="344px"
					Width="100%" meta:resourcekey="TextBox1Resource1" EnableViewState="False" ReadOnly="True"></asp:TextBox>&nbsp;
			<div id="spnStatus" runat="server"></div>
    <asp:ListBox ID="ddlExtra" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="ddlExtra_SelectedIndexChanged1"></asp:ListBox>
			   
      <br />
                    <asp:Button ID="btnLaunch" runat="server" CssClass="btn btn-primary"
                        OnClick="Button2_Click" Text="Launch" meta:resourcekey="btnLaunchResource1" />
                    <asp:Button ID="btnReturn" runat="server" Text="Return" CssClass="btn btn-default" OnClick="btnReturn_Click" />

    <asp:Button ID="btnRefresh" runat="server" CssClass="btn btn-primary" 
                    onclick="btnRefresh_Click" Text="Refresh" Visible="False" meta:resourcekey="btnRefreshResource1" />
    <asp:Button ID="btnKill" runat="server" Text="Kill" CssClass="btn btn-warning" Visible="false" OnClick="btnKill_Click" />
                    <br />
    <br />
				<div id="desc" runat=server class="config2"></div>
                
    <script type="text/javascript" src="js/ugcc.js"></script>
                   <script type="text/javascript">
                       $(document).ready(function () {
                           $('textarea').bind("change", scrollBottom());
                       });
                   </script>
</asp:Content>
