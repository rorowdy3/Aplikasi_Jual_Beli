<?php
include "db.php";

$id_produk = $_GET['Id_produk'];
$banyak = $_GET['banyak'];
$sql = "INSERT INTO tb_chart (Id_produk, banyak, chart_id) VALUES ('1', '90', NULL);";
$query = mysqli_query($conn, $sql);

if (mysqli_affected_rows($conn) > 0) {
    echo "<script>alert('Berhasil membeli')</script>";
    # code...
}