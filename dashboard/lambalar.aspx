﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lambalar.aspx.cs" Inherits="lambalar" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TORNET 32 - Trafik Lambaları</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

</head>

<body class="hold-transition skin-blue sidebar-mini">
      <form id="form1" runat="server">
    <div class="wrapper">

        <header class="main-header">

            <!-- Logo -->
            <a href="index.html" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>T</b>32</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>TORNET</b> 32</span>
            </a>

            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->

                        <!-- Notifications: style can be found in dropdown.less -->

                        <!-- Tasks: style can be found in dropdown.less -->

                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Demo Kullanıcı</span>
            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                    <p>
                                        Demo Kullanıcı Hesabı
                                        <small></small>
                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <li class="user-body">
                                    <div class="row">
                                        <div class="col-xs-4 text-center">
                                            <a href="#"></a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#"></a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#"></a>
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profil</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-default btn-flat">Çıkış</a>
                                    </div>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </div>

            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>Demo Kullanıcı</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- search form -->

                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">Menüler</li>
                    <li>
                        <a href="index.html">
            <i class="fa fa-dashboard"></i> <span>Anasayfa</span>
            <span class="pull-right-container">
              
            </span>         </a>

                    </li>



                    <li>
                        <a href="tra_yog.html">
            <i class="fa fa-map-o "></i> <span>Trafik Yoğunluğu</span>
            
          </a>

                        <li><a href=" "><i class="fa fa-road "></i> <span>Trafik Lambaları</span></a></li>
                        <li class="header ">LABELS</li>
                        <li><a href="# "><i class="fa fa-circle-o text-red "></i> <span>Important</span></a></li>
                        <li><a href="# "><i class="fa fa-circle-o text-yellow "></i> <span>Warning</span></a></li>
                        <li><a href="# "><i class="fa fa-circle-o text-aqua "></i> <span>Information</span></a></li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper ">
            <!-- Content Header (Page header) -->
            <section class="content-header ">
                <h1>
                    Ulaşım Gösterge Paneli
                    <small>Version 1.0</small>
                </h1>
                <ol class="breadcrumb ">
                    <li><a href="index.html "><i class="fa fa-dashboard "></i> Anasayfa</a></li>
                    <li class="active ">Trafik Lambaları</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content ">
                <!-- Info boxes -->
                <div class="row ">
                    <div class="col-md-3 col-sm-6 col-xs-12 ">
                        <div class="info-box ">
                            <span class="info-box-icon bg-aqua "><i class="fa fa-map-o "></i></span>

                            <div class="info-box-content ">
                                <span class="info-box-text ">Trafik Yoğunluğu</span>
                                <span class="info-box-number ">70<small>%</small></span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-md-3 col-sm-6 col-xs-12 ">
                        <div class="info-box ">
                            <span class="info-box-icon bg-red "><i class="fa fa-flag "></i></span>

                            <div class="info-box-content ">
                                <span class="info-box-text ">Yol Çalışması</span>
                                <span class="info-box-number ">22</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->

                    <!-- fix for small devices only -->
                    <div class="clearfix visible-sm-block "></div>

                    <div class="col-md-3 col-sm-6 col-xs-12 ">
                        <div class="info-box ">
                            <span class="info-box-icon bg-green "><i class="fa fa-car "></i></span>

                            <div class="info-box-content ">
                                <span class="info-box-text ">Trafik Kazaları</span>
                                <span class="info-box-number ">35</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-md-3 col-sm-6 col-xs-12 ">
                        <div class="info-box ">
                            <span class="info-box-icon bg-yellow "><i class="ion ion-ios-people-outline "></i></span>

                            <div class="info-box-content ">
                                <span class="info-box-text ">TRAFİK İHLALİ</span>
                                <span class="info-box-number ">136</span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->

                <div class="row ">
                    <div class="col-md-12 ">
                        <div class="box ">
                            <div class="box-header with-border ">
                                <h3 class="box-title ">Trafik Lambaları</h3>

                                <div class="box-tools pull-right ">
                                    <button type="button " class="btn btn-box-tool " data-widget="collapse "><i class="fa fa-minus "></i>
                </button>
                                    <div class="btn-group ">
                                        <button type="button " class="btn btn-box-tool dropdown-toggle " data-toggle="dropdown ">
                    <i class="fa fa-wrench "></i></button>
                                        <ul class="dropdown-menu " role="menu ">
                                            <li><a href="# ">Action</a></li>
                                            <li><a href="# ">Another action</a></li>
                                            <li><a href="# ">Something else here</a></li>
                                            <li class="divider "></li>
                                            <li><a href="# ">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <button type="button " class="btn btn-box-tool " data-widget="remove "><i class="fa fa-times "></i></button>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body ">
                                <div class="row ">
                                    <div class="col-md-12 ">
                                        <div class="container" >
                                            <h2>Trafik Lambaları</h2>
                                            
                                        
                                                <div class="form-group">
                                                    <label for="sel1">İlçe Seçiniz :</label>
                                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">


                                                    </asp:ScriptManagerProxy>
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

                                                        <ContentTemplate>
                                                             <asp:DropDownList ID="lamba" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lambalar_SelectedIndexChanged">
                                                        <asp:ListItem Value="1">Sokak Lambası</asp:ListItem>
                                                        <asp:ListItem Value="0">Trafik Lambası</asp:ListItem>

                                                    </asp:DropDownList>
                                                <br> <p>Görev Seçiniz</p>
                                                      <asp:DropDownList ID="isiklar" runat="server"></asp:DropDownList>
                                               

                                                            <asp:Button ID="Button1" runat="server" Text="Çalıştır" OnClick="Button1_Click" />
                                                        </ContentTemplate>

                                                    </asp:UpdatePanel>
                                                   

                                                </div>
                                          
                                        </div>




                                    </div>

                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->
                            </div>

                            <!-- /.box-footer -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->

                <!-- Main row -->
                <div class="row ">
                    <!-- Left col -->
                    <div class="col-md-8 ">
                        <!-- MAP & BOX PANE -->
                        <div class="box box-success ">
                            <div class="box-header with-border ">
                                <h3 class="box-title ">Ulaşım Verileri</h3>

                                <div class="box-tools pull-right ">
                                    <button type="button " class="btn btn-box-tool " data-widget="collapse "><i class="fa fa-minus "></i>
                </button>
                                    <button type="button " class="btn btn-box-tool " data-widget="remove "><i class="fa fa-times "></i></button>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body no-padding ">
                                <div class="row ">
                                    <div class="col-md-9 col-sm-8 ">
                                        <div class="pad ">
                                            <!-- Map will be created here -->
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118946.12943735984!2d27.06807974622795!3d38.426038286628845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14bbd862a762cacd%3A0x628cbba1a59ce8fe!2zxLB6bWly!5e0!3m2!1str!2str!4v1507381104715 " width="700px " height="500px " frameborder="0 " style="border:0 " allowfullscreen></iframe>
                                        </div>
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-md-3 col-sm-4 ">
                                        <div class="pad box-pane-right bg-green " style="min-height: 280px ">
                                            <div class="description-block margin-bottom ">
                                                <div class="sparkbar pad " data-color="#fff ">
                                                    <h3>Toplu Ulaşım Verileri</h3>
                                                </div>
                                                <h5 class="description-header ">Günlük Yolcu Sayısı</h5>
                                                <span class="description-text ">+1,5 Milyon</span>
                                            </div>
                                            <!-- /.description-block -->
                                            <div class="description-block margin-bottom ">
                                                <div class="sparkbar pad " data-color="#fff ">İzban Yolcu Sayısı</div>
                                                <h5 class="description-header ">Günlük</h5>
                                                <span class="description-text ">+300.000</span>
                                            </div>
                                            <!-- /.description-block -->
                                            <div class="description-block ">
                                                <div class="sparkbar pad " data-color="#fff ">Bisiklet Yolları</div>
                                                <h5 class="description-header ">+100 Km</h5>
                                                <span class="description-text ">Ulaştı</span>
                                            </div>
                                            <!-- /.description-block -->
                                        </div>
                                    </div>
                                    <!-- /.col -->
                                </div>
                                <!-- /.row -->
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->


                        <!-- TABLE: LATEST ORDERS -->
                        <div class="box box-info " style="margin:0 0 0 222px; ">
                            <div class="box-header with-border ">
                                <h3 class="box-title ">Yol Çalışmaları</h3>

                                <div class="box-tools pull-right ">
                                    <button type="button " class="btn btn-box-tool " data-widget="collapse "><i class="fa fa-minus "></i>
                </button>
                                    <button type="button " class="btn btn-box-tool " data-widget="remove "><i class="fa fa-times "></i></button>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body ">
                                <div class="table-responsive ">
                                    <table class="table no-margin ">
                                        <thead>
                                            <tr>
                                                <th>İL</th>
                                                <th>İLÇE</th>
                                                <th>STATÜ</th>
                                                <th>TAHMİNİ BİTİŞ TARİHİ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html ">İZMİR</a></td>
                                                <td>Bornova</td>
                                                <td><span class="label label-success ">Tamamlandı</span></td>
                                                <td>
                                                    <div class="sparkbar " data-color="#00a65a " data-height="20 ">07.10.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html ">İZMİR</a></td>
                                                <td>Bornova</td>
                                                <td><span class="label label-success ">Tamamlandı</span></td>
                                                <td>
                                                    <div class="sparkbar " data-color="#f39c12 " data-height="20 ">16.10.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html ">İZMİR</a></td>
                                                <td>Bornova</td>
                                                <td><span class="label label-warning ">Yapım Aşamasında</span></td>
                                                <td>
                                                    <div class="sparkbar " data-color="#f56954 " data-height="20 ">22.10.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html ">İZMİR</a></td>
                                                <td>Konak</td>
                                                <td><span class="label label-warning ">Yapım Aşamasında</span></td>
                                                <td>
                                                    <div class="sparkbar " data-color="#00c0ef " data-height="20 ">16.10.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html ">İZMİR</a></td>
                                                <td>Alasancak</td>
                                                <td><span class="label label-danger ">Proje Aşamasında</span></td>
                                                <td>
                                                    <div class="sparkbar " data-color="#f39c12 " data-height="20 ">01.12.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html ">İZMİR</a></td>
                                                <td>Alasancak</td>
                                                <td><span class="label label-danger ">Proje Aşamasında</span></td>
                                                <td>
                                                    <div class="sparkbar " data-color="#f56954 " data-height="20 ">31.12.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html ">İZMİR</a></td>
                                                <td>Fahrettin Altay</td>
                                                <td><span class="label label-success ">Tamamlandı</span></td>
                                                <td>
                                                    <div class="sparkbar " data-color="#00a65a " data-height="20 ">06.10.2017</div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer clearfix ">
                                <a href="javascript:void(0) " class="btn btn-sm btn-info btn-flat pull-left ">Detaylı Göster</a>
                                <a href="javascript:void(0) " class="btn btn-sm btn-default btn-flat pull-right ">Tüm Yol Çalışmalarını Göster</a>
                            </div>
                            <!-- /.box-footer -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->

                    <div class="col-md-4 ">


                        <!-- /.box -->

                        <!-- PRODUCT LIST -->
                        <div class="box box-primary ">
                            <div class="box-header with-border ">
                                <h3 class="box-title ">Trafik Yoğunluğu</h3>

                                <div class="box-tools pull-right ">
                                    <button type="button " class="btn btn-box-tool " data-widget="collapse "><i class="fa fa-minus "></i>
                </button>
                                    <button type="button " class="btn btn-box-tool " data-widget="remove "><i class="fa fa-times "></i></button>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body ">
                                <ul class="products-list product-list-in-box ">
                                    <li class="item ">
                                        <div class="product-img ">
                                            <img src="dist/img/Maps.png " alt="Product Image ">
                                        </div>
                                        <div class="product-info ">
                                            <a href="javascript:void(0) " class="product-title ">İzmir / Bornova 
                      <span class="label label-warning pull-right ">Yoğun</span></a>
                                            <span class="product-description ">
                          Kazım Dirik Mahallesi
                        </span>
                                        </div>
                                    </li>
                                    <!-- /.item -->
                                    <li class="item ">
                                        <div class="product-img ">
                                            <img src="dist/img/Maps.png " alt="Product Image ">
                                        </div>
                                        <div class="product-info ">
                                            <a href="javascript:void(0) " class="product-title ">İzmir / Konak
                      <span class="label label-info pull-right ">Açık</span></a>
                                            <span class="product-description ">
                          Atatürk Caddesi
                        </span>
                                        </div>
                                    </li>
                                    <!-- /.item -->
                                    <li class="item ">
                                        <div class="product-img ">
                                            <img src="dist/img/Maps.png " alt="Product Image ">
                                        </div>
                                        <div class="product-info ">
                                            <a href="javascript:void(0) " class="product-title ">İzmir / Konak <span
                        class="label label-danger pull-right ">Çok Yoğun</span></a>
                                            <span class="product-description ">
                         Kıbrıs Şehitleri Caddesi
                        </span>
                                        </div>
                                    </li>
                                    <!-- /.item -->
                                    <li class="item ">
                                        <div class="product-img ">
                                            <img src="dist/img/Maps.png " alt="Product Image ">
                                        </div>
                                        <div class="product-info ">
                                            <a href="javascript:void(0) " class="product-title ">İzmir /Fahrettin Altay
                      <span class="label label-success pull-right ">Seyir Halinde</span></a>
                                            <span class="product-description ">
                          Mustafa Kemal Sahil Bulvarı
                        </span>
                                        </div>
                                    </li>
                                    <!-- /.item -->
                                </ul>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer text-center ">
                                <a href="javascript:void(0) " class="uppercase ">Tümünü Göster</a>
                            </div>
                            <!-- /.box-footer -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <footer class="main-footer ">
            <div class="pull-right hidden-xs ">
                <b>Version</b> 1.0
            </div>
            <strong>Copyright &copy; 2017 <a href="# ">Tornet 32</a>.</strong> Her hakkı saklıdır.
        </footer>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark ">
            <!-- Create the tabs -->
            <ul class="nav nav-tabs nav-justified control-sidebar-tabs ">
                <li><a href="#control-sidebar-home-tab " data-toggle="tab "><i class="fa fa-home "></i></a></li>
                <li><a href="#control-sidebar-settings-tab " data-toggle="tab "><i class="fa fa-gears "></i></a></li>
            </ul>
            <!-- Tab panes -->
            <div class="tab-content ">
                <!-- Home tab content -->
                <div class="tab-pane " id="control-sidebar-home-tab ">
                    <h3 class="control-sidebar-heading ">Recent Activity</h3>
                    <ul class="control-sidebar-menu ">
                        <li>
                            <a href="javascript:void(0) ">
              <i class="menu-icon fa fa-birthday-cake bg-red "></i>

              <div class="menu-info ">
                <h4 class="control-sidebar-subheading ">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0) ">
              <i class="menu-icon fa fa-user bg-yellow "></i>

              <div class="menu-info ">
                <h4 class="control-sidebar-subheading ">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0) ">
              <i class="menu-icon fa fa-envelope-o bg-light-blue "></i>

              <div class="menu-info ">
                <h4 class="control-sidebar-subheading ">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0) ">
              <i class="menu-icon fa fa-file-code-o bg-green "></i>

              <div class="menu-info ">
                <h4 class="control-sidebar-subheading ">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
                        </li>
                    </ul>
                    <!-- /.control-sidebar-menu -->

                    <h3 class="control-sidebar-heading ">Tasks Progress</h3>
                    <ul class="control-sidebar-menu ">
                        <li>
                            <a href="javascript:void(0) ">
                                <h4 class="control-sidebar-subheading ">
                                    Custom Template Design
                                    <span class="label label-danger pull-right ">70%</span>
                                </h4>

                                <div class="progress progress-xxs ">
                                    <div class="progress-bar progress-bar-danger " style="width: 70% "></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0) ">
                                <h4 class="control-sidebar-subheading ">
                                    Update Resume
                                    <span class="label label-success pull-right ">95%</span>
                                </h4>

                                <div class="progress progress-xxs ">
                                    <div class="progress-bar progress-bar-success " style="width: 95% "></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0) ">
                                <h4 class="control-sidebar-subheading ">
                                    Laravel Integration
                                    <span class="label label-warning pull-right ">50%</span>
                                </h4>

                                <div class="progress progress-xxs ">
                                    <div class="progress-bar progress-bar-warning " style="width: 50% "></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0) ">
                                <h4 class="control-sidebar-subheading ">
                                    Back End Framework
                                    <span class="label label-primary pull-right ">68%</span>
                                </h4>

                                <div class="progress progress-xxs ">
                                    <div class="progress-bar progress-bar-primary " style="width: 68% "></div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- /.control-sidebar-menu -->

                </div>
                <!-- /.tab-pane -->

                <!-- Settings tab content -->
                <div class="tab-pane " id="control-sidebar-settings-tab ">
                    <form method="post ">
                        <h3 class="control-sidebar-heading ">General Settings</h3>

                        <div class="form-group ">
                            <label class="control-sidebar-subheading ">
              Report panel usage
              <input type="checkbox " class="pull-right " checked>
            </label>

                            <p>
                                Some information about this general settings option
                            </p>
                        </div>
                        <!-- /.form-group -->

                        <div class="form-group ">
                            <label class="control-sidebar-subheading ">
              Allow mail redirect
              <input type="checkbox " class="pull-right " checked>
            </label>

                            <p>
                                Other sets of options are available
                            </p>
                        </div>
                        <!-- /.form-group -->

                        <div class="form-group ">
                            <label class="control-sidebar-subheading ">
              Expose author name in posts
              <input type="checkbox " class="pull-right " checked>
            </label>

                            <p>
                                Allow the user to show his name in blog posts
                            </p>
                        </div>
                        <!-- /.form-group -->

                        <h3 class="control-sidebar-heading ">Chat Settings</h3>

                        <div class="form-group ">
                            <label class="control-sidebar-subheading ">
              Show me as online
              <input type="checkbox " class="pull-right " checked>
            </label>
                        </div>
                        <!-- /.form-group -->

                        <div class="form-group ">
                            <label class="control-sidebar-subheading ">
              Turn off notifications
              <input type="checkbox " class="pull-right ">
            </label>
                        </div>
                        <!-- /.form-group -->

                        <div class="form-group ">
                            <label class="control-sidebar-subheading ">
              Delete chat history
              <a href="javascript:void(0) " class="text-red pull-right "><i class="fa fa-trash-o "></i></a>
            </label>
                        </div>
                        <!-- /.form-group -->
                    </form>
                </div>
                <!-- /.tab-pane -->
            </div>
        </aside>
        <!-- /.control-sidebar -->
        <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
        <div class="control-sidebar-bg "></div>

    </div>
  </form>

    <!-- ./wrapper -->

    <!-- jQuery 3 -->
    <script src="bower_components/jquery/dist/jquery.min.js "></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js "></script>
    <!-- FastClick -->
    <script src="bower_components/fastclick/lib/fastclick.js "></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js "></script>
    <!-- Sparkline -->
    <script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js "></script>
    <!-- jvectormap  -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js "></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js "></script>
    <!-- SlimScroll -->
    <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js "></script>
    <!-- ChartJS -->
    <script src="bower_components/Chart.js/Chart.js "></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard2.js "></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js "></script>
</body>

</html>
