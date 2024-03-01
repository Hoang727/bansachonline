<?php
    require '../inc/myconnect.php';
    $id = $_GET['matheloai'];

    // sql to delete a record
    $sql = "DELETE FROM theloai WHERE matheloai=".$id;

    if ($conn->query($sql) === TRUE) {
        header('Location: qlytheloai.php');
    } else {
        echo "Error deleting record: " . $conn->error;
    }

$conn->close();
?>
</script>