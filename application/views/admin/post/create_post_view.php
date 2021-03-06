<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Thêm mới
            <small>
                Bài Viết
            </small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-default">
                    <div class="box-body">
                        <?php
                        echo form_open_multipart('', array('class' => 'form-horizontal'));
                        ?>
                        <div class="col-xs-12">
                            <h4 class="box-title">Thông tin cơ bản</h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Ảnh đại diện', 'image_shared');
                            echo form_error('image_shared');
                            echo form_upload('image_shared', set_value('image_shared'), 'class="form-control"');
                            ?>
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Slug', 'slug_shared');
                                echo form_error('slug_shared');
                                echo form_input('slug_shared', set_value('slug_shared'), 'class="form-control" id="slug_shared" readonly');
                                ?>
                            </div>
                        </div>

                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                echo form_label('Danh mục', 'parent_id_shared');
                                echo form_error('parent_id_shared');
                                ?>
                                <select name="parent_id_shared" class="form-control">
                                    <option value="">Chọn danh mục</option>
                                    <?php build_new_category($post_category, 0, '') ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group col-xs-12">
                            <div class="form-group col-xs-12">
                                <?php
                                    echo form_label('Tiêu đề', 'title');
                                    echo form_error('title');
                                    echo form_input('title', set_value('title'), 'class="form-control" id="title"');
                                    echo form_label('Từ khóa meta', 'metakeywords');
                                    echo form_error('metakeywords');
                                    echo form_input('metakeywords', set_value('metakeywords'), 'class="form-control"');
                                    echo form_label('Mô tả meta', 'metadescription');
                                    echo form_error('metadescription');
                                    echo form_input('metadescription', set_value('metadescription'), 'class="form-control"');
                                    echo form_label('Mô tả', 'description');
                                    echo form_error('description');
                                    echo form_textarea('description', set_value('description', '', false), 'class="form-control" rows="5"');
                                    echo form_label('Nội dung', 'content');
                                    echo form_error('content');
                                    echo form_textarea('content', set_value('content', '', false), 'class="tinymce-area form-control" rows="5"');
                                ?>
                            </div>
                        </div>
                        <?php echo form_submit('submit_shared', 'OK', 'class="btn btn-primary"'); ?>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<?php 
    function build_new_category($categorie, $parent_id = 0, $char = ''){
        $cate_child = array();
        foreach ($categorie as $key => $item){
            if ($item['parent_id'] == $parent_id){
                $cate_child[] = $item;
                unset($categorie[$key]);
            }
        }
        if ($cate_child){
            foreach ($cate_child as $key => $value){
            ?>
            <option value="<?php echo $value['id'] ?>" ><?php echo $char.$value['title'] ?></option>
            <?php build_new_category($categorie, $value['id'], $char.'---|') ?>
            <?php
            }
        }
    }
?>