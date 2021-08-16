<%@ Page Title="" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="adminserverops.aspx.cs" Inherits="UGCC_Sharp.adminserverops" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            About the server operations tool</div>
        <div class="panel-body">
            This tool allows you perform any various action on multiple servers that match your specifications
            easily and quickly.
        </div>
    </div>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Operation
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlOp" runat="server" CssClass="form-control" Style="text-align: right">
                    <asp:ListItem>Start</asp:ListItem>
                    <asp:ListItem>Stop</asp:ListItem>
                    <asp:ListItem Value="Restart">Restart Running Servers</asp:ListItem>
                    <asp:ListItem Value="Disable">Disable Server</asp:ListItem>
                    <asp:ListItem Value="Enable">Enable Server</asp:ListItem>
                    <asp:ListItem Value="Update">Update Server</asp:ListItem>
                </asp:DropDownList>
                <span class="help-block">What to do with the servers that match this query.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
                Server definition
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlSdef" runat="server" CssClass="form-control">
                </asp:DropDownList>
                <span class="help-block">Only perform the operation on servers on this physical server.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">
            Server type
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlGS" runat="server" CssClass="form-control">
                    <asp:ListItem Value="0">All</asp:ListItem>
                    <asp:ListItem Value="general">General</asp:ListItem>
                    <asp:ListItem Value="7dtd">7 Days To Die</asp:ListItem>
                    <asp:ListItem Value="av">AlterVerse</asp:ListItem>
                    <asp:ListItem Value="aa2">America's Army 2</asp:ListItem>
                    <asp:ListItem Value="aa3">America's Army 3</asp:ListItem>
                    <asp:ListItem Value="aff">Angels Fall First</asp:ListItem>
                    <asp:ListItem Value="ark">ARK:  Survival Evolved</asp:ListItem>
                    <asp:ListItem Value="arma">ArmA</asp:ListItem>
                    <asp:ListItem Value="arma2">ArmA 2</asp:ListItem>
                    <asp:ListItem Value="arma3">ArmA 3</asp:ListItem>
                    <asp:ListItem Value="bf2">Battlefield 2</asp:ListItem>
                    <asp:ListItem Value="bfbc2">Battlefield: Bad Company 2</asp:ListItem>
                    <asp:ListItem Value="breach">Breach</asp:ListItem>
                    <asp:ListItem Value="brink">Brink</asp:ListItem>
                    <asp:ListItem Value="chiv">Chivalry</asp:ListItem>
                    <asp:ListItem Value="cod4">CoD Series</asp:ListItem>
                    <asp:ListItem Value="codmw3">CoD MW3</asp:ListItem>
                    <asp:ListItem Value="conan">Conan Exiles</asp:ListItem>
                    <asp:ListItem Value="cntgn">Contagion</asp:ListItem>
                    <asp:ListItem Value="cs">Counter-Strike</asp:ListItem>
                    <asp:ListItem Value="csgo">Counter-Strike: Global Offensive</asp:ListItem>
                    <asp:ListItem Value="css">Counter-Strike: Source</asp:ListItem>
                    <asp:ListItem Value="crysis">Crysis</asp:ListItem>
                    <asp:ListItem Value="dal">Dark and Light</asp:ListItem>
                    <asp:ListItem Value="dods">Day of Defeat: Source</asp:ListItem>
                    <asp:ListItem Value="doi">Day of Infamy</asp:ListItem>
                    <asp:ListItem Value="dab">Double Action: Boogaloo</asp:ListItem>
                    <asp:ListItem Value="doom3">Doom 3</asp:ListItem>
                    <asp:ListItem Value="eden">Eden Star :: Destroy - Build - Protect</asp:ListItem>
                    <asp:ListItem Value="eye">E.Y.E: Divine Cybermancy</asp:ListItem>
                    <asp:ListItem Value="farcry">Farcry</asp:ListItem>
                    <asp:ListItem Value="gamespy">Gamespy Protocol</asp:ListItem>
                    <asp:ListItem Value="gamespy2">Gamespy 2 Protocol</asp:ListItem>
                    <asp:ListItem Value="gamespy3">Gamespy 3 Protocol</asp:ListItem>
                    <asp:ListItem Value="gmod">Gary's Mod</asp:ListItem>
                    <asp:ListItem Value="gmodgs">Gary's Mod w/Graceful Shutdown</asp:ListItem>
                    <asp:ListItem Value="halo">Halo</asp:ListItem>
                    <asp:ListItem Value="hl1">Half Life 1 (CS, DOD, HL:DM, etc)</asp:ListItem>
                    <asp:ListItem Value="oldhl1">Half Life 1 (Old Query)</asp:ListItem>
                    <asp:ListItem Value="hl2dm">Half Life 2: Deathmatch</asp:ListItem>
                    <asp:ListItem Value="hf">Homefront</asp:ListItem>
                    <asp:ListItem Value="insu">Insurgency</asp:ListItem>
                    <asp:ListItem Value="jc2">Just Cause 2: Multiplayer Mod</asp:ListItem>
                    <asp:ListItem Value="kf">Killing Floor</asp:ListItem>
                    <asp:ListItem Value="kf2">Killing Floor 2</asp:ListItem>
                    <asp:ListItem Value="dmp">KSP Dark Multiplayer</asp:ListItem>
                    <asp:ListItem Value="l4d1">Left 4 Dead</asp:ListItem>
                    <asp:ListItem Value="l4d2">Left 4 Dead 2</asp:ListItem>
                    <asp:ListItem Value="moh">Medal Of Honor</asp:ListItem>
                    <asp:ListItem Value="mc">Minecraft</asp:ListItem>
                    <asp:ListItem Value="mnc">Monday Night Combat</asp:ListItem>
                    <asp:ListItem Value="murmur">Murmur</asp:ListItem>
                    <asp:ListItem Value="murmur2">Murmur Ping Qry</asp:ListItem>
                    <asp:ListItem Value="mw3">MW3</asp:ListItem>
                    <asp:ListItem Value="heat">NASCAR Heat</asp:ListItem>
                    <asp:ListItem Value="ns2">Natural Selection 2</asp:ListItem>
                    <asp:ListItem Value="neotokyo">NeoTokyo</asp:ListItem>
                    <asp:ListItem Value="nexuiz">Nexuiz</asp:ListItem>
                    <asp:ListItem Value="nd">Nuclear Dawn</asp:ListItem>
                    <asp:ListItem Value="pmc">Pocket Minecraft</asp:ListItem>
                    <asp:ListItem Value="primalc">Primal Carnage</asp:ListItem>
                    <asp:ListItem Value="q2">Quake2 &amp; Compatibles</asp:ListItem>
                    <asp:ListItem Value="q3">Quake3 &amp; Compatibles</asp:ListItem>
                    <asp:ListItem Value="q4">Quake 4</asp:ListItem>
                    <asp:ListItem Value="ql">Quake Live</asp:ListItem>
                    <asp:ListItem Value="ravaged">Ravaged</asp:ListItem>
                    <asp:ListItem Value="reflex">Reflex</asp:ListItem>
                    <asp:ListItem Value="ro2">Red Orchestra 2</asp:ListItem>
                    <asp:ListItem Value="rust">Rust</asp:ListItem>
                    <asp:ListItem Value="risingstorm">Rising Storm</asp:ListItem>
                    <asp:ListItem Value="samp">San Andreas MP</asp:ListItem>
                    <asp:ListItem Value="savagel">Savage Lands</asp:ListItem>
                    <asp:ListItem Value="shatteredh">Shattered Horizon</asp:ListItem>
                    <asp:ListItem Value="sm">ShootMania</asp:ListItem>
                    <asp:ListItem Value="starbound">Starbound</asp:ListItem>
                    <asp:ListItem Value="hl2">Source Protocol</asp:ListItem>
                    <asp:ListItem Value="se">Space Engineers</asp:ListItem>
                    <asp:ListItem Value="squad">Squad</asp:ListItem>
                    <asp:ListItem Value="tf2">Team Fortress 2</asp:ListItem>
                    <asp:ListItem Value="tee">Teeworlds</asp:ListItem>
                    <asp:ListItem Value="ts2">TeamSpeak 2</asp:ListItem>
                    <asp:ListItem Value="ts3">TeamSpeak 3</asp:ListItem>
                    <asp:ListItem Value="toxikk">Toxikk</asp:ListItem>
                    <asp:ListItem Value="ut">Unreal Tournament</asp:ListItem>
                    <asp:ListItem Value="ut2kx">Unreal Tournament 200x</asp:ListItem>
                    <asp:ListItem Value="ut3">Unreal Tournament 3</asp:ListItem>
                    <asp:ListItem Value="vcmp">Vice City MP</asp:ListItem>
                    <asp:ListItem Value="vcmp4">Vice City MP 0.4</asp:ListItem>
                    <asp:ListItem Value="vent">Ventrilo</asp:ListItem>
                    <asp:ListItem Value="zan">Zandronum</asp:ListItem>
                </asp:DropDownList>
                <span class="help-block">Only perform the operation on this type of server.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">User
            </label>
            <div class="col-sm-10">
                <asp:DropDownList ID="ddlUsers" runat="server" CssClass="form-control">
                </asp:DropDownList>
                <span class="help-block">Only perform the operation on servers for this user.</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Test
            </label>
            <div class="col-sm-10">
                <div class="input-group">
                    <span class="input-group-btn">
                        <asp:Button ID="btnTest" runat="server" CssClass="btn btn-primary" Text="Query" OnClick="btnTest_Click" />
                    </span>
                    <asp:TextBox ID="txtQuery" runat="server" CssClass="form-control" ReadOnly="True"
                        EnableViewState="False"></asp:TextBox>
                </div>
                <!-- /input-group -->
                <span class="help-block">See which server IDs are returned, these servers will be the ones the selected operation is performed on.</span>
            </div>
        </div>
    </div>

        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" 
            onclick="Button1_Click" />
            <br /><br />
        <asp:Label ID="lblError" runat="server"></asp:Label>

</asp:Content>
