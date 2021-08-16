<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UGCC_Sharp.defaultnew" Title="Login" meta:resourcekey="PageTitle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
               
                <!-- #Include File="Header.inc" -->
              
                <br />

              <div class="col-md-4 col-md-offset-4 col-xs-offset-2 col-xs-8 ">
                  <div id="loginpanel" class="panel panel-default">

                      <div class="panel-body">
                  <asp:MultiView ID="Panel1" runat="server" ActiveViewIndex="0">

                      <asp:View ID="View1" runat="server">
                          <div class="input-group">
                          <span class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
                              <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TabIndex="1"
                              placeholder="username" autocomplete="username" typerequired></asp:TextBox>
                          </div>
                          <div class="input-group">
                              <span class="input-group-addon"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
                          <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"
                              TabIndex="2" TextMode="Password" placeholder="password" autocomplete="password" required></asp:TextBox>
                              </div>


                          <div class="form-group">
                              <div class="checkbox">
                                  <label>
                                      <asp:CheckBox ID="chkPw" runat="server" TabIndex="5" />
                                      <asp:Localize ID="Localize1" meta:resourcekey="chkPw" runat="server"></asp:Localize>
                                  </label>
                              </div>
                          </div>
                      </asp:View>
                      <asp:View ID="View2" runat="server">
                          <asp:TextBox ID="txtTfa" runat="server" CssClass="form-control" EnableViewState="False"
                              TabIndex="3" placeholder="tfa pin"></asp:TextBox>
                          <div class="form-group">
                              <div class="checkbox">
                                  <label>
                                      <asp:CheckBox ID="chkTFA" runat="server" TabIndex="5" />
                                      <asp:Localize ID="Localize2" meta:resourcekey="chkTfa" runat="server"></asp:Localize>
                                  </label>
                              </div>
                          </div>
                      </asp:View>
                  </asp:MultiView>
            

                <asp:Button ID="Button1" runat="server"
                    onclick="Button1_Click" Text="Login" TabIndex="4" meta:resourcekey="Button1" 
                                    CssClass="btn btn-primary btn-lg btn-block" />
              </div>
                </div>
               </div>
                <div class=container>
                <div class=row></div>
                <div class=row style="margin-top:30px">
   
                                <asp:Label ID="lblStatus" runat="server" Width="100%" CssClass="alert alert-danger" 
                Visible="False"></asp:Label>
                </div>
                </div>
    <div id="spnLogin" runat="server"></div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    </asp:Content>

