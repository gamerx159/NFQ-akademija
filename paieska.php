  <?php
include ("header.php");
?>
Įveskite knygos pavadinimą, arba autorių<br>
 <form method="post" action="paieska.php">
  <br><input placeholder="Raktažodis" type="text" name="search" required><br>
  <br><input class="button" type="submit" value="Ieškoti"> 
 </form> 
<?php
$paieska=$_POST["search"];

if($paieska==NULL){
}
else{

$sql = "SELECT id, pavadinimas FROM ".$datatable."  WHERE pavadinimas LIKE '".$paieska."%' or autoriai LIKE '%".$paieska."%'";
$result = $conn->query($sql);

echo "".$result->num_rows." Paieškos rezultatai su raktažodžiu <b>".$paieska."</b>:<br><br>";

   if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
	echo "<tr>
			                  
                    <td><a href=\"knyga.php?nr=" . $row['id'] . "\">" . $row['pavadinimas'] . "</a></td><br>

                  </tr>";

    }
} else {
    echo "Nieko neradome";
}
$skaicius=$result->num_rows;
$conn->close();
}
?>

 
