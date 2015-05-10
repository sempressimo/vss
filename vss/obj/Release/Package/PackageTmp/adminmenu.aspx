<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminmenu.aspx.cs" Inherits="vss.adminmenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container body-content white">

        <fieldset class="formcontainer blacktext">
            <div class="page-header">
              <h1>Administration Menu<p><small>For system and content administrators only.</small></p></h1>
            </div>


    <div class="row">
        <div class="col-md-4">
            <h2><a href="uploadvid.aspx">Upload Video</a></h2>
            <p>
                Upload new videos.
            </p>
        </div>
        <div class="col-md-4">
            <h2><a href="memberships_list.aspx">Memberships</a></h2>
            <p>
                View and manage membership accounts.
            </p>
        </div>
        <div class="col-md-4">
            <h2><a href="users_list.aspx">User Accounts</a></h2>
            <p>
                View and manage user accounts.
            </p>
        </div>
        <div class="col-md-4">
            <h2><a href="videos_list.aspx">Videos List</a></h2>
            <p>
                View and manage uploaded videos.
            </p>
        </div>

        </div>

            </fieldset>
    </div>
</asp:Content>
