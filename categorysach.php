<?php
ob_start();

?>
<?php 
	include "login.php"
	?>
<?php 
	include "head.php"
	?>
<?php 
	include "top.php"
    ?>
    <?php 
	include "header.php"
	?>
	<?php 
	include "navigation.php"
	?>
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////Category Page//////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
					<li><a href="index.php">Trang chủ</a></li>
					<li><a href="">Thể Loại</a></li>
						<?php 
						require 'inc/myconnect.php';
						$maTheLoai = $_GET['matheloai'];
						$laydanhsachtheloai="SELECT * from theloai where  matheloai = '$maTheLoai' ";
						$rstentheloai = $conn->query($laydanhsachtheloai);
							  $row2 = $rstentheloai->fetch_assoc();
								$tenTheLoai = $row2["Ten"];
						?>
					<li><a href="sach.php"><?php echo $tenTheLoai?></a></li>
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
							   //lay san pham theo id
							   $matheloai = $_GET["matheloai"];
							   $result = mysqli_query($conn, 'select count(matheloai) as total from sanpham where matheloai = '.$matheloai );
							   $row = mysqli_fetch_assoc($result);
							   $total_records = $row['total'];		
							   if($row['total'] == 0)
							   {
								 header('Location: khongcosanpham.php');
							   }					   
							   $offset =1;
							   // BƯỚC 3: TÌM LIMIT VÀ CURRENT_PAGE
							   $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
							   $limit = 6;
							   // BƯỚC 4: TÍNH TOÁN TOTAL_PAGE VÀ START
							   // tổng số trang
							   $total_page = ceil($total_records / $limit);
								
							   // Giới hạn current_page trong khoảng 1 đến total_page
							   if ($current_page > $total_page){
								   $current_page = $total_page;
							   }
							   else if ($current_page < 1){
								   $current_page = 1;
							   }
								
							   // Tìm Start
							   $start = ($current_page - 1) * $limit;
								
							   // BƯỚC 5: TRUY VẤN LẤY DANH SÁCH
							   // Có limit và start rồi thì truy vấn CSDL lấy danh Sách
							   $result = mysqli_query($conn, "SELECT * FROM sanpham where matheloai = '$matheloai' LIMIT $start, $limit " );
	// output data of each row
	while ($row = mysqli_fetch_assoc($result)){

?>

								<div class="col-lg-4 col-md-4 col-xs-12">
								<div class="product">
								<div class="image"><a href="producttheloai.php?id=<?php echo $row["ID"]?>&matheloai=<?php echo $matheloai ?>"><img src="images/<?php echo $row["HinhAnh"]?>" style="width:300px;height:300px"/></a></div>
								<div class="caption">
									<div class="name" style="height: 49px;"><h3><a href="producttheloai.php?id=<?php echo $row["ID"]?>&matheloai=<?php echo $maTheLoai ?>"><?php echo $row["Ten"]?></a></h3></div>
									<?php
                                 if($row["KhuyenMai"] == true)
								 {                                      
								?>
									<div class="price"><?php echo $row["giakhuyenmai"]?>.000 VNĐ<span><?php echo $row["Gia"]?>.000 VNĐ</span></div>
								<?php 
								}
								?>
								<?php
                                 if($row["KhuyenMai"] == false)
								 {
								?>
								    
									<div class="price"><?php echo $row["Gia"]?>.000 VNĐ<span></span></div>
								<?php 
								}
								?>
								</div>
							</div>
								</div>
								<?php
		}
					?>
							</div>
						</div>
	
					</div>
		
		
					<div class="row text-center">
						<ul class="pagination">
						<?php 
						// PHẦN HIỂN THỊ PHÂN TRANG
			// BƯỚC 7: HIỂN THỊ PHÂN TRANG
			 
			// nếu current_page > 1 và total_page > 1 mới hiển thị nút prev
			for ($i = 1; $i <= $total_page; $i++){
				if ($i == $current_page){

					   ?>
					   <li class="active"><a href="#"><?php echo $i  ?></a></li>					   
						  <?php 
				}

			?>
			<?php
			if($i != $current_page){
			 ?>	
			 	  <li><?php echo '<a href="categorysach.php?matheloai='.$matheloai.'&page='.$i.'">'.$i.'</a> '; ?></li>
			 <?php
			}
			  ?>	
						  <?php 
			}
						  ?>
						</ul>
					</div>
				
		
				</div>
				<?php 
	
	include "sidebartheloai.php"
	?>
			</div>
		</div>
	</div>	
	<?php 
	include "footer.php"
	?>
    </body>
</html>
<?php ob_end_flush(); ?>

