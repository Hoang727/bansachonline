<style>
		.imglogo{
			margin: -5px;
		}
	
	</style>

	<header class="container">
		<div class="row">
			<div class="col-md-4" >
			<div id="logo" style="margin-top: -10px;"><img src="images/logo.png" alt="" width="320px"  class="imglogo"></div>
			</div>
			<div class="col-md-4">
				<form class="form-search" method="GET" action="timkiem.php">  
					<input style="padding: 0px;" type="text"  class="input-medium search-query" name="txttimkiem" required>  
					<button  type="submit" name="tk" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
				</form>
			</div>
			<div class="col-md-4">
				<div id="cart"><a class="btn btn-1" href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span>Giỏ hàng (<?php
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
				echo count($_SESSION['cart']);
			 }
			else
			{
				echo   "0";
			}
			
			
			?>)</a></div>
			</div>
		</div>
	</header>
	




