<!-- Homepage Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>homepage.min.css">

<!-- Slider JS -->
<script src="<?php echo site_url('assets/js/admin/slider.js') ?>"></script>
<section id="slider" class="container-fluid">
	<div id="homepage-slider" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<?php if (!empty($banner)): ?>
				<?php foreach ($banner as $key => $value): ?>

					<li data-target="#homepage-slider" data-slide-to="0" class="<?php echo ($key == 0)?'active' : ''; ?>"></li>
				<?php endforeach ?>
			<?php endif ?>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<?php if (!empty($banner)): ?>
				<?php foreach ($banner as $key => $value): ?>
					<div class="item <?php echo ($key == 0)?'active' : ''; ?>">
						<div class="mask">
							<img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']); ?>" alt="slide 2">
						</div>
						<div class="carousel-caption">
							<div class="big-title">
								<h4 class="subtitle">
                                    <?php echo $value['parent_title']; ?>
								</h4>
								<h1 class="title">
									<?php echo $value['title']; ?>
								</h1>
								<ul class="list-inline">
									<li>
										<a href="<?php echo base_url('tours/'.$value['slug']); ?>" class="btn btn-primary" role="button">
											Đặt tour!
										</a>
									</li>
									<li>
										<a href="<?php echo base_url('tours/'.$value['slug']); ?>" class="btn btn-default" role="button">
											Xem chi tiết
										</a>
									</li>
								</ul>
							</div>

						</div>
					</div>
				<?php endforeach ?>
			<?php endif ?>
			...
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#homepage-slider" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#homepage-slider" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</section>
<section id="domestic" class="container-fluid section tour-intro">
	<div class="container">
		<div class="section-header">
			<div class="row">
				<div class="left col-xs-8">
					<h1>Hành hương trong nước</h1>
				</div>
				<div class="right col-xs-4">
					<a href="<?php echo base_url('danh-muc/'.$domestic['slug']) ?>">Xem tất cả Tours <i class="fa fa-arrow-circle-o-right" aria-hidden="false"></i> </a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="carousel carousel-showmanymoveone slider" id="domestic-slider">
					<div class="carousel-inner">
						<div class="item active">
							<div class="inner cover col-xs-12 col-sm-6 col-md-4">
								<div class="mask">
									<img src="https://images.unsplash.com/photo-1503432548458-a4bdc273826a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c387dfaa5ef4a26cbaea1337993c702e&auto=format&fit=crop&w=1965&q=80" alt="domestic cover image">

									<div class="overlay">
										<h1><?php echo $domestic['title'];?></h1>
										<p><?php echo $domestic['content'];?></p>
										<a href="<?php echo base_url('danh-muc/'.$domestic['slug']) ?>" class="btn btn-primary" role="button">Xem tất cả Tours</a>
									</div>
								</div>
							</div>
						</div>

                        <?php if (!empty($tour_domestic)): ?>
                            <?php foreach ($tour_domestic as $key => $value): ?>
								<div class="item">
									<div class="inner col-xs-12 col-sm-6 col-md-4">
										<div class="wrapper">
											<div class="mask">
												<a href="<?php echo base_url('tours/' . $value['slug']) ?>">
                                                    <?php if($value['image']){ ?>
														<img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']) ?>" alt="image">
                                                    <?php }else{ ?>
														<img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
                                                    <?php } ?>
												</a>
											</div>
											<div class="head">
												<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
												<h2 class="post-title"><?php echo $value['title']; ?></h2>
												<h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
											</div>
											<div class="body">
												<p class="post-description"><?php echo $value['description']; ?></p>
											</div>
											<div class="foot">
												<ul class="list-inline">
													<li>
														<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-primary" role="button">
															Đặt Ngay
														</a>
													</li>
													<li>
														<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-default" role="button">
															Xem chi tiết
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
                            <?php endforeach; ?>
                        <?php endif; ?>
					</div>
				</div>
			</div>
			<div class="col-xs-12 slider-control">
				<ul class="list-inline">
					<li>
						<a class="btn btn-default" href="#domestic-slider" data-slide="prev">
							<i class="fa fa-arrow-left" aria-hidden="false"></i>
						</a>
					</li>
					<li>
						<a class="btn btn-default" href="#domestic-slider" data-slide="next">
							<i class="fa fa-arrow-right" aria-hidden="false"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section id="international" class="container-fluid section tour-intro">
	<div class="container">
		<div class="section-header">
			<div class="row">
				<div class="left col-xs-8">
					<h1>Hành hương nước ngoài</h1>
				</div>
				<div class="right col-xs-4">
					<a href="<?php echo base_url('danh-muc/'.$international['slug']) ?>">Xem tất cả Tours <i class="fa fa-arrow-circle-o-right" aria-hidden="false"></i> </a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="carousel carousel-showmanymoveone slider" id="domestic-slider">
					<div class="carousel-inner">
						<div class="item active">
							<div class="inner cover col-xs-12 col-sm-6 col-md-4">
								<div class="mask">
									<img src="https://images.unsplash.com/photo-1528333814247-9126273870c8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=266dcac2ce3827ff0b9f8037ec83fa8f&auto=format&fit=crop&w=1951&q=80" alt="international cover image">

									<div class="overlay">
										<h1><?php echo $international['title'];?></h1>
										<p><?php echo $international['content'];?></p>
										<a href="<?php echo base_url('danh-muc/'.$international['slug']) ?>" class="btn btn-primary" role="button">Xem tất cả Tours</a>
									</div>
								</div>
							</div>
						</div>

                        <?php if (!empty($tour_international)): ?>
                            <?php foreach ($tour_international as $key => $value): ?>
								<div class="item">
									<div class="inner col-xs-12 col-sm-6 col-md-4">
										<div class="wrapper">
											<div class="mask">
												<a href="<?php echo base_url('tours/' . $value['slug']) ?>">
                                                    <?php if($value['image']){ ?>
														<img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']) ?>" alt="image">
                                                    <?php }else{ ?>
														<img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
                                                    <?php } ?>
												</a>
											</div>
											<div class="head">
												<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
												<h2 class="post-title"><?php echo $value['title']; ?></h2>
												<h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
											</div>
											<div class="body">
												<p class="post-description"><?php echo $value['description']; ?></p>
											</div>
											<div class="foot">
												<ul class="list-inline">
													<li>
														<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-primary" role="button">
															Đặt Ngay
														</a>
													</li>
													<li>
														<a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-default" role="button">
															Xem chi tiết
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
                            <?php endforeach; ?>
                        <?php endif; ?>
					</div>
				</div>
			</div>
			<div class="col-xs-12 slider-control">
				<ul class="list-inline">
					<li>
						<a class="btn btn-default" href="#domestic-slider" data-slide="prev">
							<i class="fa fa-arrow-left" aria-hidden="false"></i>
						</a>
					</li>
					<li>
						<a class="btn btn-default" href="#domestic-slider" data-slide="next">
							<i class="fa fa-arrow-right" aria-hidden="false"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section id="news" class="section container">
	<div class="section-header">
		<div class="row">
			<div class="left col-xs-8">
				<h1>Tin tức</h1>
			</div>
			<div class="right col-xs-4">
				<a href="<?php echo base_url('chuyen-muc/tin-tuc') ?>">Xem tất cả tin tức <i class="fa fa-arrow-circle-o-right" aria-hidden="false"></i> </a>
			</div>
		</div>
	</div>
	<div class="row" style="padding-top: 25px;">
		<?php foreach ($post_news as $key => $value): ?>
			<div class="item col-sm-<?php echo ($key == 0)? '12': '4'; ?> col-xs-12" style="<?php echo ($key == 0)? 'padding-bottom: 25px;': ''; ?>">
				<div class="mask">
					<div class="col-md-<?php echo ($key == 0)? '8': '12'; ?>" style="padding:0px;<?php echo ($key == 0)? 'padding-right: 10px;': ''; ?>">
							<img src="<?php echo base_url('assets/upload/post/'.$value['image']); ?>" alt="blogs image">
					</div>
					<div class="col-md-<?php echo ($key == 0)? '4': '12'; ?>" style="padding:0px;">
						<div class="head">
							<h4 class="post-subtitle"><?php echo $value['parent_title'];?></h4>
							<h2 class="post-title"><?php echo $value['title'];?></h2>
						</div>
						<div class="body">
							<p class="post-description"><?php echo $value['description']; ?></p>
						</div>
						<div class="foot">
							<a href="<?php echo base_url('bai-viet/'.$value['slug']) ?>" class="btn btn-primary" role="button">
								Xem chi tiết
							</a>
						</div>
					</div>
				</div>
			</div>
		<?php endforeach ?>
	</div>
