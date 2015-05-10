<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="vss._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="container body-content black">

      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>

      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="images/matisyahu-concert-american-musician-performing-live-arena-club-moscow-russia-32889398.jpg" alt="...">
          <div class="carousel-caption">
            Welcome! This is a sample website made for testing purposes.  Feel free to browse what we have so far and share your feedback.  Thanks!
          </div>
        </div>
        <div class="item">
          <img src="images/rock-music-concert-pub-pergamin-krakow-poland-presentation-new-motorcycle-harley-davidson-peter-river-live-44009353.jpg" alt="...">
          <div class="carousel-caption">
            Welcome! This is a sample website made for testing purposes.  Feel free to browse what we have so far and share your feedback.  Thanks!
          </div>
        </div>
    
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <p>&nbsp;</p>

     <div class="row">
            <div class="col-md-4">
                    <div class="thumbnail">
                      <a href="subscribe.aspx">
                        <img src="images/male-guitarist-concert-38375488.jpg" alt="..." class="whiteborder preview">
                      </a>
                        <div class="caption">
                        <h4>Subscribe</h4>
                            <p> Subscribe and enjoy one of our 3 memberships. Guest, Standard or Premium!</p>
                            <p>&nbsp;</p>
                            <p>
                                <a class="mybutton rounded whitetext bold purple" href="subscribe.aspx">
                                    <img src="images/check.png" />
                                    <span>Watch now / Subscribe</span>
                                </a>
                            </p>
                      </div>
                    </div>
        </div>

        <div class="col-md-4">
                <div class="thumbnail">
                      <a href="videolib.aspx">
                        <img src="images/matisyahu-concert-american-musician-performing-live-arena-club-moscow-russia-32889398.jpg" alt="..." class="whiteborder preview">
                      </a>
                        <div class="caption">
                        <h4>Video Library</h4>
                            <p>Browse our sample video library. This portal is under development and in alpha stage.</p>
                            <p>&nbsp;</p>
                            <p>
                                <a class="mybutton rounded whitetext bold purple" href="videolib.aspx">
                                    <img src="images/openfolder.png" />
                                    <span>Browse Selection</span>
                                </a>
                            </p>
                      </div>
                    </div>
        </div>

        <div class="col-md-4">
                <div class="thumbnail">
                      <a href="specialevents.aspx">
                        <img src="images/rock-music-concert-pub-pergamin-krakow-poland-presentation-new-motorcycle-harley-davidson-peter-river-live-44009353.jpg" alt="..." class="whiteborder preview">
                      </a>
                        <div class="caption">
                        <h4>Special Events</h4>
                            <p>Read more about upcoming special events for premium subscribers</p>
                            <p>&nbsp;</p>
                            <p>
                                <a class="mybutton rounded whitetext bold purple" href="specialevents.aspx">
                                    <img src="images/calendar.png" />
                                    <span>Learn more</span>
                                </a>
                               
                            </p>
                      </div>
                    </div>
        </div>

    </div>


    <p>&nbsp;</p>
    <h4 class="heading">CONTINUE WATCHING</h4>
     <div class="row">

              <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                      <a href="player.aspx">
                        <img src="images/rock-music-concert-pub-pergamin-krakow-poland-presentation-new-motorcycle-harley-davidson-peter-river-live-44009353.jpg" alt="..." class="whiteborder preview">
                      </a>
                        <div class="caption">
                        <h4>Sample Title </h4><p>JANUARY 23, 2015</p>
                      </div>
                    </div>
              </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                      <a href="player.aspx">
                        <img src="images/rock-music-concert-pub-pergamin-krakow-poland-presentation-new-motorcycle-harley-davidson-peter-river-live-44009353.jpg" alt="..." class="whiteborder preview">
                      </a>
                        <div class="caption">
                        <h4>Sample Title </h4><p>JANUARY 23, 2015</p>
                      </div>
                    </div>
              </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                      <a href="player.aspx">
                        <img src="images/rock-music-concert-pub-pergamin-krakow-poland-presentation-new-motorcycle-harley-davidson-peter-river-live-44009353.jpg" alt="..." class="whiteborder preview">
                      </a>
                        <div class="caption">
                        <h4>Sample Title </h4><p>JANUARY 23, 2015</p>
                      </div>
                    </div>
              </div>
    </div>



</div>

</asp:Content>
