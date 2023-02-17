<?php 
	session_start();
	if($_SESSION['status_login'] != true){
		echo '<script>window.location="login.php"</script>';
	}
	?>
<!DOCTYPE html>
<html>
<?php include 'head.php'; ?>
<body>
	<!-- header -->
	<?php include 'header-admin.php' ?>


	<!-- content -->
	<div class="section">
		<div class="container">
			<h3>Dashboard</h3>
			<div class="box">
				<h4>Selamat Datang Admin, di Toko Online</h4>
			</div>
		</div>
	</div>

	<!-- footer -->
	<?php include 'footer.php'; ?>
</body>
</html>