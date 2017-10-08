<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" Runat="Server">
    <title> ALL1N Dashboard | Anasayfa </title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="icerik" Runat="Server">
    <section class="content">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-aqua"><i class="fa fa-map-o "></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Trafik Yoğunluğu</span>
                                <span class="info-box-number">32<small>%</small></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-red"><i class="fa fa-flag"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Yol Çalışması</span>
                                <span class="info-box-number">22</span>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix visible-sm-block"></div>

                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-green"><i class="fa fa-car"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Trafik Kazaları</span>
                                <span class="info-box-number">35</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">TRAFİK İHLALİ</span>
                                <span class="info-box-number">136</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-header with-border">
                                <h3 class="box-title">Trafik İhlali Raporu</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-box-tool dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-wrench"></i></button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                </div>
                            </div>
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-8">

                                        <div class="chart">
                                            <img src="dist/img/Tra_ihlal.png" style="height:auto;width:100%;">
                                            <p class="text-center">
                                                <strong>Tarih:  7 Ekim 2017 <br>Lokasyon : Bornova -  Konak</strong>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <p class="text-center">
                                            <strong>Ulaşım sorunları <span class=""></span></strong>
                                        </p>

                                        <div class="progress-group">
                                            <span class="progress-text">Trafik Yoğunluğu</span>
                                            <span class="progress-number"><b>32</b>/100</span>

                                            <div class="progress sm">
                                                <div class="progress-bar progress-bar-aqua" style="width: 32%"></div>
                                            </div>
                                        </div>
                                        <div class="progress-group">
                                            <span class="progress-text">Yol Çalışmaları</span>
                                            <span class="progress-number"><b>40</b>/100</span>

                                            <div class="progress sm">
                                                <div class="progress-bar progress-bar-red" style="width: 40%"></div>
                                            </div>
                                        </div>
                                        <div class="progress-group">
                                            <span class="progress-text">Trafik Kazaları</span>
                                            <span class="progress-number"><b>60</b>/100</span>

                                            <div class="progress sm">
                                                <div class="progress-bar progress-bar-green" style="width: 60%"></div>
                                            </div>
                                        </div>
                                        <div class="progress-group">
                                            <span class="progress-text">Trafik İhalleri</span>
                                            <span class="progress-number"><b>50</b>/100</span>

                                            <div class="progress sm">
                                                <div class="progress-bar progress-bar-yellow" style="width: 50%"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="box box-success">
                            <div class="box-header with-border">
                                <h3 class="box-title">Ulaşım Verileri</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                </div>
                            </div>
                            <div class="box-body no-padding">
                                <div class="row">
                                    <div class="col-md-9 col-sm-8">
                                        <div class="pad">
                                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118946.12943735984!2d27.06807974622795!3d38.426038286628845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14bbd862a762cacd%3A0x628cbba1a59ce8fe!2zxLB6bWly!5e0!3m2!1str!2str!4v1507381104715" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4">
                                        <div class="pad box-pane-right bg-green" style="min-height: 280px">
                                            <div class="description-block margin-bottom">
                                                <div class="sparkbar pad" data-color="#fff">
                                                    <h3>Toplu Ulaşım Verileri</h3>
                                                </div>
                                                <h5 class="description-header">Günlük Yolcu Sayısı</h5>
                                                <span class="description-text">+1,5 Milyon</span>
                                            </div>
                                            <div class="description-block margin-bottom">
                                                <div class="sparkbar pad" data-color="#fff">İzban Yolcu Sayısı</div>
                                                <h5 class="description-header">Günlük</h5>
                                                <span class="description-text">+300.000</span>
                                            </div>
                                            <div class="description-block">
                                                <div class="sparkbar pad" data-color="#fff">Bisiklet Yolları</div>
                                                <h5 class="description-header">+100 Km</h5>
                                                <span class="description-text">Ulaştı</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="box box-info" style="margin:0 0 0 222px;">
                            <div class="box-header with-border">
                                <h3 class="box-title">Yol Çalışmaları</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                </div>
                            </div>
                            <div class="box-body">
                                <div class="table-responsive">
                                    <table class="table no-margin">
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
                                                <td><a href="pages/examples/invoice.html">İZMİR</a></td>
                                                <td>Bornova</td>
                                                <td><span class="label label-success">Tamamlandı</span></td>
                                                <td>
                                                    <div class="sparkbar" data-color="#00a65a" data-height="20">07.10.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html">İZMİR</a></td>
                                                <td>Bornova</td>
                                                <td><span class="label label-success">Tamamlandı</span></td>
                                                <td>
                                                    <div class="sparkbar" data-color="#f39c12" data-height="20">16.10.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html">İZMİR</a></td>
                                                <td>Bornova</td>
                                                <td><span class="label label-warning">Yapım Aşamasında</span></td>
                                                <td>
                                                    <div class="sparkbar" data-color="#f56954" data-height="20">22.10.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html">İZMİR</a></td>
                                                <td>Konak</td>
                                                <td><span class="label label-warning">Yapım Aşamasında</span></td>
                                                <td>
                                                    <div class="sparkbar" data-color="#00c0ef" data-height="20">16.10.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html">İZMİR</a></td>
                                                <td>Alasancak</td>
                                                <td><span class="label label-danger">Proje Aşamasında</span></td>
                                                <td>
                                                    <div class="sparkbar" data-color="#f39c12" data-height="20">01.12.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html">İZMİR</a></td>
                                                <td>Alasancak</td>
                                                <td><span class="label label-danger">Proje Aşamasında</span></td>
                                                <td>
                                                    <div class="sparkbar" data-color="#f56954" data-height="20">31.12.2017</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="pages/examples/invoice.html">İZMİR</a></td>
                                                <td>Fahrettin Altay</td>
                                                <td><span class="label label-success">Tamamlandı</span></td>
                                                <td>
                                                    <div class="sparkbar" data-color="#00a65a" data-height="20">06.10.2017</div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="box-footer clearfix">
                                <a href="javascript:void(0)" class="btn btn-sm btn-info btn-flat pull-left">Detaylı Göster</a>
                                <a href="javascript:void(0)" class="btn btn-sm btn-default btn-flat pull-right">Tüm Yol Çalışmalarını Göster</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Trafik Yoğunluğu</h3>

                                <div class="box-tools pull-right">
                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                </div>
                            </div>
                            <div class="box-body">
                                <ul class="products-list product-list-in-box">
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="dist/img/Maps.png" alt="Product Image">
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript:void(0)" class="product-title">İzmir / Bornova 
                      <span class="label label-warning pull-right">Yoğun</span></a>
                                            <span class="product-description">
                          Kazım Dirik Mahallesi
                        </span>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="dist/img/Maps.png" alt="Product Image">
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript:void(0)" class="product-title">İzmir / Konak
                      <span class="label label-info pull-right">Açık</span></a>
                                            <span class="product-description">
                          Atatürk Caddesi
                        </span>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="dist/img/Maps.png" alt="Product Image">
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript:void(0)" class="product-title">İzmir / Konak <span
                        class="label label-danger pull-right">Çok Yoğun</span></a>
                                            <span class="product-description">
                         Kıbrıs Şehitleri Caddesi
                        </span>
                                        </div>
                                    </li>
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="dist/img/Maps.png" alt="Product Image">
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript:void(0)" class="product-title">İzmir /Fahrettin Altay
                      <span class="label label-success pull-right">Seyir Halinde</span></a>
                                            <span class="product-description">
                          Mustafa Kemal Sahil Bulvarı
                        </span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="box-footer text-center">
                                <a href="javascript:void(0)" class="uppercase">Tümünü Göster</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
</asp:Content>

