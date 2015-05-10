<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="streamplayer.aspx.cs" Inherits="vss.streamplayer" %>

<!DOCTYPE html>

<html lang="en">

 <head>

    <meta charset="utf-8" />

    <title>Auto-player instantiation example, single videoElement</title>

 

    <script src="js/dash.all.js"></script>

 

    <style>

        video {

            width: 640px;

            height: 360px;

        }

    </style>

 <head>

    <body>

        <div>

            <video class="dashjs-player" autoplay preload="none" controls="true">

                <source src="http://sempressimomedia.streaming.mediaservices.windows.net/1b75fc18-51d7-4d75-997d-c0bd3f4e9033/6eee5d0f-ffa5-49c8-930a-7b1e255e4b73.ism/Manifest(format=mpd-time-csf)" type="application/dash+xml" />

                

             </video>

        </div>

    </body>

</html>
