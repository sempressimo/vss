<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="vss.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container body-content white">

        <fieldset class="formcontainer blacktext">
            <div class="page-header">
              <h1><%: Title %></h1>
            </div>
             <asp:Label ID="lblFeedback" runat="server" Text="" ForeColor="Orange"></asp:Label>

                <h3>Your application description page.</h3>
                <p>Use this area to provide additional information.</p>
            </fieldset>
        </div>
</asp:Content>
