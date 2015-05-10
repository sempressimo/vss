<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="memberships_list.aspx.cs" Inherits="vss.memberships_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container body-content white">

        <fieldset class="formcontainer blacktext">
            <div class="page-header">
              <h1>Membership List<p><small>Currently subscribed users</small></p></h1>
            </div>

    <asp:Label ID="lblFeedback" runat="server" Text="" ForeColor="Orange"></asp:Label>
    <asp:LinkButton ID="lbNewRecord" runat="server" CssClass="mybutton rounded whitetext bold blue">
        <asp:Image runat="server" ImageUrl="~/images/check.png" />
        <asp:Label runat="server" Text="Add new"></asp:Label>
    </asp:LinkButton>

        <asp:GridView ID="gvRecords" runat="server" Width="100%" EmptyDataText="There are no records."  CssClass="table table-striped table-bordered table-hover blue">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:ButtonField Text="Update" />
            </Columns>
        </asp:GridView>

            </fieldset>
         </div>

</asp:Content>