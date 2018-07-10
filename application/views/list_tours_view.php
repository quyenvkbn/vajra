<!-- Tours Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>tours.css">

<section id="head-cover" class="container-fluid" style="background-image: url('<?php echo base_url("assets/upload/product_category/".$detail['slug']."/".$detail['image']) ?>')">
	<div class="overlay"></div>
	<div class="container">
		<div class="big-title">
			<?php if (!empty($detail['sub'])): ?>
				<h4 class="subtitle">
					<?php echo $detail['sub'][count($detail['sub'])-1]['title']; ?>
				</h4>
			<?php endif ?>
			<h1 class="title">
                <?php echo $detail['title'] ?>
			</h1>
		</div>
	</div>
</section>

<section id="tours" class="container-fluid">
	<div class="container">
		<ol class="breadcrumb hidden-xs">
			<li><a href="<?php echo base_url('') ?>"><?php echo $this->lang->line('home') ?></a></li>
			<?php if (!empty($detail['sub'])): ?>
				<?php for($i=0;$i<count($detail['sub']);$i++): ?>
					<li><a href="<?php echo base_url('/danh-muc/'.$detail['sub'][$i]['slug']) ?>"><?php echo $detail['sub'][$i]['title'] ?></a></li>
				<?php endfor; ?>
			<?php endif ?>
			<li class="active"><?php echo $detail['title'];?></li>
		</ol>

		<div class="intro">
			<h4><?php echo $detail['content'] ?></h4>
		</div>

		<div id="list-tours" class="section">
			<div class="row">
				<?php if($product_array): ?>
	                <?php foreach($product_array as $key => $val): ?>
						<div class="item col-xs-12 col-sm-6 col-md-4">
							<div class="wrapper">
								<div class="mask">
									<a href="<?php echo base_url('tours/' . $val['slug']) ?>">
										<img src="<?php echo base_url('/assets/upload/product/' . $val['slug'].'/' . $val['image']) ?>" alt="image">
									</a>
								</div>
								<div class="head">
									<h4 class="post-subtitle"><?php echo $val['parent_title'] ?></h4>
									<h2 class="post-title"><?php echo $val['title'] ?></h2>
									<h3 class="price"><?php echo number_format($val['price']) ?> VNĐ</h3>
								</div>
								<div class="body">
									<p class="post-description"><?php echo $val['description']; ?></p>
								</div>
								<div class="foot">
									<ul class="list-inline">
										<li>
											<a href="<?php echo base_url('tours/' . $val['slug']) ?>" class="btn btn-primary" role="button">
												Đặt Ngay
											</a>
										</li>
										<li>
											<a href="<?php echo base_url('tours/' . $val['slug']) ?>" class="btn btn-default" role="button">
												Xem chi tiết
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
	                <?php endforeach; ?>
					<div class="col-md-6 col-md-offset-3 col-xs-12 page">
	                    <?php echo $page_links;?>
	                </div>
				<?php else: ?>

				<?php endif; ?>
			</div>
		</div>
	</div>
</section>
