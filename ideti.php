<html>

<body>


 <?php
include ("header.php");
$pavadinimas = $_POST["pavadinimas"];
$metai = $_POST["metai"];
$autoriai = $_POST["autoriai"];
$zanras = $_POST["zanras"];




if($pavadinimas==NULL)
{

}	
else {

$sql1 = "SELECT * FROM ".$datatable."  WHERE pavadinimas LIKE '".$pavadinimas."' ORDER BY pavadinimas ASC";
$results = $conn->query($sql1);
   if ($results->num_rows > 0 ) 
	echo "<p>Tokia knyga jau yra</p>";
	else 
	{

$sql = "INSERT INTO ".$datatable." (pavadinimas, metai, autoriai, zanras)
VALUES ('".$pavadinimas."', '".$metai."', '".$autoriai."', '".$zanras."')";

if ($conn->query($sql) === TRUE) {
  
	echo "<p>Jūsų knyga sėkmingai patalpina. <a href=\"index.php\">Gryžti į knygų sarašą</a></p>";


} else {
    echo "<div id=\"dialog\" title=\"Klaida\">
  <p>Įvyko klaida.</p>
</div>";   

}
}



	
	

}
?>
<form method="post">
Knygos pavadinimas
 <br><input  type="text" name="pavadinimas" required><br>
 Knygos metai
 <br><input type="number" name="metai" required><br>
 Knygos autoriai
 <br><input  type="text" name="autoriai" required><br>
 Knygos žanras
 <br><input  type="text" name="zanras" required><br>

 <input class="button" type="submit" value="Pateikti"> 
 </form> 
 <br>
 <br>
 <br>
 <br>
</body>
</html>