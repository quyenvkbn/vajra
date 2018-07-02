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
							<img src="<?php echo base_url('/assets/upload/banner/'.$value['image']); ?>" alt="slide 2">
						</div>
						<div class="carousel-caption">
							<?php echo $value['title']; ?>
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
		<div class="row">
			<div class="left col-sm-12 col-xs-12">
				<div class="row">
					<div class="col-xs-12">
						<div class="carousel carousel-showmanymoveone slider" id="domestic-slider">
							<div class="carousel-inner">
								<div class="item active">
									<div class="inner col-xs-12 col-sm-6 col-md-4">
	                                    <div class="mask" id="no-hover">
	                                    	<a href="<?php echo base_url('danh-muc/' . $domestic['slug']) ?>">
                                                <?php if($domestic['image']){ ?>
                                                    <img src="<?php echo base_url('/assets/upload/product_category/'.$domestic['slug'].'/'.$domestic['image']) ?>" alt="image">
                                                <?php }else{ ?>
                                                    <img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
                                                <?php } ?>
                                            </a>
                                            <div class="overview">
                                                <div class="head">
                                                    <h4 class="post-subtitle"><?php echo $domestic['title'] ?></h4>
                                                    <h2 class="post-title"><?php echo $domestic['content']; ?></h2>
                                                </div>
                                                <div class="body">
                                                    <a href="<?php echo base_url('/danh-muc/'.$domestic['slug']) ?>" class="btn btn-primary" role="button">
                    									Xem tất cả
													</a>
                                                </div>
                                            </div>
	                                    </div>
	                                </div>
	                            </div>
                                <?php if (!empty($tour_domestic)): ?>
                                    <?php foreach ($tour_domestic as $key => $value): ?>
                                        <div class="item">
                                            <div class="inner col-xs-12 col-sm-6 col-md-4">
                                                <div class="mask">
                                                    <a href="<?php echo base_url('tours/' . $value['slug']) ?>">
                                                        <?php if($value['image']){ ?>
                                                            <img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']) ?>" alt="image">
                                                        <?php }else{ ?>
                                                            <img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
                                                        <?php } ?>
                                                    </a>
                                                    <div class="overview">
                                                        <div class="head">
                                                            <h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
                                                            <h2 class="post-title"><?php echo $value['title']; ?></h2>
                                                        </div>
                                                        <div class="body">
                                                            <h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
                                                        </div>
                                                    </div>
                                                    <div class="content">
                                                        <div class="head">
                                                            <h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
                                                            <h2 class="post-title"><?php echo $value['title']; ?></h2>
                                                            <h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
                                                        </div>
                                                        <div class="body">
                                                            <table class="table">
                                                                <tr>
                                                                    <td>Time</td>
                                                                    <td><?php echo count(json_decode($value['dateimg'])) ?></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Start</td>
                                                                    <td>
                                                                        <?php
                                                                        if($value['date'] != "0000-00-00 00:00:00" && $value['date'] != "1970-01-01 08:00:00"){
                                                                            $rmtime = str_replace(" 00:00:00","",$value['date']);
                                                                            $date= explode("-",$rmtime);
                                                                            if(count($date) == 3){
                                                                                $value['date'] = $date[2]."/".$date[1]."/".$date[0];
                                                                            }
                                                                        }
                                                                        ?>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <div class="foot">
                                                            <a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-primary" role="button">
                                                                <?php echo $this->lang->line('explore') ?>
                                                            </a>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    <?php endforeach; ?>
                                <?php endif; ?>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="foot">
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
		<div class="row">
			<div class="left col-sm-12 col-xs-12">
				<div class="row">
					<div class="col-xs-12">
						<div class="carousel carousel-showmanymoveone slider" id="international-slider">
							<div class="carousel-inner">
								<div class="item active">
									<div class="inner col-xs-12 col-sm-6 col-md-4">
	                                    <div class="mask" id="no-hover">
	                                    	<a href="<?php echo base_url('danh-muc/' . $international['slug']) ?>">
                                                <?php if($international['image']){ ?>
                                                    <img src="<?php echo base_url('/assets/upload/product_category/'.$international['slug'].'/'.$international['image']) ?>" alt="image">
                                                <?php }else{ ?>
                                                    <img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
                                                <?php } ?>
                                            </a>
                                            <div class="overview">
                                                <div class="head">
                                                    <h4 class="post-subtitle"><?php echo $international['title'] ?></h4>
                                                    <h2 class="post-title"><?php echo $international['content']; ?></h2>
                                                </div>
                                                <div class="body">
                                                    <a href="<?php echo base_url('/danh-muc/'.$international['slug']) ?>" class="btn btn-primary" role="button">
                    									Xem tất cả
													</a>
                                                </div>
                                            </div>
	                                    </div>
	                                </div>
	                            </div>
                                <?php if (!empty($tour_international)): ?>
                                    <?php foreach ($tour_international as $key => $value): ?>
                                        <div class="item">
                                            <div class="inner col-xs-12 col-sm-6 col-md-4">
                                                <div class="mask">
                                                    <a href="<?php echo base_url('tours/' . $value['slug']) ?>">
                                                        <?php if($value['image']){ ?>
                                                            <img src="<?php echo base_url('/assets/upload/product/'.$value['slug'].'/'.$value['image']) ?>" alt="image">
                                                        <?php }else{ ?>
                                                            <img src="<?php echo base_url('/assets/img/vertical.jpg'); ?>" alt="image">
                                                        <?php } ?>
                                                    </a>
                                                    <div class="overview">
                                                        <div class="head">
                                                            <h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
                                                            <h2 class="post-title"><?php echo $value['title']; ?></h2>
                                                        </div>
                                                        <div class="body">
                                                            <h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
                                                        </div>
                                                    </div>
                                                    <div class="content">
                                                        <div class="head">
                                                            <h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
                                                            <h2 class="post-title"><?php echo $value['title']; ?></h2>
                                                            <h3 class="price"><?php echo number_format($value['price']); ?>vnd</h3>
                                                        </div>
                                                        <div class="body">
                                                            <table class="table">
                                                                <tr>
                                                                    <td>Time</td>
                                                                    <td><?php echo count(json_decode($value['dateimg'])) ?></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>Start</td>
                                                                    <td>
                                                                        <?php
                                                                        if($value['date'] != "0000-00-00 00:00:00" && $value['date'] != "1970-01-01 08:00:00"){
                                                                            $rmtime = str_replace(" 00:00:00","",$value['date']);
                                                                            $date= explode("-",$rmtime);
                                                                            if(count($date) == 3){
                                                                                $value['date'] = $date[2]."/".$date[1]."/".$date[0];
                                                                            }
                                                                        }
                                                                        ?>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <div class="foot">
                                                            <a href="<?php echo base_url('tours/'.$value['slug']) ?>" class="btn btn-primary" role="button">
                                                                <?php echo $this->lang->line('explore') ?>
                                                            </a>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    <?php endforeach; ?>
                                <?php endif; ?>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="foot">
				<ul class="list-inline">
					<li>
						<a class="btn btn-default" href="#international-slider" data-slide="prev">
							<i class="fa fa-arrow-left" aria-hidden="false"></i>
						</a>
					</li>
					<li>
						<a class="btn btn-default" href="#international-slider" data-slide="next">
							<i class="fa fa-arrow-right" aria-hidden="false"></i>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section id="news" class="section container">
	<div class="row" style="padding-top: 25px;">
		<?php foreach ($post_news as $key => $value): ?>
			<div class="item col-sm-<?php echo ($key == 0)? '12': '4'; ?> col-xs-12" style="<?php echo ($key == 0)? 'padding-bottom: 25px;': ''; ?>">
				<div class="mask">
					<div class="col-md-<?php echo ($key == 0)? '8': '12'; ?>" style="padding:0px;<?php echo ($key == 0)? 'padding-right: 10px;': ''; ?>">
							<img src="<?php echo base_url('assets/upload/post/'.$value['image']); ?>" alt="blogs image">
					</div>
					<div class="col-md-<?php echo ($key == 0)? '4': '12'; ?>" style="padding:0px;">
						<div class="content">
                            <p class="sub-header"><?php echo $value['created_at'];?></p>
							<h4 class="sub-header"><?php echo $value['title'];?></h4>
								<p class="header"><?php echo $value['description']; ?></p>
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

