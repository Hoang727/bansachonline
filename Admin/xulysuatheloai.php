<?php 
    if(isset($_POST['Edit']))
    {
    require '../inc/myconnect.php';
    $id = $_POST['matheloai'];
    $name = $_POST['name'];
        $sql = "UPDATE theloai SET Ten='$name'
        WHERE matheloai= '$id ' " ;
        if ($conn->query($sql) === TRUE) {
            header('Location: qlytheloai.php');
        } else {
            echo "Error updating record: " . $conn->error;
        }
        $conn->close();
    }
  
?>
