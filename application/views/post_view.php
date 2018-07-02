<!-- About Stylesheet -->
<link rel="stylesheet" href="<?php echo site_url('assets/sass/') ?>blogs.min.css">

<section class="cover">
    <img src="https://images.unsplash.com/photo-1516974882164-2136160d59c6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c4b9e1d39ed76f884d4d640f17d00a0c&auto=format&fit=crop&w=1950&q=80" alt="cover">
</section>

<section class="content section container-fluid">
    <div class="container">
        <div class="row">
            <div class="left col-md-9 col-sm-8 col-xs-12">
                <div class="section-header">
                    <h1><?php echo $category['title']; ?></h1>
                    <div class="line">
                        <div class="line-primary"></div>
                    </div>
                </div>

                <div class="row">
                    <?php
                    if($result){
                        foreach($result as $key => $val){
                    ?>
                            <div class="item col-md-4 col-sm-6 col-xs-12">
                                <div class="inner">
                                    <div class="head">
                                        <div class="mask">
                                            <img src="<?php echo site_url('assets/upload/post/' . $val['image']); ?>" alt="image blog">
                                        </div>
                                    </div>
                                    <div class="body">
                                        <h4 class="post-subtitle"><?php echo $val['parent_title']; ?></h4>
                                        <h2 class="post-title"><?php echo $val['title']; ?></h2>
                                        <p class="post-description"><?php echo $val['description']; ?></p>
                                    </div>
                                    <div class="foot">
                                        <a href="<?php echo base_url('bai-viet/' . $val['slug']) ?>" class="btn btn-primary" role="button">
                                            <?php echo 'Xem chi tiết'; ?>
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