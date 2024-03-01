<?php
//Đăng ký session
session_start();
date_default_timezone_set("Asia/Ho_Chi_Minh");
function connection()
{
    // Nhánh kết nối thành công
    try {
        // Kết nối
        $conn = new PDO("mysql:host=localhost;dbname=ban_sach", 'root', '');
        // Thiết lập chế độ lỗi
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $conn;
    }
    // Nhánh kết nối thất bại
    catch (PDOException $e) {
        echo "Kết nối thất bại: " . $e->getMessage();
    }
}


//Thực thi câu lệnh insert, update, delete
function execute($sql)
{
    $conn = connection();
    $stmt = $conn->prepare($sql);
    $stmt->execute();
}
//Thực thi câu lệnh select trả về 1 dòng
function fetch($sql)
{
    $conn = connection();
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    return $result;
}
//Thực thi câu lệnh sql trả về nhiều dòng dữ liệu
function fetchAll($sql)
{
    $conn = connection();
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

//Kiểm tra xem đã tồn tại session chưa, nếu chưa tồn tại thì chuyển sang trang login
function kiemtra()
{
    if (!isset($_SESSION['user'])) {
        header("location:login.php");
        die;
    }
}

//Tính số lượng hàng trong giỏ hàng
function quantity_cart()
{
    if (isset($_SESSION['cart'])) {
        return count($_SESSION['cart']);
    }
    return 0;
}

//tính tổng đơn hàng
function sum_cart()
{
    $sum = 0;
    foreach ($_SESSION['cart'] as $product) {
        $sum += $product['gia'] * $product['soluong'];
    }
    return $sum;
}

//Insert đơn hàng
function insert($hoten, $email, $diachi, $phone, $tongtien)
{
    $conn = connection();
    $sql = "INSERT INTO hoadon(hoten, email, diachi, phone, tongtien) VALUES('$hoten', '$email', '$diachi', '$phone', '$tongtien')";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    //Lấy id mới thêm được của đơn hàng
    return $conn->lastInsertId();
}
