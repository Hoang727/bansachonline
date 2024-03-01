<?php
if(isset($_POST['create']))
{
    require '../inc/myconnect.php';
    $name = $_POST['name'];
    $sql="INSERT INTO  theloai (Ten) 
    VALUES ('$name')";
    // echo  $mk;
    if (mysqli_query($conn, $sql)) {
        header('Location: qlytheloai.php');
    } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

 ?>