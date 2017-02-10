  <?php
include ("header.php");


$id=$_GET["nr"];

echo "<p><a href=\"javascript:history.go(-1)\">Gryžti puslapiu atgal</a></p>";



$sql = "SELECT pavadinimas, metai, autoriai, zanras FROM biblioteka WHERE id='".$id."'";
$result = $conn->query($sql);

   if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
	echo "<tr>
			                     <td>Knygos pavadinimas: " . $row['pavadinimas'] . ".</td><br>
                    <td>Knygos metai: " . $row['metai'] . "</td><br>
                    <td>Knygos autoriai: " . $row['autoriai'] . "</td><br>
                    <td>Knygos zanras: " . $row['zanras'] . "</td><br>

                  </tr>";

    }
} else {
    echo "0 results";
}
$conn->close();




?>