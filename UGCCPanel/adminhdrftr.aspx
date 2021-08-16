<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminhdrftr.aspx.cs" Inherits="UGCC_Sharp.adminhdrftr" ValidateRequest="false" Title="Edit Site Header/Footer" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="panel panel-default">
  
  <div class="panel-body">Here you may make various customizations to the panel.  This includes the theme, menu, footer, text on the login page.  After saving changes you will need to reload the page to see the updates.
        </div>

</div>
    <div class="panel panel-default">
        <div class="panel-heading">
            Default theme
        </div>
        <div class="panel-body">
            <div class="input-group">
                <asp:DropDownList   ID="ddlThemes" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlThemes_SelectedIndexChanged">
                </asp:DropDownList>
                
                    <div class="input-group-btn">
                <asp:Button ID="btnDefaultTheme" runat="server" CssClass="btn btn-default" OnClick="btnDefaultTheme_Click" Text="Set as default" />
                <asp:Button ID="btnApplyTheme" runat="server" CssClass="btn btn-primary" OnClick="btnApplyTheme_Click" Text="Apply to all users" />
                <asp:Button ID="btnPreview" runat="server" CssClass="btn btn-info" OnClick="btnPreview_Click" Text="Preview" />
                    </div>
                      
            </div>
                <br />
                <asp:CheckBox ID="chkThemes" runat="server" AutoPostBack="True" OnCheckedChanged="chkThemes_CheckedChanged"  Text="Do not allow users to choose their own theme" />
            
        </div>

    </div>
    Navigation menu (Used to generate the navigation menu, the file is located in 
    app_data/menu.txt)<asp:TextBox ID="txtMenu" runat="server" 
        CssClass="form-control" Height="280px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    Header (Disaplayed on the login page):<br />
    <asp:TextBox ID="txtHdr" runat="server" CssClass="mce" Height="280px" TextMode="MultiLine"
        Width="100%"></asp:TextBox><br />
    <br />
    Footer:<br />
    <asp:TextBox ID="txtFtr" runat="server" CssClass="mce" Height="280px" TextMode="MultiLine"
        Width="100%"></asp:TextBox><br />
    <br />
    Login.txt:&nbsp; (Contains additional HTML displayed at the bottom of the login page only)<br />
    <asp:TextBox ID="txtLogin" runat="server" CssClass="mce" Height="280px" TextMode="MultiLine"
        Width="100%"></asp:TextBox><br />
    <br />
    <asp:Button ID="btnSave2" runat="server" CssClass="btn btn-primary" 
        onclick="btnSave2_Click" Text="Save" />
</asp:Content>
