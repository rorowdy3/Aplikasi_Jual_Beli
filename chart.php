<?php
include 'db.php';
include 'head.php';
include 'header-admin.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load('current', {
      'packages': ['corechart']
    });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['Produk', 'Penjualan'],
        <?php
        $query = 'SELECT * FROM tb_chart';
        $query2 = mysqli_query($conn, $query);

        while ($row = mysqli_fetch_array($query2)) {
          $id_produk = $row['Id_produk'];
          $banyak = $row['banyak'];

          echo "[$id_produk, $banyak],";
        }



        ?>

        // ['2004',  1000,      400],
        // ['2005',  1170,      460],
        // ['2006',  660,       1120],
        // ['2007',  1030,      540]
      ]);

      var options = {
        title: 'Performa penjualan peritem',
        curveType: 'function',
        legend: {
          position: 'bottom'
        }
      };

      var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

      chart.draw(data, options);
    }
  </script>

  <!-- kedua -->
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart', 'bar']});
      google.charts.setOnLoadCallback(drawStuff);

      function drawStuff() {

        var button = document.getElementById('change-chart');
        var chartDiv = document.getElementById('chart_div');

        var data = google.visualization.arrayToDataTable([
          ['Produk', 'Penjualan'],
        <?php
        $query = 'SELECT * FROM tb_chart';
        $query2 = mysqli_query($conn, $query);

        while ($row = mysqli_fetch_array($query2)) {
          $id_produk = $row['Id_produk'];
          $banyak = $row['banyak'];

          echo "[$id_produk, $banyak],";
        }



        ?>
        //   ['Galaxy', 'Distance', 'Brightness'],
        //   ['Canis Major Dwarf', 8000, 23.3],
        //   ['Sagittarius Dwarf', 24000, 4.5],
        //   ['Ursa Major II Dwarf', 30000, 14.3],
        //   ['Lg. Magellanic Cloud', 50000, 0.9],
        //   ['Bootes I', 60000, 13.1]
        ]);

        var materialOptions = {
          width: 900,
          chart: {
            title: 'Performa Penjualan Peritem',
            subtitle: ''
          },
          series: {
            0: { axis: 'distance' }, // Bind series 0 to an axis named 'distance'.
            1: { axis: 'brightness' } // Bind series 1 to an axis named 'brightness'.
          },
          axes: {
            y: {
              distance: {label: 'parsecs'}, // Left y-axis.
              brightness: {side: 'right', label: 'apparent magnitude'} // Right y-axis.
            }
          }
        };

        var classicOptions = {
          width: 900,
          series: {
            0: {targetAxisIndex: 0},
            1: {targetAxisIndex: 1}
          },
          title: 'Performa Penjualan Peritem ',
          vAxes: {
            // Adds titles to each axis.
            0: {title: 'parsecs'},
            1: {title: 'apparent magnitude'}
          }
        };

        function drawMaterialChart() {
          var materialChart = new google.charts.Bar(chartDiv);
          materialChart.draw(data, google.charts.Bar.convertOptions(materialOptions));
          button.innerText = 'Change to Classic';
          button.onclick = drawClassicChart;
        }

        function drawClassicChart() {
          var classicChart = new google.visualization.ColumnChart(chartDiv);
          classicChart.draw(data, classicOptions);
          button.innerText = 'Change to Material';
          button.onclick = drawMaterialChart;
        }

        drawMaterialChart();
    };
    </script>

</head>

<body>
  <?php
  $query = 'SELECT * FROM tb_chart';
  $query2 = mysqli_query($conn, $query);

  while ($row = mysqli_fetch_array($query2)) {
    $id_produk = $row['Id_produk'];
    $banyak = $row['banyak'];

    // echo "['$id_produk', '$banyak']";
  }



  ?>
  <div style="display:flex; flex-direction:row;">
    <div id="curve_chart" style="width: 900px; height: 500px; padding:100px; "></div>
</div>
    <div style="display:flex; flex-direction:row;">

    <button id="change-chart">Change to Classic</button>
    <br><br>
    <div id="chart_div" style="width: 800px; height: 500px;"></div>
  </div>

  <?php include 'footer.php'; ?>

</body>

</html>