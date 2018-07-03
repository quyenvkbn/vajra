<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Vajra</title>
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
<section id="page">
	<header>
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
								<a href="mailto: info@diamondtour.vn" target="_blank">
									<i class="fa fa-envelope-o" aria-hidden="true"></i> info@diamondtour.vn
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>

		<nav id="main-nav" class="container-fluid">
			<div class="container">
				<div class="row">
					<div class="left col-sm-3 col-xs-6">
						<a href="<?php echo base_url('') ?>">
							<img src="<?php echo site_url('assets/img/')?>logo-W.png" alt="logo Diamond">
						</a>
					</div>
					<div class="right col-sm-9 hidden-xs">
						<ul>
							<li>
								<a href="<?php echo base_url('') ?>">Trang chủ</a>
							</li>
							<li class="menu-tabs">
								<a href="<?php echo base_url('danh-muc/hanh-huong-trong-nuoc') ?>">
									Hành hương trong nước<span class="caret"></span>
								</a>
								<div class="menu-tabs-expand menu-expand">
									<div class="row">
										<div class="left col-md-3 col-sm-4 col-xs-12">
											<ul>
												<?php foreach ($domestic_menu as $key => $value): ?>
													<li>
														<a href="<?php echo base_url('danh-muc/'.$value['slug']) ?>" style="color:black;">
															<?php echo $value['title'];?>
															<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
																  aria-hidden="true"></span>
														</a>

														<ul>
															<?php foreach ($value['sub'] as $k => $val): ?>
																<li>
																	<div class="mask">
																		<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']);?>"
																			 alt="image example">
																	</div>
																	<a href="<?php echo base_url('tours/'.$val['slug']); ?>"><?php echo $val['title']; ?></a>
																</li>
															<?php endforeach ?>
														</ul>
													</li>
												<?php endforeach ?>
											</ul>
										</div>
									</div>
								</div>
							</li>
							<li class="menu-tabs">
								<a href="<?php echo base_url('danh-muc/hanh-huong-nuoc-ngoai') ?>">
									Hành hương nước ngoài <span class="caret"></span>
								</a>
								<div class="menu-tabs-expand menu-expand">
									<div class="row">
										<div class="left col-md-4 col-xs-12">
											<ul>
												<?php foreach ($international_menu as $key => $value): ?>
													<li>
														<a href="<?php echo base_url('danh-muc/'.$value['slug']) ?>" style="color:black;">
															<?php echo $value['title'];?>
															<span class="glyphicon glyphicon glyphicon-menu-right pull-right"
																  aria-hidden="true"></span>
														</a>

														<ul>
															<?php foreach ($value['sub'] as $k => $val): ?>
																<li>
																	<div class="mask">
																		<img src="<?php echo base_url('assets/upload/product/'.$val['slug'].'/'.$val['image']);?>"
																			 alt="image example">
																	</div>
																	<a href="<?php echo base_url('tours/'.$val['slug']); ?>"><?php echo $val['title']; ?></a>
																</li>
															<?php endforeach ?>
														</ul>
													</li>
												<?php endforeach ?>
											</ul>
										</div>
									</div>
								</div>
							</li>
							<li>
								<a href="<?php echo base_url('chuyen-muc/tin-tuc'); ?>">
									Tin tức
								</a>
							</li>
							<li>
								<a href="<?php echo base_url('location'); ?>">
									Kho thư viện
								</a>
							</li>
							<li>
								<a href="<?php echo base_url('chuyen-muc/goc-chia-se'); ?>">
									Góc chia sẻ
								</a>
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
		</nav>
	</header>



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

		</div>
	</div>

</header>



