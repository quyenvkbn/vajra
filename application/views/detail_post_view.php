<!-- About Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>blogs.css">

<section class="cover">
	<div class="overlay"></div>
	<img src="<?php echo base_url('/assets/upload/post/' . $detail['image']) ?>" alt="cover">
</section>


<div id="detail-post" class="container-fluid">
	<div class="container">
		<div class="row">
			<div class="left col-sm-9 col-xs-12">
				<div class="big-title">
					<h4 class="subtitle">
						<?php echo $detail['parent_title'] ?>
					</h4>
					<h1 class="title">
                        <?php echo $detail['title'] ?>
					</h1>
				</div>

				<article>
					<img src="<?php echo base_url('assets/upload/post/' . $detail['image']) ?>" alt="" style="width: 100%;">

					<p><?php echo $detail['content'] ?></p>
				</article>

				<div class="foot">
					<p>Shared:</p>
					<ul class="list-inline">
						<li><a href=""><i class="fa fa-facebook-f"></i> Facebook </a></li>
					</ul>
				</div>
			</div>
			<div class="right col-sm-3 col-xs-12">
				<div class="section-header">
					<div class="row">
						<div class="left col-xs-12">
							<h1>Bài viết liên quan</h1>
						</div>
					</div>
				</div>
				<?php foreach ($post_array as $key => $value): ?>
					<div class="row">
						<div class="item col-xs-12">
							<div class="wrapper">
								<div class="mask">
									<a href="<?php echo base_url('bai-viet/'.$value['slug']) ?>">
										<img src="<?php echo base_url('assets/upload/post/' . $value['image']) ?>" alt="" style="width: 100%;">
									</a>
								</div>
								<div class="head">
									<h4 class="post-subtitle"><?php echo $value['parent_title']; ?></h4>
									<h2 class="post-title"><?php echo $value['title'];?></h2>
								</div>
								<div class="body">
									<p class="post-description"><?php echo $value['content'];?></p>
								</div>
								<div class="foot">
									<a href="<?php echo base_url('bai-viet/' . $value['slug']) ?>" class="btn btn-primary" role="button">
										Xem chi tiết
									</a>
								</div>
							</div>
						</div>
					</div>
				<?php endforeach ?>
			</div>
		</div>

	</div>
</div>


