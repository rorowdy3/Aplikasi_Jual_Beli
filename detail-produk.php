<?php
error_reporting(0);
include 'db.php';
// $kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
// $a = mysqli_fetch_object($kontak);

$produk = mysqli_query($conn, "SELECT * FROM tb_product WHERE product_id = '" . $_GET['id'] . "' ");
$p = mysqli_fetch_object($produk);

?>
<!DOCTYPE html>
<html>
<?php include 'head.php';?>
<body>
	<!-- header -->
	<?php include 'header.php'; ?>

	<!-- product detail -->
	<div class="section">
		<div class="container">
			<h3>Detail Produk</h3>
			<div class="box">
				<div class="col-2">
					<img src="produk/<?php echo $p->product_image ?>" width="100%">
				</div>
				<div class="col-2">
					<h3><?php echo $p->product_name ?></h3>
					<h4>Rp. <?php echo number_format($p->product_price) ?></h4>
					<p>Deskripsi :<br>
						<?php echo $p->product_description ?>
					</p>
					<p><a href="https://api.whatsapp.com/send?phone=6287756522083<?php echo $a->admin_telp ?>&text=Hai, saya tertarik dengan produk Anda." target="_blank">
							Hubungi via Whatsapp
							<img src="img/wa.png" width="50px"></a>
					</p>
					<button class="btn" href="add-cart.php?Id_produk=<?php echo $_GET['id'];?>&banyak=<?php echo "10";?>"  style="background-color:green;color:white; width:100px; height:30px; border:none;"><a>BELI</a>

					<?php
					$cart = mysqli_query($conn, "SELECT * FROM tb_cart WHERE Id_produk = '" . $_GET['id'] . "' ");
					$c = mysqli_fetch_object($cart);
					?>
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<?php include 'footer.php';?>
</body>

</html>