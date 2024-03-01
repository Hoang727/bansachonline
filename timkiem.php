<?php
include "login.php";
include "head.php";
include "top.php";
include "header.php";
include "navigation.php";
?>

<div id="page-content" class="single-page">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <ul class="breadcrumb">
                    <li><a href="index.php">Trang chủ</a></li>
                    <li><a>Kết quả tìm kiếm</a></li>
                </ul>
            </div>
        </div>

        <div class="row">
            <div id="main-content" class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="products">
                            <?php
                            require 'inc/myconnect.php';

                            $tentimkiem = isset($_GET["txttimkiem"]) ? $_GET["txttimkiem"] : '';
$tentimkiem = mysqli_real_escape_string($conn, $tentimkiem);

                            $result_count = mysqli_query($conn, "SELECT COUNT(ID) as total FROM sanpham WHERE Ten LIKE '%$tentimkiem%'");
                            $row_count = mysqli_fetch_assoc($result_count);
                            $total_records = $row_count['total'];

                            $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
                            $limit = 6;

                            $total_page = ceil($total_records / $limit);

                            if ($current_page > $total_page) {
                                $current_page = $total_page;
                            } elseif ($current_page < 1) {
                                $current_page = 1;
                            }

                            $start = ($current_page - 1) * $limit;

							$query = "SELECT * FROM sanpham WHERE Ten LIKE ? LIMIT ?, ?";
							$tentimkiem = '%' . $tentimkiem . '%'; 
                            $stmt = mysqli_prepare($conn, $query);
							mysqli_stmt_bind_param($stmt, 'sii', $tentimkiem, $start, $limit);
							mysqli_stmt_execute($stmt);
							$result = mysqli_stmt_get_result($stmt);

                            // Check if there are any results
                            if (mysqli_num_rows($result) > 0) {
                                while ($row = mysqli_fetch_assoc($result)) {
                                    ?>
                                    <div class="col-lg-4 col-md-4 col-xs-12">
                                        <div class="product">
                                            <div class="image">
                                                <a href="product.php?id=<?php echo $row["ID"] ?>">
                                                    <img src="images/<?php echo $row["HinhAnh"] ?>" style="width:300px;height:300px" />
                                                </a>
                                            </div>
                                            <div class="caption">
                                                <div class="name" style="height: 49px;">
                                                    <h3><a href="product.php"><?php echo $row["Ten"] ?></a></h3>
                                                </div>
                                                <?php
                                                if ($row["KhuyenMai"] == true) {
                                                    ?>
                                                    <div class="price"><?php echo $row["giakhuyenmai"] ?>.000 VNĐ<span><?php echo $row["Gia"] ?>.000 VNĐ</span></div>
                                                <?php
                                                } else {
                                                    ?>
                                                    <div class="price"><?php echo $row["Gia"] ?>.000 VNĐ<span></span></div>
                                                <?php
                                                }
                                                ?>
                                            </div>
                                        </div>
                                    </div>
                                <?php
                                }
                            } else {
                                echo "<p>No Results Products</p>";
                            }

                            // Close statement and connection
                            mysqli_stmt_close($stmt);
                            mysqli_close($conn);
                            ?>
                        </div>
                    </div>
                </div>

                <div class="row text-center">
                    <ul class="pagination">
                        <?php
                        for ($i = 1; $i <= $total_page; $i++) {
                            if ($i == $current_page) {
                                echo '<li class="active"><a href="#">' . $i . '</a></li>';
                            } else {
                                echo '<li>' . '<a href="timkiem.php?txttimkiem=' . $tentimkiem . '&page=' . $i . '">' . $i . '</a> ' . '</li>';
                            }
                        }
                        ?>
                    </ul>
                </div>
            </div>

            <?php
            include "sidebar.php";
            ?>
        </div>
    </div>
</div>

<?php
include "footer.php";
?>
</body>
</html>
