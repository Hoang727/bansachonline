<?php
ob_start();
?>
<?php
 require "login.php";
      if(!isset($_SESSION['txtus'])) // If session is not set then redirect to Login Page
       {
           header("Location:giohangchuacodnhap.php");  
       }

?>
<?php 
	include "head.php"
	?>
<?php
$title ="Shop huy";
$name ="Điện thoai";
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
	<!--///////////////////Cart Page//////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<?php 
	if(is_countable($_SESSION['cart']) == 0)
	{
		header('Location: baogiohangtrong.php');
	}
	?>
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="index.php">Trang chủ</a></li>
						<li><a href="cart.php">Giỏ hàng</a></li>
					</ul>
				</div>
			</div>
			<div class="cart">
			<p>
				
				<?php
			$ok=1;
			 if(isset($_SESSION['cart']))
			 {
				 foreach($_SESSION['cart'] as $key => $value)
				 {
					 if(isset($key))
					 {
						$ok=2;
					 }
				 }
			 }
			
			 if($ok == 2)
			 {
				echo "Có ".count($_SESSION['cart']). " sách trong giỏ hàng ";
			 }
			else
			{
				echo   "<p>Không có có Sách nào trong giỏ hàng</p>";
			}
			
			$sl = count($_SESSION['cart']);
			?>
			</p>			
			</div>
			<?php

			require "inc/myconnect.php";

			if(isset($_SESSION['cart']))
			{
				foreach($_SESSION['cart'] as $key  => $value)
				{
					$item[]=$key;
				}
				if(isset($item)){
				// echo $item;
				$str= implode(",",$item);
			    $query = "SELECT s.ID,s.Ten,s.date,s.Gia,s.HinhAnh,s.KhuyenMai,s.giakhuyenmai,s.Mota, n.Ten as Tennhasx,s.Manhasx
				from sanpham s 
				LEFT JOIN nhaxuatban n on n.ID = s.Manhasx
				 WHERE  s.id  in ($str)";
				$result = $conn->query($query);
				$total=0;
				foreach($result as $s)
				{
			?>

			<div class="row1">
			<form name="form5" id="ff5" method="POST" action="removecart.php">
				<div class="product well">
					<div class="col-md-3">
						<div class="image">
							<img src="images/<?php  echo $s["HinhAnh"]?>" style="width:300px;height:300px" />
						</div>
					</div>
					<div class="col-md-9">
						<div class="caption">
							<div class="name"><h3><a href="product.php?id=<?php  echo $s["ID"]?>"><?php  echo $s["Ten"]?></a></h3></div>
							<div class="info">	
								<ul>
									<li>Nhà xuất bản: <?php  echo $s["Tennhasx"]?></li>
								</ul>
							</div>
							<?php
                                 if($s["KhuyenMai"] == true)
								 {                                      
								?>
								<div class="price"><?php  echo $s["giakhuyenmai"]?>.000 VNĐ</div>
								<?php 
								}
								?>
								<?php
                                 if($s["KhuyenMai"] == false)
								 {
								?>
								<div class="price"><?php  echo $s["Gia"]?>.000 VNĐ</div>
								<?php 
								}
								?>

							<label>Số lượng: </label> 
							<input class="form-inline quantity" style="margin-right: 80px;width:50px" min="1" max ="99" type="number" name ="qty[<?php echo $s["ID"] ?>]" value="<?php echo $_SESSION['cart'][$s["ID"]]?>"> 
						     <div>
								<input type="submit" name="update" style="margin-top:31px"  value="cập nhật Sách này" class="btn btn-2" />
							</div>
							<hr>
							<input type="submit" name="remove" value="xóa Sách này" style="color: black;" class="btn btn-default pull-right" />	
							<input type="hidden" name="idsprm" value="<?php echo $s["ID"] ?>" />
							<?php
                                 if($s["KhuyenMai"] == true)
								 {                                      
								?>
									<label style="color:red">Thành tiền: <?php ;
							    echo  $_SESSION['cart'][$s["ID"]] * $s["giakhuyenmai"]?>.000  </label> 
								<?php 
								}
								?>
								<?php
                                 if($s["KhuyenMai"] == false)
								 {
								?>
									<label style="color:red">Thành tiền: <?php ;
							    echo  $_SESSION['cart'][$s["ID"]] * $s["Gia"]?>.000  </label> 
								<?php 
								}
								?>
						
						</div>
					</div>

					<div class="clear"></div>
				</div>	
			</form>
			<?php
                                 if($s["KhuyenMai"] == true)
								 {                                      
								?>
											<?php 
				              $total +=$_SESSION['cart'][$s["ID"]] * $s["giakhuyenmai"]?>
								<?php 
								}
								?>
								<?php
                                 if($s["KhuyenMai"] == false)
								 {
								?>
								<?php 
				              $total +=$_SESSION['cart'][$s["ID"]] * $s["Gia"]?>
								<?php 
								}
								?>
		
			</div>
			<?php 
				}}
			}
			?>
				
	<div class="row1"   >
		<div class="xoa-full"> <a href="rmcart.php" class="btn btn-2" >Xóa hết giỏ hàng</a></div>
			<div class="col-md-4 col-md-offset-8" style="padding: 10px 0px;"  >
				<a href="index.php" class="btn btn-1" >Chọn những sách khác</a>
				<div class="pricedetails">
					<div class="col-md-4 col-md-offset-8" style="font-weight: bold; margin: 0px; padding: 0px; font-size:17px; width: 300px;">
					<style>
						.slsach{
							display: flex;
							
							padding: 0px 50px -30px 0px;
						}
						.slsach>p{
							margin-left: 80px;
						}
						.tongcong>p{
							margin-left: 50px;
						}
						.tongcong{
							display: flex;
						
							padding: 10px 0px 10px 0px;
						}
					</style>
					<h6>Tổng giỏ hàng</h6>
					<div class="slsach" >Số lượng sách <p><?php echo $sl ?></p></div>
					<div class="tongcong" style="border-top: 1px solid black; color: black; font-size: 20px	;">Tổng cộng <p><?php if(isset($total)){echo $total; } ?>.000 VNĐ</p> </div>
					<center><a href="dathang.php" class="btn btn-1">Đặt hàng</a></center>	
				</div>
					
				</div>
						
			</div>
	</div>
</div>
				
	</div> 
	<?php 
	include "footer.php"
	?>
</body>
</html>
<?php ob_end_flush(); ?>

