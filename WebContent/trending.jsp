<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trending - Addie</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/trending.css">

  </head>
</head>
<body>

	<%@include file="header.html" %>
    
<h1>Masonry - Initialize in HTML</h1>

<div class="grid" data-masonry='{ "itemSelector": ".grid-item", "columnWidth": 250 }'>
  <div class="grid-item grid-item--width2"></div>
  <div class="grid-item grid-item--width2 grid-item--height2"></div>
  <div class="grid-item grid-item--height2"></div>
  <div class="grid-item"></div>
  <div class="grid-item grid-item--width2 grid-item--height2"></div>
  <div class="grid-item grid-item--height2"></div>
  <div class="grid-item"></div>
  
  
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
    <script src="js/masonry.pkgd.min.js"></script>
    <script src="js/index.js"></script>
</body>
</html>