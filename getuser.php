<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 100%;
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
    padding: 5px;
}

th {text-align: left;}
</style>
</head>
<body>

<?php
$con = mysqli_connect('localhost','root','','educo');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

$q = $_REQUEST["q"];
mysqli_select_db($con,"educo");
$sql="SELECT * FROM teacher WHERE user_name LIKE '$q%'";
$result = mysqli_query($con,$sql);
$resultCheck=mysqli_num_rows($result);

if($resultCheck>0){

    echo "<table>
<tr>
<th>Firstname</th>
<th>salary</th>
<th>paid_salary</th>
<th> Attendence</th>
</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>" . $row['full_name'] . "</td>";
    echo "<td>" . $row['main_salary'] . "</td>";
    echo "<td>" . $row['paid_salary'] . "</td>";
   echo "<td>" ."<input type='checkbox' name='remember' value='remember' required> <label></label>" . "</td>";
  
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);

}else{
    echo "No result";

}

?>


</body>
</html>
