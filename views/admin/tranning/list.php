<?php 
  $dbc=mysqli_connect('localhost','root','','qlhv');
  if (!$dbc) {
      echo 'Ket noi khong thanh cong';    
  }
  else {
    mysqli_set_charset($dbc,'utf8');
  }
 ?>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

  <title>Quản lý khóa đào tạo</title>
</head>
<body>

  <div class="container">
    <h3>Danh sách các khóa đào tạo</h3>
    <table class="table" style="text-align: center;">
      <thead>
        <tr>
          <th scope="col">ID</th>
          <th scope="col">Người hướng dẫn</th>
          <th scope="col">Tên khóa đào tạo</th>
          <th scope="col">Mã khóa đào tạo</th>
          <th scope="col">Ngày bắt đầu</th>
          <th scope="col">Ngày kết thúc</th>
        </tr>
      </thead>
      <tbody>
        <?php 
          $queryl="SELECT * FROM tranning";
          $result=mysqli_query($dbc,$queryl) or die ("Loi truy van:".mysqli_error($dbc));
           while($rows=mysqli_fetch_array($result,MYSQLI_ASSOC)){
         ?>
        <tr>
          <th scope="row"><?php echo $rows['id']; ?></th>
          <td><?php echo $rows['id_instructor']; ?></td>
          <td><?php echo $rows['name']; ?></td>
          <td><?php echo $rows['makhdt']; ?></td>
          <td><?php echo $rows['date_start']; ?></td>
          <td><?php echo $rows['date_end']; ?></td>
        </tr>
        <?php
      }
      ?>
      </tbody>
    </table>
  </div>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>