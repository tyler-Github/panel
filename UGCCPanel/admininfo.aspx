<%@ Page Title="" Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="admininfo.aspx.cs" Inherits="UGCC_Sharp.admininfo_new" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
           Configuration Variables</div>
        <div class="panel-body">
            <div id="span1" runat="server"></div>
        </div>
    </div>

</div>
<div class="form-horizontal">
    <div class="form-group">
        <label class="col-sm-2 control-label">
            Generate license request file
        </label>
        <div class="col-sm-10">
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click"
                Text="Generate license request file" />
            <asp:Label ID="lblLicReq" runat="server" CssClass="lblError" EnableViewState="False"></asp:Label>
            <span class="help-block">To get all of UGCC&#39;s 
                benefits you need to obtain a license.&nbsp; For a list of features available to 
                you with a license please see<a 
                    href="http://brainless.us/forum/viewtopic.php?f=21&amp;t=263" target="_blank"> 
                this page</a>.&nbsp; Clicking this button will create a .licr file in UGCC's configured log directory 
                (see variable above).&nbsp; If you have
                        access to the
                <a href= "http://www.brainless.us/customers" target="_blank">license portal</a>, you can use this file to generate licenses for this
                        machine.&nbsp; If you don't have access to the license portal you need to either
                        <a href="http://www.brainless.us/products.aspx" target="_blank">purchase a license</a> or you can request a demo license 
                in our forums.&nbsp; To request a demo license please
                        contact us via 
                <a href="http://www.brainless.us/forum" target="_blank">our forums</a>.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
            View license request file
        </label>
        <div class="col-sm-10">
            <asp:Button ID="btnViewLicr" runat="server" CssClass="btn btn-primary" OnClick="btnViewLicr_Click"
                Text="View license request file" />
            <asp:Label ID="lblViewLicrErr" runat="server" CssClass="lblError" EnableViewState="False"></asp:Label>
            <span class="help-block">
                If you've created your license request file, you can view it here.
            </span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
            View/Update license file
        </label>
        <div class="col-sm-10">
            <asp:Button ID="btnViewLic" runat="server" CssClass="btn btn-primary" OnClick="btnViewLic_Click"
                Text="View/Update license file" />
            <asp:Label ID="lblViewLicErr" runat="server" CssClass="lblError" EnableViewState="False"></asp:Label>
            <span class="help-block">You can view and udpate your license file here.&nbsp; If you update your license here, you may need to restart the webserver.</span></div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
            View log file
        </label>
        <div class="col-sm-10">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click"
                Text="View log" />
            <span class="help-block">View the panel's log file (ugccweb.log).&nbsp; Also consider the 
            <a href="adminlog.aspx">log tool</a>, it includes all logs from the web panel and monitors.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">Update check
        </label>
        <div class="col-sm-10">
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" OnClick="Button3_Click"
                Text="Update Check" /> 
            <asp:Label ID="lblUpdate" runat="server" CssClass="lblError" EnableViewState="False"></asp:Label>
            <span class="help-block">Check for updates.&nbsp; This also clears the update message that sticks around sometimes even after you've upgraded.</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">
            Exception test
        </label>
        <div class="col-sm-10">
            <asp:Button ID="btnException" runat="server" CssClass="btn btn-primary"
                Text="Throw exception" OnClick="btnException_Click" />
            
            <span class="help-block">Generates an exception to ensure crash messages are reporting useful information.</span>
        </div>
    </div>
</div>
</asp:Content>
