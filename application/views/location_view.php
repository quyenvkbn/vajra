<!-- About Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>blogs.min.css">

<section class="cover">
	<div class="overlay"></div>
    <?php if (count($result) >0 ): ?>
        <img src="<?php echo base_url('/assets/upload/localtion/' . $result[0]['slug'] . '/' . $result[0]['image']) ?>" alt="cover">
    <?php else: ?>
        <img src="<?php echo base_url('/assets/image/horizontal.jpg') ?>" alt="cover">
    <?php endif ?>
	
</section>

<section class="content section container-fluid">
    <div class="container">
        <div class="row">
            <div class="left col-md-12 col-sm-12 col-xs-12">
                <div class="section-header">
                    <h1>Kho thư viện</h1>
                    <div class="line">
                        <div class="line-primary"></div>
                    </div>
                </div>

                <div class="row">
                    <?php
                    if($result){
                        foreach($result as $key => $val){
                    ?>
						<div class="item col-xs-12 col-sm-6 col-md-4">
							<div class="wrapper">
								<div class="mask">
									<a href="<?php echo base_url('bai-viet/' . $val['slug']) ?>">
										<img src="<?php echo site_url('assets/upload/localtion/' . $val['slug'] . '/' . $val['image']); ?>" alt="image">
									</a>
								</div>
								<div class="head">
									<br><br>
									<h2 class="post-title"><?php echo $val['title']; ?></h2>
								</div>
								<div class="body">
									<p class="post-description"><?php echo $val['content']; ?></p>
								</div>
								<div class="foot">
									<a href="<?php echo base_url('location/' . $val['slug']) ?>" class="btn btn-primary" role="button">
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
            <div class="col-md-6 col-md-offset-5 page">
                <?php echo $page_links ?>
            </div>
           <!--  <div class="right col-md-3 col-sm-4 col-xs-12">
                <div class="section-header">
                    <h1><?php echo $this->lang->line('blogs') ?></h1>
                    <div class="line">
                        <div class="line-primary"></div>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
</section>