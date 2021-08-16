<%@ Page Title="" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="chivrcon.aspx.cs" Inherits="UGCC_Sharp.chivrcon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="js/ugcc.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('textarea').bind("change", scrollBottom());

        });

    </script>
    <div class="form-group form-inline">
        Managing:&nbsp;
    <asp:Label ID="lblRealRcon" runat="server" Visible="False"></asp:Label><asp:Label ID="Label2"
        runat="server" Text="Label"></asp:Label><br />
        RCON Password:&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    <asp:TextBox ID="TextBox3" runat="server" Width="99%" CssClass="form-control disabled"
        Height="261px" ReadOnly="True" TextMode="MultiLine" Style="font-family: monospace" ViewStateMode="Enabled"></asp:TextBox>
    <br />
    <br />

    <div class="input-group">
        <asp:TextBox ID="TextBox2" runat="server"
            EnableViewState="False" CssClass="form-control"></asp:TextBox>
        <span class="input-group-btn">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                Text="Send Command" CssClass="btn btn-primary" />
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Help
            </button>
        </span>
    </div>
    <!-- /input-group -->

    <div class="form-group form-inline">
        &nbsp;
   
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Chivalry RCON Commands</h4>
                </div>
                <div class="modal-body">
                    <table class="table table-striped">
                        <tr>
                        <th>Command</th><th>Description</th>
                        </tr>
                        <tr>
                            <td>/say_all *message*</td>
                            <td>Sends message to all users</td>
                        </tr>
                        <tr>
                            <td>/say_all_big *message*
                            </td>
                            <td>Sends message to all users in a big font</td>
                        </tr>
                        <tr>
                            <td>/say *steamid* *message*
                            </td>
                            <td>Send message to steamid</td>
                        </tr>
                        <tr>
                            <td>/maps</td>
                            <td>Map list</td>
                        </tr>
                        <tr>
                            <td>/map *map*</td>
                            <td>Switch to map</td>
                        </tr>
                        <tr>
                            <td>/rotate_map</td>
                            <td>Switch to next map in cycle</td>
                        </tr>
                        <tr>
                            <td>/kick *steamid* *reason*
                            </td>
                            <td>Kick player with reason message</td>
                        </tr>
                        <tr>
                            <td>/temp_ban *steamid* *reason*
                            </td>
                            <td>Temporary ban a player for one hour</td>
                        </tr>
                        <tr>
                            <td>/ban *steamid* *reason*
                            </td>
                            <td>Ban a player with reason</td>
                        </tr>
                        <tr>
                            <td>/unban *steamid* *reason*
                            </td>
                            <td>Unban a player</td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    
                </div>
            </div>
        </div>
    </div>
    <asp:Panel ID="PanelConsole" runat="server" Visible="False">
        <p>Console output</p>
        <asp:TextBox ID="txtConsole" runat="server" CssClass="form-control disabled" ReadOnly="true" TextMode="MultiLine" Style="font-family: monospace" Width="99%" Height="261px"></asp:TextBox>
    </asp:Panel>
</asp:Content>
