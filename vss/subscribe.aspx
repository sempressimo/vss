<%@ Page Language="C#" Title="Subscribe Today!" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="subscribe.aspx.cs" Inherits="vss.subscribe" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderPlaceHolder" runat="server">
    <script type='text/javascript'>
        window.onAmazonLoginReady = function ()
        {
            amazon.Login.setClientId('amzn1.application-oa2-client.170f41e02e4c4ee7902c71e1489a1a83');
        };
    </script>
    <script type='text/javascript' 
        src='https://static-na.payments-amazon.com/OffAmazonPayments/us/js/Widgets.js?sellerId=A39R2GBW821RDR'>
    </script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="container body-content white">

    <fieldset class="formcontainer blacktext">
        
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" Visible="false"></asp:CustomValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="mybutton whitetext bold orange" />

        <div class="row">
            <div class="col-md-6" style="border-right:1px solid #ccc; padding-left:30px">

                <div class="page-header">
                  <h2>Subscribe Today!<p><small>Please fill out your information and payment method.</small></p></h2>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Full Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFullName" ErrorMessage="Your name is requiered." Text="*" Visible="true" ForeColor="Red"></asp:RequiredFieldValidator>
                    <input type="text" runat="server" class="form-control" id="txtFullName" placeholder="Enter your full name">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="The email address is requiered." Text="*" Visible="true" ForeColor="Red"></asp:RequiredFieldValidator>
                    <input type="email" runat="server" class="form-control" id="txtEmail" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Birthday</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBirthday" ErrorMessage="The birthday address is requiered." Text="*" Visible="true" ForeColor="Red"></asp:RequiredFieldValidator>
                    <input type="date" class="form-control" id="txtBirthday" runat="server" placeholder="Enter birthday">
                </div>
                <div class="form-group">
                    <label for="exampleUser">Nombre de usuario</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSubUsername" ErrorMessage="The username address is requiered." Text="*" Visible="true" ForeColor="Red"></asp:RequiredFieldValidator>
                    <input type="text" runat="server" class="form-control" id="txtSubUsername" placeholder="Nombre de usuario">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" runat="server" class="form-control" id="txtSubPassword" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword2">Verificar password</label>
                    <input type="password" runat="server" class="form-control" id="txtSubPasswordVerification" placeholder="Password">
                </div>

                <p>&nbsp;</p>

                <asp:LinkButton ID="lbSubscribe" runat="server" CssClass="mybutton rounded whitetext bold purple" OnClick="lbSubscribe_Click">Subscribe now!</asp:LinkButton>

                <p>&nbsp;</p>

                <!-- Place this where you would like the Payment Button to appear -->
                <div id="AmazonPayButton"></div>
                <script type="text/javascript">
                    var authRequest;
                    OffAmazonPayments.Button("AmazonPayButton", "A39R2GBW821RDR", {
                        type: "PwA",
                        color: "Gold",
                        size: "medium",
                        useAmazonAddressBook: true,
                        authorization: function () {
                            var loginOptions = { scope: 'profile payments:widget' };
                            authRequest = amazon.Login.authorize(loginOptions, "http://localhost:2740/subscribe.aspx");
                        },
                        onError: function (error) {
                            // Write your custom error handling
                        }
                    });
                </script>
   
            </div>

            <div class="col-md-6" style="padding-left:30px">
                <div class="page-header">
                  <h2>Login to your account<p><small>Start your session and start watching</small></p></h2>
                </div>

                  <div class="form-group">
                    <label for="exampleUser">Nombre de usuario</label>
                    <input type="text" class="form-control" id="txtUser" runat="server" placeholder="Nombre de usuario">
                  </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" runat="server" class="form-control" id="txtPassword" placeholder="Password">
                </div>
                    <p>&nbsp;</p>

                    <asp:LinkButton ID="lbLogin" runat="server" CssClass="mybutton rounded whitetext bold blue" OnClick="lbLogin_Click">Login & Watch now!</asp:LinkButton>

            </div>

        </div>


    </fieldset> 

</div> 

</asp:Content>