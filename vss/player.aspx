<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="player.aspx.cs" Inherits="vss.player" %>

<html>
<head runat="server">
    <title>Video Player</title>
    
    <style>
        video {
          width: 80%;
          height: 80%;
        }
    </style>

    <!-- DASH-AVC/265 reference implementation -->
    <script src="js/dash.all.js"></script>
    
    <script>
        // setup the video element and attach it to the Dash player
        function setupVideo() {
            var url = "http://sempressimomedia.streaming.mediaservices.windows.net/1b75fc18-51d7-4d75-997d-c0bd3f4e9033/6eee5d0f-ffa5-49c8-930a-7b1e255e4b73.ism/Manifest(format=mpd-time-csf)";
            var context = new Dash.di.DashContext();
            var player = new MediaPlayer(context);
            player.startup();
            player.attachView(document.querySelector("#videoplayer"));
            player.attachSource(url);
        }
    </script>

    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link type="text/css" rel="stylesheet" href="Content/mystyle.css" />
    <link type="text/css" rel="stylesheet" href="Content/form.css" />
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="css/playerframework.min.css">

</head>

<body onload="setupVideo()">
    
        
<nav class="navbar navbar-default navbar-fixed-top black noborder">
        <div class="container-fluid" style="padding:10px;">
        <!-- Brand and toggle get grouped for better mobile display -->

<div class="row" style="margin:0">
    <div class="col-md-2">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="#">[Brand Logo]</a>
                </div>
    
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav">
                    
                    <li class="dropdown rounded">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                         <img src="images/lines.png" /> <span class="caret"></span>
                      </a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="myaccount.aspx">My Account</a></li>
                        <li><a href="#">Preferences</a></li>
                        <li><a href="#">Favorites</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Sign out</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
    </div>
    <div class="col-lg-10">
                  <div class="navbar-form navbar-left" role="search">
                      <div class="input-group">
                          <input type="text" class="form-control" placeholder="Search for...">
                          <span class="input-group-btn">
                                <a class="btn btn-default purple">
                                    <img src="images/search.png" />
                                </a>
                          </span>
                        </div><!-- /input-group -->
                  </div>
    </div>

</div>
              </div><!-- /.container-fluid -->
        </nav>
        

        <div class="container body-content black">
        <div class="row">
                <div class="col-md-6">
                
                    <video id="videoplayer" controls></video>

                </div>

                <div class="col-md-6">
                    <h2>Sample video title</h2>
                    <h4>January 26, 2015</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                </div>
        </div>    

    
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


    </div>  <!-- container -->


        <div class="container ">
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Digital Revolution Group</p>
            </footer>
        </div>


</body>
</html>