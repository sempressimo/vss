<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myaccount.aspx.cs" Inherits="vss.myaccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container body-content white">

        <fieldset class="formcontainer blacktext">
            <div class="page-header">
              <h1>My Account<p><small>View and manage your subscribtion.</small></p></h1>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <h2>Account Details</h2>
                    <p>
                        Username: admin
                    </p>
                </div>
                <div class="col-md-4">
                    <h2>Expiration</h2>
                    <p>
                        Your account will expire on: 1/1/2016
                    </p>
                </div>
                <div class="col-md-4">
                    <h2>Payments</h2>
                    <p>
                        Paid via Amazon Pay: 1/1/2015
                    </p>
                </div>

                </div>

            </fieldset>
    </div>
</asp:Content>
