<html>
<head>
<title>Knygų biblioteka</title>
<style type="text/css">
a {
    color: #0060B6;
    text-decoration: none;
}

a:hover 
{
     color:#00A0C6; 
     text-decoration:none; 
     cursor:pointer;  
}
	.curPage {
	 text-decoration: underline;
}


.tooltip:hover:before{
    border: solid;
    border-color: #333 transparent;
    border-width: 6px 6px 0 6px;
    bottom: 20px;
    content: "";
    left: 50%;
    position: absolute;
    z-index: 99;
}
.tooltip:hover:after{
    background: #333;
    background: rgba(0,0,0,.8);
    border-radius: 5px;
    bottom: 26px;
    color: #fff;
    content: attr(title);
    left: 20%;
    padding: 5px 15px;
    position: absolute;
    z-index: 98;
    width: 220px;
}
.tooltip{
    display: inline;
    position: relative;
}
</style>

</head>
<body>
<?php
include ("config.php");
echo "<a href=\"index.php\">Pradžia</a><br><a href=\"ideti.php\"> Patalpinti naują knygą </a><br><a href=\"paieska.php\"> Ieškoti </a><br>";

echo" <br> <br>";	?>
</body>
</html>