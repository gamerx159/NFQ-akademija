  <form method="post" action="paieska.php">
  <!-- <p STYLE="text-align:right"> --><br><input placeholder="Greita paieška" type="text" name="search" required>
  <input class="button" type="submit" value="Pateikti"></p> 
<?php

include ("header.php");

echo "<p>Knygų sąrašas</p>";

if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };
$start_from = ($page-1) * $results_per_page;
if ($_GET['sort'] == NULL) $sql = "SELECT * FROM ".$datatable." ORDER BY pavadinimas ASC LIMIT $start_from, ".$results_per_page;

if ($_GET['sort'] == 'type')
{
	$sql = "SELECT * FROM ".$datatable."";
    $sql .= " ORDER BY pavadinimas ASC LIMIT $start_from, ".$results_per_page;
}
elseif ($_GET['sort'] == 'desc')
{
		$sql = "SELECT * FROM ".$datatable."";
    $sql .= " ORDER BY pavadinimas DESC LIMIT $start_from, ".$results_per_page;
}
$rs_result = $conn->query($sql);

 while($row = $rs_result->fetch_assoc()) {
             $data .= "<tr><td><a href=\"knyga.php?nr=" . $row['id'] . "\">" . $row['pavadinimas'] . "</a></td>";
}; 

$url =  "//{$_SERVER['HTTP_HOST']}{$_SERVER['REQUEST_URI']}";
$escaped_url = htmlspecialchars( $url, ENT_QUOTES, 'UTF-8' );
echo"<table><tr>";
		    
if(($_GET["sort"] ==  "type")||($_GET["page"]== NULL)) {
			echo "<th align=\"left\"> <a title=\"Mažėjimo tvarka\" class=\"tooltip\" href=\"index.php?page=1&sort=desc\">Pavadinimas</a></th><br>";
		}

else if($_GET["sort"] ==  "desc") {
			echo "<th title=\"Didėjimo tvarka\" class=\"tooltip\" align=\"left\"><a href=\"index.php?page=1&sort=type\">Pavadinimas</a></th><br>";
		}
						else
		echo "		<th title=\"Didėjimo tvarka\" class=\"tooltip\" align=\"left\"><a href=\"".$escaped_url."&sort=type\">Pavadinimas</a></th><br>";				
		
			echo "		</tr>" . $data . "</table>";

 
 echo " <br>   <br>   Puslapis ";
$sql = "SELECT COUNT(ID) AS total FROM ".$datatable;
$result = $conn->query($sql);
$row = $result->fetch_assoc();
$total_pages = ceil($row["total"] / $results_per_page); // calculate total pages with results
  
for ($i=1; $i<=$total_pages; $i++) {  // print links for all pages

if (($_GET["page"] == NULL)||($_GET["sort"] == NULL))
{
	
            echo "<a href='index.php?page=".$i."'";
            if ($i==$page)  echo " class='curPage'";
            echo ">".$i."</a> "; 
}
else if($_GET["sort"] == "desc" || "type")
{
	            echo "<a href='index.php?page=".$i."&sort=".$_GET["sort"]."'";
            if ($i==$page)  echo " class='curPage'";
            echo ">".$i."</a> "; 
}

};
echo "<br><br><br>Šiuo metu turime viso ". $row["total"] . " knygų.";

?></center>
</body>
</html>