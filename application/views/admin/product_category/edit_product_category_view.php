<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                Danh Mục
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
                            <h4 class="box-title">Basic Information</h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image_shared">Hình ảnh đang dùng</label>
                            <br>
                            <img src="<?php echo base_url('assets/upload/'. $controller .'/'.$detail['slug'].'/'. $detail['image']); ?>" width=250px>
                            <br>
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
                            <?php
                            echo form_label('Danh Mục', 'parent_id_shared');
                            echo form_error('parent_id_shared');
                            ?>
                            <select name="parent_id_shared" class="form-control" <?php echo $detail['check_parent_id'];?>>
                                <?php if ($detail['parent_id'] == 0): ?>
                                    <option value="0">Danh mục gốc</option>
                                <?php endif ?>
                                <?php echo $product_category; ?>
                            </select>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Slug', 'slug_shared');
                            echo form_error('slug_shared');
                            echo form_input('slug_shared', $detail['slug'], 'class="form-control" id="slug_shared" readonly');
                            echo form_label('Tiêu đề', 'title');
                            echo form_error('title');
                            echo form_input('title', trim($detail['title']), 'class="form-control" id="title" '.$detail['check_parent_id']);
                            echo form_label('Từ khóa meta', 'metakeywords');
                            echo form_error('metakeywords');
                            echo form_input('metakeywords', trim($detail['metakeywords']), 'class="form-control"');
                            echo form_label('Mô tả meta', 'metadescription');
                            echo form_error('metadescription');
                            echo form_input('metadescription', trim($detail['metadescription']), 'class="form-control"');
                            echo form_label('Nội dung', 'content');
                            echo form_error('content');
                            echo form_textarea('content', trim($detail['content']), 'class="tinymce-area form-control" rows="5"');
                            ?>
                        </div>
                        <?php echo form_submit('submit_shared', 'OK', 'class="btn btn-primary"'); ?>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript">
    $("[name=submit_shared]").click(function() {
        $('input,select').removeAttr('disabled');
    });
</script>
<script type="text/javascript" src="<?php echo base_url('assets/js/admin/script.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/admin/common.js') ?>"></script>

