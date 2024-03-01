<nav id="menu" class="navbar" style="margin: 0px;">
		<div class="container">
			<div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.php">Trang chủ</a></li>
					
					<!-- tao menu theloai -->
					<li class="dropdown"><a href="sach.php" class="dropdown-toggle" data-toggle="">Thể loại</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
								<?php
  //lay id nha san xuat
							require 'inc/myconnect.php';
							$laydanhsachtheloai="SELECT matheloai as matheloai,Ten from theloai";
							$rstentheloai = $conn->query($laydanhsachtheloai);
   							if ($rstentheloai->num_rows > 0) {
	  							 // output data of each row
	  							 while($row = $rstentheloai->fetch_assoc()) {
								
							?>
							<li><a href="categorysach.php?matheloai=<?php echo $row["matheloai"]?>"><?php echo $row["Ten"]?></a></li>
							<?php
									}
								}
							?>
							</ul>
						    
							</div>
						</div>
					</li>
					<li class="dropdown"><a href="sach.php" class="dropdown-toggle" data-toggle="">Nhà xuất bản</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
								<?php
  //lay id nha san xuat
							require 'inc/myconnect.php';
							$laydanhsachnhasx="SELECT ID as manhasx,Ten from nhaxuatban";
							$rstennhasx = $conn->query($laydanhsachnhasx);
   							if ($rstennhasx->num_rows > 0) {
	  							 // output data of each row
	  							 while($row = $rstennhasx->fetch_assoc()) {
								
							?>
							<li><a href="category.php?manhasx=<?php echo $row["manhasx"]?>"><?php echo $row["Ten"]?></a></li>
							<?php
									}
								}
							?>
							</ul>
						    
							</div>
						</div>
					</li>
					
					
					<li><a href="contact.php">Liên hệ</a></li>
				</ul>
			</div>
		</div>
	</nav>