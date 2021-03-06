<link rel="stylesheet" href="<?php echo site_url('assets/sass/admin/') ?>detail.css">


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Chi tiết
            <small>
                Tour
            </small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="#"><i class="fa fa-dashboard"></i> Chi tiết</a></li>
            <li class="active">
                Tour
            </li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash() ?>" id="csrf" />
        <!-- Small boxes (Stat box) -->
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <ul class="nav nav-tabs" role="tablist" id="nav-product">
                            <li role="presentation" class="<?php echo ($this->uri->segment(5) == '' && !isset($_GET['active']))? 'active' : '' ?>"><a href="#tour" class="btn btn-primary" aria-controls="tour" role="tab" data-toggle="tab">Tour</a></li>
                            <li role="presentation"><a href="#date-tour" class="btn btn-primary" aria-controls="date-tour" role="tab" data-toggle="tab">Date tour</a></li>
                            <li role="presentation"><a href="#img-tour" class="btn btn-primary" aria-controls="img-tour" role="tab" data-toggle="tab">Nơi đến các ngày của tour</a></li>
                            <li role="presentation" class="<?php echo ($this->uri->segment(5) != '' || isset($_GET['active']))? 'active' : '' ?>" id="btn-active-comment"><a href="#comment" class="btn btn-primary" aria-controls="comment" role="tab" data-toggle="tab">Bình luận</a></li>
                        </ul>
                        <h3 class="box-title">Chi tiết</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade <?php echo ($this->uri->segment(5) == '' && !isset($_GET['active']))? 'in active' : '' ?>" id="tour">
                            <div class="box-body">
                                <div class="row">
                                    <?php if (!empty($detail['imglocaltion'])): ?>
                                        <div class="detail-image col-sm-6" style="margin-bottom: 5px;">
                                            <label>Hình ảnh location</label>
                                            <div class="row">
                                                    <div class="col-xs-12">
                                                        <div class="mask-sm">
                                                            <img src="<?php echo base_url('assets/upload/'.$controller.'/'.$detail['slug'].'/'.$detail['imglocaltion']) ?>" alt="anh-cua-<?php echo $detail['slug'] ?>" style="padding: 0px;">
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                    <?php endif ?>
                                    <?php if (!empty($detail['image'])): ?>
                                        <div class="detail-image col-sm-6" style="margin-bottom: 5px;">
                                            <label>Hình ảnh của tour</label>
                                            <div class="row">
                                                    <div class="col-xs-12">
                                                        <div class="mask-sm">
                                                            <img src="<?php echo base_url('assets/upload/'.$controller.'/'.$detail['slug'].'/'.$detail['image']) ?>" alt="anh-cua-<?php echo $detail['slug'] ?>" style="padding: 0px;">
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                    <?php endif ?>
                                    <div class="detail-info col-sm-12">
                                        <div class="table-responsive">
                                            <label>Thông tin</label>
                                            <table class="table table-striped">
                                                <tr>
                                                    <th>Đánh Giá</th>
                                                    <td style="">
                                                        <span class="rateit" data-rateit-value="<?php echo $rating ?>"  data-rateit-readonly="true" style="margin-top: 2px;"></span>
                                                        <span style="color:blue; padding-left: 10px;">
                                                            <?php echo $rating ?> Điểm / <?php echo $count_rating ?> Lượt đánh giá
                                                        </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Tour bán chạy</th>
                                                    <td><i class="<?php echo ($detail['bestselling'] == 1)?'glyphicon glyphicon-ok':'glyphicon glyphicon-remove'; ?>"></i></td>
                                                </tr>
                                                <tr>
                                                    <th>Tour hot</th>
                                                    <td><i class="<?php echo ($detail['hot'] == 1)?'glyphicon glyphicon-ok':'glyphicon glyphicon-remove'; ?>"></i></td>
                                                </tr>
                                                <tr>
                                                    <th>Hiển thị khuyến mãi</th>
                                                    <td><i class="<?php echo ($detail['showpromotion'] == 1)?'glyphicon glyphicon-ok':'glyphicon glyphicon-remove'; ?>"></i></td>
                                                </tr>
                                                <tr>
                                                    <th>Hiển thị trên banner</th>
                                                    <td><i class="<?php echo ($detail['is_banner'] == 1)?'glyphicon glyphicon-ok':'glyphicon glyphicon-remove'; ?>"></i></td>
                                                </tr>
                                                <tr>
                                                    <th>Slug</th>
                                                    <td><?php echo $detail['slug'] ?></td>
                                                </tr>
                                                <tr>
                                                    <th>Danh Mục</th>
                                                    <td><?php echo $detail['parent_title'] ?></td>
                                                </tr>
                                                <tr>
                                                    <th>Số ngày tour</th>
                                                    <td><?php echo count($detail['datetitle']) ?></td>
                                                </tr>
                                                <tr>
                                                    <th>Ngày khởi hành</th>
                                                    <td>
                                                        <?php
                                                            if($detail['date'] != "0000-00-00 00:00:00" && $detail['date'] != "1970-01-01 08:00:00"){
                                                                $time = explode("-",str_replace(" 00:00:00","",$detail['date']));
                                                                if(count($time) == 3){
                                                                    echo $time[2]."/".$time[1]."/".$time[0];
                                                                }
                                                            }
                                                        ?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Giá</th>
                                                    <td><?php echo number_format($detail['price']); ?> VND</td>
                                                </tr>
                                                <tr>
                                                    <th>Giám giá</th>
                                                    <td><?php echo $detail['percen'] ?>%</td>
                                                </tr>
                                                <tr>
                                                    <th>Giá sau khi giảm giá</th>
                                                    <td><?php echo number_format(($detail['pricepromotion'] != 0)?$detail['pricepromotion']:$detail['price']); ?> VND</td>
                                                </tr>
                                                <tr>
                                                    <th>Những nơi đi</th>
                                                    <td><?php echo $detail['localtion'] ?></td>
                                                </tr>

                                            </table>
                                        </div>
                                    </div>
                                    <div class="col-xs-12">
                                        <div class="table-responsive">
                                            <table class="table table-striped">
                                                <tbody>
                                                    <tr>
                                                        <th style="width: 20%">Tiêu đề: </th>
                                                        <td><?php echo $detail['title'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 20%">Mô tả: </th>
                                                        <td><?php echo $detail['description'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 20%">Nội dung: </th>
                                                        <td><?php echo $detail['content'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 20%">Từ khóa meta: </th>
                                                        <td><?php echo $detail['metakeywords'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 20%">Mô tả meta: </th>
                                                        <td><?php echo $detail['metadescription'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 20%">Ghi chú: </th>
                                                        <td><?php echo $detail['tripnodes'] ?></td>
                                                    </tr>
                                                    <tr>
                                                        <th style="width: 20%">Chi tiết giá: </th>
                                                        <td><?php echo $detail['detailsprice'] ?></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>

                                </div>

                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="date-tour">
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <?php
                                            if(!empty($detail['dateimg'])){
                                                $detailimg = json_decode($detail['dateimg']);
                                            }
                                        ?>
                                        <?php for ($i=0; $i < count($detail['datetitle']); $i++): ?>
                                            <div role="tabpanel" class="tab-pane active" id="<?php echo $i; ?>">
                                                <div class="title-content-date showdate <?php echo $i; ?>">
                                                    <div class="btn btn-primary col-xs-12 btn-margin collapsed" type="button" data-toggle="collapse" href="#showdatecontent_<?php echo $i; ?>" aria-expanded="false" aria-controls="messageContent" style="padding:10px 0px;margin-bottom:3px;">
                                                        <div class="col-xs-11">Nội dung Đầy đủ Ngày <?php echo $i+1; ?></div>
                                                    </div>
                                                    <div class="no_border">
                                                        <div class="collapse" id="showdatecontent_<?php echo $i; ?>">
                                                            <div class="col-xs-12 title-content-date date " style="margin-top:-5px;">
                                                                <div class="img-vehicles">
                                                                    <div class="col-md-6 img">
                                                                        <img src="<?php echo base_url('assets/upload/'.$controller.'/'.$detail['slug'].'/' .$detailimg[$i]) ?>" alt="anh-cua-<?php echo $detail['datetitle'][$i] ?>" width="100%" >
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="table-responsive" style="border:1px solid gray;">
                                                                            <table class="table table-responsive">
                                                                                <tbody>

                                                                                    <tr>
                                                                                        <th style="width: 150px">Phương tiện đi: </th>
                                                                                        <td><?php echo $request_vehicles[$detail['vehicles'][$i]]; ?></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <th style="width: 150px">Tiêu đề ngày <?php echo ($i+1); ?>: </th>
                                                                                        <td><?php echo $detail['datetitle'][$i]; ?></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <th style="width: 150px">Nội dung ngày <?php echo ($i+1); ?>: </th>
                                                                                        <td><?php echo $detail['datecontent'][$i]; ?></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endfor; ?>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="img-tour">
                            <div class="box-body">
                                <div class="row">
                                    <div class="detail-image col-sm-12">
                                        <?php for($h = 0;$h < count($detail['librarylocaltion']); $h++): ?>
                                            <div role="tabpanel" class="tab-pane active" id="localtion_<?php echo $h; ?>">
                                                <div class="title-content-date showdate <?php echo $h; ?>">
                                                    <div class="btn btn-primary col-xs-12 btn-margin collapsed" type="button" data-toggle="collapse" href="#librarylocaltion_<?php echo $h; ?>" aria-expanded="false" aria-controls="messageContent" style="margin-bottom:3px;padding:10px 0px;">
                                                        <div class="col-xs-11">Nơi đến Ngày <?php echo $h+1; ?></div>
                                                    </div>
                                                    <div class="no_border">
                                                        <div class="col-xs-12">
                                                        <div class="collapse" id="librarylocaltion_<?php echo $h; ?>">
                                                            <?php if (!empty($detail['librarylocaltion'][$h])): ?>
                                                                <?php foreach ($detail['librarylocaltion'][$h] as $k => $value): ?>
                                                                    <?php if(!empty($value)): ?>
                                                                        <div class="col-sm-12" style="margin:10px 0px;">
                                                                            <div class="col-sm-5" style="padding: 0px; padding-right: 5px;">
                                                                                <img src="<?php echo base_url('assets/upload/localtion/'.$value['slug'].'/' .$value['image']) ?>" alt="anh-cua-<?php echo $detail['slug'] ?>"  style="width: 100%;">
                                                                            </div>
                                                                            <div class="col-sm-7" style="padding: 0px;">
                                                                                
                                                                                    <div style="padding: 5px;">
                                                                                        <label for="">Tiêu đề:</label>
                                                                                        <p>
                                                                                            <?php echo $value['title'] ?>
                                                                                        </p>
                                                                                        <label for="">Nội dung:</label>
                                                                                        <p>
                                                                                            <?php echo $value['content'] ?>
                                                                                        </p>
                                                                                    </div>
                                                                            </div>
                                                                        </div>
                                                                        <?php if ($k+1 < count($detail['librarylocaltion'][$h])): ?>
                                                                            <div style="border:2px solid gray" class="col-md-12"> </div>  
                                                                        <?php endif ?>       
                                                                    <?php else: ?>
                                                                        <div style="padding:20px;">
                                                                            Không có nơi nào được chọn trong ngày    
                                                                        </div>
                                                                    <?php endif;?>
                                                                <?php endforeach ?>
                                                            <?php endif ?>
                                                        </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endfor; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade <?php echo ($this->uri->segment(5) != '' || isset($_GET['active']))? 'in active' : '' ?>" id="comment">
                            <div class="box-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <table class="table table-hover table-bordered table-condensed">
                                            <tbody>
                                                <tr>
                                                    <td style="width: 150px"><b><a href="#">Email</a></b></td>
                                                    <td style="width: 100px"><b><a href="#">Họ tên</a></b></td>
                                                    <td><b><a href="#">Nội dung</a></b></td>
                                                    <td style="width: 100px"><b>Operations</b></td>
                                                </tr>
                                                <?php foreach ($comments as $key => $value): ?>
                                                    <tr class="remove_<?php echo $value['id'] ?>">
                                                        <td><?php echo $value['email'] ?></td>
                                                        <td><?php echo $value['name'] ?></td>
                                                        <td><?php echo $value['content'] ?></td>
                                                        <td>
                                                            <form class="form_ajax">
                                                                <a href="javascript:void(0)" title="Xóa" class="btn-removes" data-id="<?php echo $value['id'] ?>" data-controller="comment" data-type="<?php echo $value['type'] ?>">
                                                                    <i class="fa fa-trash-o" aria-hidden="true"></i>
                                                                </a>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                <?php endforeach ?>
                                            </tbody>
                                        </table>
                                        <div class="col-md-6 col-md-offset-5 page">
                                            <?php echo $page_links ?>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <div class="col-md-12">
                <div class="box box-warning">
                    <div class="box-body">
                        <button style="float: left;" class="btn btn-warning" onclick="history.back(-1);" role="button">Go back</button>
                        <a style="float: right;" href="<?php echo base_url('admin/'.$controller.'/edit/'.$detail['id']) ?>" class="btn btn-warning" role="button">Chỉnh sửa</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- END ACCORDION & CAROUSEL-->
    </section>
</div>

<script type="text/javascript">
    $('#btn-active-comment').click(function(){
        if(window.location.search != '?active=true'){
            window.location.replace(window.location.href+"?active=true");
        }
    });
</script>