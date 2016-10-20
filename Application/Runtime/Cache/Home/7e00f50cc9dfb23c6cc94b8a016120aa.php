<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/panel/banner.css">
    <!--<link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/panel/alert_info.css">-->
    <script type="text/javascript" src='/microweb/Public/Static/jquery-2.0.3.min.js'></script>
    <script type="text/javascript" src="/microweb/Public/Static/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/microweb/Public/Home/js/panel/banner.js"></script>
    <!--<script type="text/javascript" src="/microweb/Public/Home/js/panel/alert_info.js"></script>-->
</head>
<body>
<div id="banner">
    <!--<div class="bannerTitle">-->
        <!--<h3>横幅</h3>-->
    <!--</div>-->
    <div class="bannerContent">
        <div class="chooseAlbum">
            请选择图册:
            <?php if(is_array($album_list)): foreach($album_list as $key=>$vo): ?><span class="album" albumId = "<?php echo ($vo["id"]); ?>"><?php echo ($vo["name"]); ?></span><?php endforeach; endif; ?>
        </div>
        <div class="pic_show">
            <?php if(empty($album_list)): ?><h3 style="text-align: center; color: red;">无相册,请去添加</h3>
            <?php else: ?>
                <?php if(is_array($album_pic)): foreach($album_pic as $key=>$vo): ?><div class='pattern'>
                        <div>
                            <img src="/microweb/Uploads/<?php echo ($vo["savepath"]); echo ($vo["savename"]); ?>">
                        </div>
                    </div><?php endforeach; endif; endif; ?>
        </div>
    </div>
    <!--<?php echo (dump($controller-id)); ?>-->
    <!--<?php echo ($controller-id); ?>-->
    <input type="hidden" id="controller-id" value="<?php echo ($controllerId); ?>" />
    <input type="hidden" id="status" value="<?php echo ($status); ?>">
    <!--<div id="top-alert-back">-->
        <!--<div id="top-alert" class="alert alert-warning alert-dismissible" role="alert">-->
            <!--<button type="button" class="close_hint"><span aria-hidden="true">×</span></button>-->
            <!--<div class="alert-content"></div>-->
        <!--</div>-->
    <!--</div>-->
</div>
</div>
</body>
</html>