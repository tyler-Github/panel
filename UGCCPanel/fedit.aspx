<%@ Page Language="C#" MasterPageFile="~/UGCCNG.Master" AutoEventWireup="true" CodeBehind="fedit.aspx.cs" Inherits="UGCC_Sharp.feditng" Title="File Tool" ValidateRequest="false" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">

        <div class="col-xs-12">
            <div id="divError" runat="server">
            </div>
        </div>
    </div>
  <div class="row">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
                <ul class="nav navbar-nav">
                   
                        <ol style="float: left; margin: 7px 10px" runat="server" class="breadcrumb">
                            <asp:PlaceHolder ID="plcBC" runat="server"></asp:PlaceHolder>
                        </ol>
                    </li>
  
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <p class="navbar-text" id="pServerName" runat="server">Server name here</p>

                    
                    <li class="dropdown">
                       
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Options <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li>
                                <asp:LinkButton ID="lnkRefresh" ToolTip="Refresh" runat="server" OnClick="lnkRefresh_Click" meta:resourcekey="lnkRefreshResource1"><span class="glyphicon glyphicon-refresh"></span></asp:LinkButton></li>
                            <li>
                            <li role="separator" class="divider"></li>
                            <li><a data-toggle="modal" data-target="#myModal1" style="cursor:pointer">
                                <asp:Localize runat="server" ID="UploadFile" Text="Upload file" meta:resourcekey="UploadFileResource1"></asp:Localize></a></li>
                            <li><a data-toggle="modal" data-target="#myModalnew" style="cursor: pointer">
                                <asp:Localize runat="server" ID="lclCreateFile" Text="Create file" meta:resourcekey="lclCreateFileResource1"></asp:Localize></a></li>
                            <li role="separator" class="divider"></li>
                            <li><a data-toggle="modal" data-target="#myModal" style="cursor: pointer" >
                                <asp:Localize runat="server" ID="lclCreateFolder" Text="Create folder" meta:resourcekey="lclCreateFolderResource1" ></asp:Localize></a></li>
                            <li>
                                <asp:LinkButton ID="lnkCmpDir" runat="server" OnClick="btnCompressDir_Click" meta:resourcekey="lnkCmpDirResource1" Text="Compress current folder"></asp:LinkButton></li>
                            <li role="separator" class="divider"></li>
                            <li><asp:LinkButton ID="lbSortName" runat="server" OnClick="lbSortName_Click1" meta:resourcekey="lbSortNameResource1" Text="Sort by name"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="lbSortSize" runat="server" OnClick="lbSortSize_Click" meta:resourcekey="lbSortSizeResource1" Text="Sort by size"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="lbSortDate" runat="server" OnClick="lbSortDate_Click" meta:resourcekey="lbSortDateResource1" Text="Sort by date"></asp:LinkButton></li>
                            <li>
                                <asp:LinkButton ID="lbSortExt" runat="server" OnClick="lbSortExt_Click" meta:resourcekey="lbSortExtResource1" Text="Sort by extension"></asp:LinkButton></li>

                            <li role="separator" class="divider"></li>
                            <li><a runat="server" id="ftpLink" href="#">Open in FTP Client</a></li>
                        </ul>
                    </li>
                </ul>
        </div>
    </nav>
     
      
      
  <asp:PlaceHolder ID="plcOut" runat="server" ViewStateMode="Enabled"></asp:PlaceHolder>
    </div>
    
    <asp:Button ID="btnReturn" runat="server" Text="Return" CssClass="btn btn-default" OnClick="btnReturn_Click" />
    

    <br />


    <!-- Modal - Create directory-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Create Directory</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <asp:TextBox ID="txtFolder" runat="server" EnableViewState="False"
                            ToolTip="Specify folder name here" CssClass="form-control" placeholder="New directory name" meta:resourcekey="txtFolderResource1"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="btnNewDir" runat="server" CssClass="btn btn-primary"
                                OnClick="btnNewDir_Click" Text="Create Directory" meta:resourcekey="btnNewDirResource1" />
                        </span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!-- Modal - Upload -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel1">Upload File</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <input id="filMyFile" type="file" runat="server" name="filMyFile"
                            class="form-control" placeholder="Browse for a file to upload" />
                        <span class="input-group-btn">
                            <asp:Button ID="btnUpload" runat="server" CssClass="btn btn-primary"
                                OnClick="btnUpload_Click" Text="Upload" meta:resourcekey="btnUploadResource1" />
                        </span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!-- Modal - Rename File-->
    <div class="modal fade" id="myModalren" tabindex="-1" role="dialog" aria-labelledby="myModalLabelren">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelren">Rename File</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <asp:TextBox ID="txtRename" runat="server" EnableViewState="False"
                            ToolTip="Enter new file name" CssClass="form-control" placeholder="New file name" meta:resourcekey="txtRenameResource1"></asp:TextBox>
                        <asp:TextBox ID="txtOrigName" runat="server" Visible="False" meta:resourcekey="txtOrigNameResource1"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="btnRename" runat="server" CssClass="btn btn-primary"
                                OnClick="btnRename_Click" Text="Rename file" meta:resourcekey="btnRenameResource2" />
                        </span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!-- Modal - Rename Dir-->
    <div class="modal fade" id="myModalrendir" tabindex="-1" role="dialog" aria-labelledby="myModalLabelrendir">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelrendir">Rename Directory</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <asp:TextBox ID="txtRenameFolder" runat="server" EnableViewState="False"
                            ToolTip="Enter new file name" CssClass="form-control" placeholder="New file name" meta:resourcekey="txtRenameFolderResource1"></asp:TextBox>
                        <asp:TextBox ID="txtOrigFolder" runat="server" Visible="False" meta:resourcekey="txtOrigFolderResource1"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="btnRenameFolder" runat="server" CssClass="btn btn-primary"
                                Text="Rename directory" OnClick="btnRenameFolder_Click" meta:resourcekey="btnRenameFolderResource1" />
                        </span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!-- Modal - New File-->
    <div class="modal fade" id="myModalnew" tabindex="-1" role="dialog" aria-labelledby="myModalLabelnew">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelnew">Create new file</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <asp:TextBox ID="txtFile" runat="server" EnableViewState="False"
                            ToolTip="Enter name for new file" CssClass="form-control" placeholder="Enter file name for new file" meta:resourcekey="txtFileResource1"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="btnNew" runat="server" CssClass="btn btn-primary"
                                OnClick="btnNew_Click" Text="Create file" meta:resourcekey="btnNewResource2" />
                        </span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!-- Modal - Arc Info-->
    <div class="modal fade" id="myModalArcInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabelArcInfo">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelArcInfoTit">File details</h4>
                </div>
                <div class="modal-body">
                    <div runat="server" id="DivArcInfo"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!-- Modal - Info-->
    <div class="modal fade" id="myModalinfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabelinfo">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelinfo">Archive details</h4>
                </div>
                <div class="modal-body">
                    <div runat="server" id="fileDetails"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
    <!-- Modal - Edit/DL File-->
    <div class="modal fade" id="myModalDlEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabelinfo">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelinfoDLED">Edit/Download File</h4>
                </div>
                <div class="modal-body">
                    <div runat="server" id="Div1"></div>
                    <asp:TextBox ID="txtEditingFile" runat="server" Visible="False" meta:resourcekey="txtEditingFileResource1"></asp:TextBox>
                    <asp:TextBox CssClass="form-control" ID="txtEditor" Height="15em" runat="server" TextMode="MultiLine" meta:resourcekey="txtEditorResource1"></asp:TextBox>
                    <br />
                    <asp:Button CssClass="btn btn-primary" ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" meta:resourcekey="btnSaveResource1" />
                    <asp:Button CssClass="btn btn-success" ID="btnDownload" runat="server" Text="Download" OnClick="btnDownload_Click1" meta:resourcekey="btnDownloadResource2" />

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
