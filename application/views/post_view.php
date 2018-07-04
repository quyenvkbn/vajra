<!-- About Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>blogs.min.css">

<section class="cover">
	<div class="overlay"></div>
    <img src="<?php echo base_url('/assets/upload/post_category/' . $category['image']) ?>" alt="cover">
</section>

<section class="content section container-fluid">
    <div class="container">
        <div class="row">
            <div class="left col-md-9 col-sm-8 col-xs-12">
				<div class="section-header">
					<div class="row">
						<div class="left col-xs-8">
							<h1><?php echo $category['title']; ?></h1>
						</div>
						<div class="right col-xs-4">
						</div>
					</div>
				</div>

                <div class="row">
                    <?php
                    if($result){
                        foreach($result as $key => $val){
                    ?>

						<div class="item col-xs-12 col-sm-6">
							<div class="wrapper">
								<div class="mask">
									<a href="<?php echo base_url('bai-viet/' . $val['slug']) ?>">
										<img src="<?php echo site_url('assets/upload/post/' . $val['image']); ?>" alt="image">
									</a>
								</div>
								<div class="head">
									<h4 class="post-subtitle"><?php echo $val['parent_title']; ?></h4>
									<h2 class="post-title"><?php echo $val['title']; ?></h2>
								</div>
								<div class="body">
									<p class="post-description"><?php echo $val['description']; ?></p>
								</div>
								<div class="foot">
									<a href="<?php echo base_url('bai-viet/' . $val['slug']) ?>" class="btn btn-primary" role="button">
										Xem chi tiết
									</a>
								</div>
							</div>
						</div>
                    <?php
                        }
                    }
                    ?>
                </div>
            </div>
            <div class="right col-md-3 col-sm-4 col-xs-12">
                <div class="section-header">
                    <h1><?php echo $this->lang->line('blogs') ?></h1>
                    <div class="line">
                        <div class="line-primary"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>