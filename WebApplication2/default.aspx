<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Minimal-Image-Slideshow-jQuery/css/slideshow.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="Minimal-Image-Slideshow-jQuery/js/jquery.slideshow.lite.js"></script>


   <div id="slideshow">
  <img src="img/bio.jpg" alt="Image Caption 1">
  <img src="img/history.jpg" alt="">
  <img src="img/math.jpg" alt="">
 
</div>

<script lang ="javascript">
    $("#slideshow").slideshow({

  // transition delay in seconds
  pauseSeconds: 2,

  // animation speed in seconds
  fadeSpeed: 0.5,

  // width/height of the slideshow
  width: 300,
  height: 400,

  // shows image captions
  caption: true,

  // default CSS class
  cssClass: 'slideshowlite',

  // target attribute of anchor links
  anchorTarget: '_self'
  
    });
    </script>
</asp:Content>
