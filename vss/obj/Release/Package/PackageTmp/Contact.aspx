<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="vss.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container body-content white">

        <fieldset class="formcontainer blacktext">
            <div class="page-header">
              <h1><%: Title %></h1>
            </div>
             <asp:Label ID="lblFeedback" runat="server" Text="" ForeColor="Orange"></asp:Label>

                <h3>Your contact page.</h3>
                <address>
                    One Microsoft Way<br />
                    Redmond, WA 98052-6399<br />
                    <abbr title="Phone">P:</abbr>
                    425.555.0100
                </address>

                <address>
                    <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
                    <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
                </address>


        </fieldset>

         </div>
    
</asp:Content>
