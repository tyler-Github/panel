<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="chngpw.aspx.cs" Inherits="UGCC_Sharp.chngpw_n" Title="My Profile" ValidateRequest="false" meta:resourcekey="PageResource1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default" runat="server" id="divUserTheme">
        <div class="panel-heading">
            Theme
        </div>
        <div class="panel-body">
            <div class="input-group">
                <asp:DropDownList ID="ddlThemes" runat="server" CssClass="form-control">
                </asp:DropDownList>

                <div class="input-group-btn">
                    <asp:Button ID="btnPreview" runat="server" CssClass="btn btn-info" Text="Preview" OnClick="btnPreview_Click" />
                </div>
            </div>
        </div>

    </div>
    <div class="panel panel-default">
  <div class="panel-body">
    <div class="form-horizontal">
  <div class="form-group">
    <label class="col-sm-2 control-label"><asp:Localize ID="Localize1" runat="server" Text="Current email address:" 
            meta:resourcekey="Localize1Resource1"></asp:Localize></label>
    <div class="col-sm-10">
      <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ReadOnly="True" 
            meta:resourcekey="txtEmailResource1"></asp:TextBox>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">
    <asp:Localize ID="Localize2" runat="server" 
            Text="New email address (leave blank to keep current email)" 
            meta:resourcekey="Localize2Resource1"></asp:Localize>
    </label>
    <div class="col-sm-10">
<asp:TextBox ID="txtNewEmail" runat="server" CssClass="form-control" 
            CausesValidation="True" meta:resourcekey="txtNewEmailResource1"></asp:TextBox>
    </div>
  </div>
   <p style="text-align: center">
        <span>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ControlToValidate="txtNewEmail"
                ErrorMessage="RegularExpressionValidator" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            meta:resourcekey="RegularExpressionValidator1Resource1" 
            Text="Not a valid email address"></asp:RegularExpressionValidator></span></p>
  </div>
  </div>
  </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        <asp:Localize ID="Localize7" runat="server" Text="Two factor authentication:"
                            meta:resourcekey="Localize7Resource1"></asp:Localize></label>
                    <div class="col-sm-10">
                        <a href="tfa.aspx">Manage TFA</a>
                    </div>
                </div>
                </div>
            </div>
        </div>

      <div class="panel panel-default">
  <div class="panel-body">
  <p><asp:Localize ID="Localize3" runat="server" 
            
            Text="To change your password, enter your current password and your new password." 
            meta:resourcekey="Localize3Resource1"></asp:Localize></p>
    <div class="form-horizontal">
  <div class="form-group">
    <label class="col-sm-2 control-label"> <asp:Localize ID="Localize4" runat="server" Text="Current password:" 
            meta:resourcekey="Localize4Resource1"></asp:Localize></label>
    <div class="col-sm-10">
<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password"
            ToolTip="Enter current password" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
    </div>
  </div>

    <div class="form-group">
    <label class="col-sm-2 control-label"><asp:Localize ID="Localize5" runat="server" Text="New password:" 
            meta:resourcekey="Localize5Resource1"></asp:Localize></label>
    <div class="col-sm-10">
 <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"
            ToolTip="Enter new password" meta:resourcekey="TextBox2Resource1"></asp:TextBox>
    </div>
  </div>

  
    <div class="form-group">
    <label class="col-sm-2 control-label"><asp:Localize ID="Localize6" runat="server" Text="Verify password:" 
            meta:resourcekey="Localize6Resource1"></asp:Localize></label>
    <div class="col-sm-10">
 <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"
            ToolTip="Confirm new password" meta:resourcekey="TextBox3Resource1"></asp:TextBox>
    </div>
  </div>

  </div>
  </div>
  </div>
          <div class="panel panel-default">
  <div class="panel-body">
      <div class="checkbox">
          <label>
              <asp:CheckBox ID="chkDisableQry" runat="server" meta:resourcekey="chkDisableQryResource1" />
          </label>
      </div>

  </div>
  </div>
  
     <div id="lblError" runat="server"></div>
    <br />
    <br />
        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" 
            onclick="btnSave_Click" Text="Save" meta:resourcekey="btnSaveResource1" />
</asp:Content>
