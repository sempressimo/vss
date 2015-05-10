<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="videolib.aspx.cs" Inherits="vss.videolib" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>
<div class="container body-content black">

<h1 class="heading">Video library</h1>
    <div class="row">
        <asp:ListView ID="lvVideos" runat="server">
            <ItemTemplate>
                <div class="col-md-4">
                        <div class="thumbnail">
                            <a href="player.aspx">
                            <img src="images/rock-music-concert-pub-pergamin-krakow-poland-presentation-new-motorcycle-harley-davidson-peter-river-live-44009353.jpg" alt="..." class="whiteborder preview">
                            </a>
                            <div class="caption">
                            <h3><a href="player.aspx"><%#Eval("Content_Title")%></a></h3>
                            <p class="bold">Uploaded:&nbsp;<%#Eval("Uploaded_Date")%></p>
                            <p><%#Eval("Content_Description")%></p>
                            </div>
                        </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>    
</div>

</asp:Content>