<section id="gallery" class="section container">
	<div class="row">
		<?php foreach ($location_archive_library as $key => $value): ?>
			<div class="item col-sm-4 col-xs-12">
				<div class="mask">
					<img src="<?php echo base_url('assets/upload/localtion/'.$value['slug'].'/'.$value['image']); ?>" alt="blogs image">
					<div class="content">
						<p class="sub-header"><?php echo $value['created_at'];?></p>
                        <h3>
                            <a href="<?php echo base_url('location/'.$value['slug']) ?>" role="button">
                                <?php echo $value['title'];?>
                            </a>
                        </h3>
					</div>
				</div>
			</div>
			<?php echo (($key+1)%3 == 0)?'<div class="clear" style="clear: left;"></div>':''; ?>
		<?php endforeach ?>
	</div>
</section>

<section id="shared_corner" class="section container">
	<div class="row" style="padding-top: 25px;">
		<div class="item col-sm-12 col-xs-12">
			<div class="mask">
				<img src="<?php echo base_url('assets/upload/post_category/'.$shared_corner['image']); ?>" alt="blogs image"  style="height: 300px;">
				<h2><?php echo $shared_corner['title']; ?></h2>
			</div>
		</div>
		<?php foreach ($post_shared_corner as $key => $value): ?>
			<div class="item col-sm-4 col-xs-12">
				<div class="mask">
					<img src="<?php echo base_url('assets/upload/post/'.$value['image']); ?>" alt="blogs image">
					<div class="content">
                        <p class="sub-header"><?php echo $value['created_at'];?></p>
                        <h3>
                            <a href="<?php echo base_url('bai-viet/'.$value['slug']) ?>" role="button">
                                <?php echo $value['title'];?>
                            </a>
                        </h3>
					</div>
				</div>
			</div>
		<?php endforeach ?>
	</div>
</section>

