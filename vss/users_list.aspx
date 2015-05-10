<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="users_list.aspx.cs" Inherits="vss.users_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container body-content white">

        <fieldset class="formcontainer blacktext">
            <div class="page-header">
              <h1>Users List<p><small>Currently subscribed users</small></p></h1>
            </div>
             <asp:Label ID="lblFeedback" runat="server" Text="" ForeColor="Orange"></asp:Label>


            <asp:LinkButton ID="lbNewRecord" runat="server" CssClass="mybutton rounded whitetext bold blue">
                <asp:Image runat="server" ImageUrl="~/images/plus.png" />
                <asp:Label runat="server" Text="Add New user"></asp:Label>
            </asp:LinkButton>
   
            <asp:GridView ID="gvRecords" runat="server" Width="100%" DataKeyNames="Username" CssClass="table table-striped table-bordered table-hover blue" OnRowDeleting="gvRecords_RowDeleting" AutoGenerateColumns="False">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:ButtonField Text="Update" />
                    <asp:BoundField DataField="Full_Name" HeaderText="Full Name" />
                    <asp:BoundField DataField="Birthday" DataFormatString="{0:d}" HeaderText="Birthday" />
                    <asp:BoundField DataField="Username" HeaderText="Username" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                </Columns>
            </asp:GridView>

            </fieldset>
         </div>
</asp:Content>