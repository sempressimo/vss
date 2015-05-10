<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="videos_list.aspx.cs" Inherits="vss.videos_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container body-content white">

        <fieldset class="formcontainer blacktext">
            <div class="page-header">
              <h1>Videos List<p><small>Current video library</small></p></h1>
            </div>
             <asp:Label ID="lblFeedback" runat="server" Text="" ForeColor="Orange"></asp:Label>

            <asp:LinkButton ID="lbNewRecord" runat="server" CssClass="mybutton rounded whitetext bold blue">
                <asp:Image runat="server" ImageUrl="~/images/plus.png" />
                <asp:Label runat="server" Text="Add New"></asp:Label>
            </asp:LinkButton>

             <asp:GridView ID="gvRecords" runat="server" Width="100%" EmptyDataText="There are no records." CssClass="blue table table-striped table-bordered table-hover">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:ButtonField Text="Update" />
                </Columns>
            </asp:GridView>

        </fieldset>
    </div>

   
</asp:Content>
