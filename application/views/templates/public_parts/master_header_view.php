<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Diamond Tour</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>fontAwesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/') ?>client.css">
    <link rel="stylesheet" href="<?php echo site_url('assets/css/rateit.css') ?>">

	<!-- jQuery 3 -->
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="<?php echo site_url('assets/lib/') ?>bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/daterangepicker.css">

    <link rel="stylesheet" href="<?php echo site_url('assets/lib/') ?>bootstrap/css/bootstrap-datepicker.min.css">
	<!-- Main Js -->
	<script src="<?php echo site_url('assets/js/') ?>main.js"></script>
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.validate.min.js"></script>
	<!-- Easing JS -->
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.easing.1.3.js"></script>

	<!-- Waypoint Js -->
	<script src="<?php echo site_url('assets/lib/') ?>jquery/jquery.waypoints.min.js"></script>
	<script src="<?php echo site_url('assets/js/jquery.rateit.js') ?>"></script>


</head>

<body>

<section id="top-nav" class="container-fluid">
	<div class="container">
		<div class="row">
			<div class="left col-sm-6 col-xs-12">
				<ul>
					<li>
						<a href="<?php echo base_url('about/')?>">
							<i class="fa fa-user-circle-o" aria-hidden="true"></i> <?php echo $this->lang->line('about') ?>
						</a>
					</li>
					<li>
						<a href="<?php echo base_url('contact/')?>">
							<i class="fa fa-phone" aria-hidden="true"></i> <?php echo $this->lang->line('contact') ?>
						</a>
					</li>
				</ul>
			</div>
			<div class="right col-sm-6 col-xs-12">
				<ul>
					<li>
						<a href="" class="change-language" data-language="vi">
							<img src="<?php echo site_url('assets/img/vn@2x.png') ?>" alt="flag Vietnam"> Tiếng Việt</li>
						</a>
					<li>
						<a href="" class="change-language" data-language="en">
							<img src="<?php echo site_url('assets/img/gb@2x.png') ?>" alt="flag GB"> English</li>
						</a>
					</li>
					<li> | </li>
					<li>
						<a href="" target="_blank">
							<i class="fa fa-facebook-square" aria-hidden="true"></i>
						</a>
					</li>
					<li>
						<a href="" target="_blank">
							<i class="fa fa-twitter-square" aria-hidden="true"></i>
						</a>
					</li>
					<li>
						<a href="" target="_blank">
							<i class="fa fa-pinterest-square" aria-hidden="true"></i>
						</a>
					</li>
					<li>
						<a href="" target="_blank">
							<i class="fa fa-linkedin-square" aria-hidden="true"></i>
						</a>
					</li>
					<li>
						<a href="" target="_blank">
							<i class="fa fa-instagram" aria-hidden="true"></i>
						</a>
					</li>
					<li>
						<a href="" target="_blank">
							<i class="fa fa-youtube-square" aria-hidden="true"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>
<section id="brand" class="container-fluid">
	<div class="container">
		<div class="row">
			<div class="left col-sm-4 col-xs-6">
				<a href="<?php echo base_url('') ?>">
					<img src="<?php echo site_url('assets/img/')?>logo.png" alt="logo Diamond">
				</a>
			</div>
			<div class="right col-sm-8 hidden-xs">
				<ul>
					<li class="outline">
						<i class="fa fa-phone" aria-hidden="true"></i> Hotline <br>
						<a href="tel:(024) 1234 5678">(024) 1234 5678</a>
					</li>
					<li class="outline">
						<i class="fa fa-envelope-o" aria-hidden="true"></i> Email <br>
						<a href="mailto:info@diamondtour.vn">info@diamondtour.vn</a>
					</li>
				</ul>
			</div>
			<div class="btn-expand visible-xs col-xs-6">
				<button class="btn btn-primary" id="btn-expand">
					<i class="fa fa-bars" aria-hidden="false"></i>
				</button>
			</div>
		</div>
	</div>
</section>
<script>
    $("a[class='change-language']").click(function(){
        $.ajax({
            method: "GET",
            url: "http://localhost/tourist1/homepage/change_language",
            data: {
                lang: $(this).data('language')
            },
            success: function(res){
                if(res.message == 'changed'){
                    window.location.reload();
                }
            },
            error: function(){

            }
        });
    });
</script>

<header class="header">
	<div class="container-fluid">
		<div class="container" id="main-nav">
			<ul>
				<li class="menu-tabs">
					<a href="<?php echo base_url('') ?>">
						Hành hương trong nước<span class="caret"></span>
					</a>
					<div class="menu-tabs-expand menu-expand">
						<div class="row">
							<div class="left col-md-3 col-sm-4 col-xs-12">
								<ul>
									<li>
										Danh mục menu trong nước
										<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
														aria-hidden="true"></span>
										<ul>
											<li>
												<div class="mask">
													<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj-ldE7MBQu8aIKXUyehnxOxzOuBto598-N1S3mwCrK6scoOs_-Q"
														 alt="image example">
												</div>
												<a href="<?php echo base_url(''); ?>">title trong nước</a>
											</li>
                                            <li>
                                                <div class="mask">
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj-ldE7MBQu8aIKXUyehnxOxzOuBto598-N1S3mwCrK6scoOs_-Q"
                                                         alt="image example">
                                                </div>
                                                <a href="<?php echo base_url(''); ?>">title trong nước</a>
                                            </li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li class="menu-tabs">
					<a href="<?php echo base_url('') ?>">
						Hành hương nước ngoài <span class="caret"></span>
					</a>
					<div class="menu-tabs-expand menu-expand">
						<div class="row">
							<div class="left col-md-3 col-sm-4 col-xs-12">
								<ul>
									<li>
										Danh mục menu nước ngoài
										<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
														aria-hidden="true"></span>
										<ul>
											<li>
												<div class="mask">
													<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj-ldE7MBQu8aIKXUyehnxOxzOuBto598-N1S3mwCrK6scoOs_-Q"
														 alt="image example">
												</div>
												<a href="<?php echo base_url(''); ?>">title nước ngoài</a>
											</li>
                                            <li>
                                                <div class="mask">
                                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj-ldE7MBQu8aIKXUyehnxOxzOuBto598-N1S3mwCrK6scoOs_-Q"
                                                         alt="image example">
                                                </div>
                                                <a href="<?php echo base_url(''); ?>">title nước ngoài</a>
                                            </li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</li>
				<li>
					<a href="<?php echo base_url('danh-muc/tour-dac-biet'); ?>">
						Tin tức
					</a>
				</li>
				<li>
					<a href="javascript:void(0);">
						Kho thư viện
					</a>
				</li>
				<li>
					<a href="javascript:void(0);">
						Góc chia sẻ
					</a>
				</li>
				
			</ul>
		</div>
	</div>

</header>



