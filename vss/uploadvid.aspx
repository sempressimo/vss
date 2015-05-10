<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="uploadvid.aspx.cs" Inherits="vss.uploadvid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="container body-content white" style="width:50%">

        <fieldset class="formcontainer blacktext">
            <div class="page-header">
              <h1>Upload Video<p><small>Upload your media and details</small></p></h1>
            </div>

            <div class="form-group">
                <label for="FileUpload1">Choose file</label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <div class="form-group">
                <label>Video title</label>
                <asp:TextBox ID="txtTitle" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtDescription" runat="server" Rows="2" TextMode="MultiLine" placeholder="Enter the video description" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Membership level </label>
                    <asp:DropDownList ID="cmbMembershipLevel" runat="server">
                        <asp:ListItem Value="" Selected="True">Select</asp:ListItem>
                        <asp:ListItem Value="1">Guest</asp:ListItem>
                        <asp:ListItem Value="2">Standard</asp:ListItem>
                        <asp:ListItem Value="3">Premium</asp:ListItem>
                    </asp:DropDownList>
            </div>
            <div class="form-group">

            </div>

             <asp:Label ID="lblFeedback" runat="server" ForeColor="#33CC33"></asp:Label>
            <p>
             <asp:LinkButton ID="btnUploadVideo" runat="server" CssClass="mybutton whitetext bold rounded blue" OnClick="btnUploadVideo_Click">
                 <asp:Image runat="server" ImageUrl="~/images/check.png" />
                 <asp:Label runat="server" Text="Upload video"></asp:Label>
             </asp:LinkButton>
           </p>

        </fieldset>

        </div>

</asp:Content>
