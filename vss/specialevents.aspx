<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="specialevents.aspx.cs" Inherits="vss.specialevents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container body-content black">

                <div class="jumbotron">
                <h1>Special Events</h1>
                <p class="lead">This videos are for premium members only.</p>
                </div>
                <div class="row">
                    <asp:ListView ID="lvVideos" runat="server">
                        <ItemTemplate>
                            <div class="col-md-4">
                                <img alt="video" src="#" />
                                <h2><a href="player.aspx"><%#Eval("Content_Title")%></a></h2>
                                <p>Uploaded:&nbsp;<%#Eval("Uploaded_Date")%></p>
                                <p>
                                    <%#Eval("Content_Description")%>
                                </p>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>

        </div>
</asp:Content>