</section>

<section id="gallery" class="section container-fluid">
	<div class="container">
		<div class="section-header">
			<div class="row">
				<div class="left col-xs-8">
					<h1>Thư viện ảnh</h1>
				</div>
				<div class="right col-xs-4">
					<a href="<?php echo base_url('location') ?>">Xem tất cả <i class="fa fa-arrow-circle-o-right" aria-hidden="false"></i> </a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="grid">
				<div class="grid-sizer"></div>
                <?php foreach ($location_archive_library as $key => $value): ?>
                    <?php $class = '';
                    switch ($key){
                        case 0:
                            $class = 'grid-item-width-2 grid-item-height-2';
                            break;
                        case 1:
                            $class = '';
                            break;
                        case 2:
                            $class = '';
                            break;
                        case 3:
                            $class = 'grid-item-width-2';
                            break;
                        case 4:
                            $class = 'grid-item-height-2';
                            break;
                        case 5:
                            $class = 'grid-item-width-2 grid-item-height-2';
                            break;
                        case 6:
                            $class = 'grid-item-height-2';
                            break;
                    }?>
					<div class="grid-item <?php echo $class ?> col-xs-12">
						<div class="mask">
							<img src="<?php echo base_url('assets/upload/localtion/'.$value['slug'].'/'.$value['image']); ?>" alt="blogs image">
							<div class="overlay"></div>
							<div class="content">
								<h4 class="post-subtitle"><?php echo $value['area'];?></h4>
								<h2 class="post-title">
									<a href="<?php echo base_url('location/'.$value['slug']) ?>" role="button">
                                        <?php echo $value['title'];?>
									</a>
								</h2>
							</div>
						</div>
					</div>
                    <?php echo (($key+1)%3 == 0)?'<div class="clear" style="clear: left;"></div>':''; ?>
                <?php endforeach ?>
			</div>

		</div>
	</div>
