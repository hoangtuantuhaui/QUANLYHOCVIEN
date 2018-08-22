<?php 

    include "connect.php";
    $hv_id = $_GET['hv_id'];
    $qr = $conn->query("select hocvien.hv_id, hocvien.hv_name, hocvien.hv_date, hocvien.hv_gender, hocvien.hv_phone, hocvien.hv_email, hocvien.hv_skype, hocvien.hv_address, truong.t_name from hocvien inner join truong WHERE (hocvien.t_id = truong.t_id) and (hv_id ='$hv_id')");
    $rs = mysqli_fetch_array($qr);
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Khóa Học Lập Trình Laravel Framework 5.x Tại Khoa Phạm">
    <meta name="author" content="">
    <title>Admin - Khoa Phạm</title>

    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- DataTables CSS -->
    <link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Admin Area - Khoa Phạm</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="hv_list.php"><i class="fa fa-dashboard fa-fw"></i> Danh Mục</a>
                        </li>
                        <li>
                            <a href="hv_list.php"><i class="fa fa-bar-chart-o fa-fw"></i> Học Viên <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="hv_list.php">Danh sách học viên</a>
                                </li>
                                <li>
                                    <a href="hv_add.php">Thêm học viên</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Học Viên
                            <small>Edit</small>
                        </h1>
                    </div>
                    <!-- /.col-lg-12 -->
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form action="xl_edithocvien.php" method="post">
                            <div class="form-group">
                                <input type="hidden" name="hv_id" value="<?= $rs['hv_id']; ?>"></td>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Họ và tên :</label>
                                <input type="text" class="form-control" name="hv_name" value="<?= $rs['hv_name']; ?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Ngày sinh :</label>
                                <input type="date" class="form-control" name="hv_date" value="<?= $rs['hv_date']; ?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Giới tính :</label>
                                <input type="text" class="form-control" name="hv_gender" value="<?= $rs['hv_gender']; ?>">
                            </div>                                
                            <div class="form-group">
                                <label for="exampleInputPassword1">Số điện thoại :</label>
                                <input type="text" class="form-control" name="hv_phone" value="<?= $rs['hv_phone']; ?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Email :</label>
                                <input type="text" class="form-control" name="hv_email" value="<?= $rs['hv_email']; ?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Skype :</label>
                                <input type="text" class="form-control" name="hv_skype" value="<?= $rs['hv_skype']; ?>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Địa chỉ :</label>
                                <input type="text" class="form-control" name="hv_address" value="<?= $rs['hv_address']; ?>">  
                            </div>                                          
                            <div class="form-group">
                                <label for="exampleInputPassword1">Trường :</label>
                                <input type="text" class="form-control" name="t_id" value="<?= $rs['t_name']; ?>">
                            </div>
                            <div class="form-group button-add">
                                <button type="submit" class="btn btn-add btn-primary"> Cập nhật</button>
                            </div>          
                        </form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

    <!-- DataTables JavaScript -->
    <script src="bower_components/DataTables/media/js/jquery.dataTables.min.js"></script>
    <script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
</body>

</html>
