<!-- About Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>blogs.min.css">

<section class="cover">
	<div class="overlay"></div>
	<img src="<?php echo base_url('assets/upload/localtion/'.$detail['slug'].'/'.$detail['image']) ?>" alt="cover">
</section>


<div id="detail-post" class="container-fluid">
	<div class="container">
		<div class="row">
			<div class="left col-sm-8 col-xs-12">
				<div class="big-title">
					<h4 class="subtitle">
						Location
					</h4>
					<h1 class="title">
                        <?php echo $detail['title'] ?>
					</h1>
				</div>

				<article>
					<img src="<?php echo base_url('assets/upload/localtion/'.$detail['slug'].'/'.$detail['image']) ?>" alt="" style="width: 100%;">

					<p><?php echo $detail['content'] ?></p>
				</article>

				<div class="foot">
					<p>Shared:</p>
					<ul class="list-inline">
						<li><a href=""><i class="fa fa-facebook-f"></i> Facebook </a></li>
					</ul>
				</div>
			</div>
			<div class="right col-sm-4 col-xs-12">
				<div class="section-header">
					<div class="row">
						<div class="left col-xs-8">
							<h1>Tour liên quan</h1>
						</div>
						<div class="right col-xs-4">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="item col-xs-12">
						<div class="wrapper">
							<div class="mask">
								<a href="<?php echo base_url('tours/'.$detail['slug']) ?>">
									<img src="<?php echo base_url('assets/upload/localtion/'.$detail['slug'].'/'.$detail['image']) ?>" alt="" style="width: 100%;">
								</a>
							</div>
							<div class="head">
								<h4 class="post-subtitle">Location</h4>
								<h2 class="post-title"><?php echo $detail['title'];?></h2>
							</div>
							<div class="body">
								<p class="post-description"><?php echo $detail['content'];?></p>
							</div>
							<div class="foot">
								<a href="<?php echo base_url('location/' . $detail['slug']) ?>" class="btn btn-primary" role="button">
									Xem chi tiết
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>