</section>

<section id="shared_corner" class="section container">
	<div class="row">
		<div class="item cover col-sm-12 col-xs-12">
			<div class="mask">
				<img src="<?php echo base_url('assets/upload/post_category/'.$shared_corner['image']); ?>" alt="blogs image"  style="height: 300px;">
				<h2><?php echo $shared_corner['title']; ?></h2>
			</div>
		</div>
		<?php foreach ($post_shared_corner as $key => $value): ?>
			<div class="item col-sm-4 col-xs-12">
				<div class="mask">
					<img src="<?php echo base_url('assets/upload/post/'.$value['image']); ?>" alt="blogs image">

					<div class="overlay"></div>
					<div class="content">
						<h4 class="post-subtitle"><?php echo date("d/m/Y",strtotime($value['created_at']));?></h4>
						<h2 class="post-title">
							<a href="<?php echo base_url('bai-viet/'.$value['slug']) ?>" role="button">
                                <?php echo $value['title'];?>
							</a>
						</h2>
					</div>
				</div>
			</div>
		<?php endforeach ?>
	</div>
</section>

<script src='https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js'></script>
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>


<script type="text/javascript">

    // init Isotope
    var $grid = $('.grid').isotope({
        // set itemSelector so .grid-sizer is not used in layout
        itemSelector: '.grid-item',
        percentPosition: true,
        masonry: {
            // use element for option
            columnWidth: '.grid-sizer'
        }
    });

    // filter items on button click
    $('.work-control ul li').on( 'click', 'a', function() {
        var filterValue = $(this).attr('data-filter');
        $grid.isotope({ filter: filterValue });
    });

    // layout Isotope after each image loads
    $grid.imagesLoaded().progress( function() {
        $grid.isotope('layout');
    });

</script>

