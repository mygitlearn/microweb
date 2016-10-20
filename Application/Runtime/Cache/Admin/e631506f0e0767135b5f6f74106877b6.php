<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo ($meta_title); ?>|系统管理平台</title>
    <link href="/microweb/Public/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Admin/css/base.css" media="all">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Admin/css/common.css" media="all">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Admin/css/module.css">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Admin/css/style.css" media="all">
	<link rel="stylesheet" type="text/css" href="/microweb/Public/Admin/css/blue_color.css" media="all">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Static/uploadifive/uploadifive.css" media="all">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Admin/css/Backstage/mybase.css" media="all">
     <!--[if lt IE 9]>
    <script type="text/javascript" src="/microweb/Public/Static/jquery-1.10.2.min.js"></script>
    <![endif]--><!--[if gte IE 9]><!-->
    <script type="text/javascript" src="/microweb/Public/Static/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="/microweb/Public/Admin/js/jquery.mousewheel.js"></script>
    <script type="text/javascript" src="/microweb/Public/Admin/js/common.js"></script>
    <script type="text/javascript" src="/microweb/Public/Static/uploadifive/jquery.uploadifive.min.js"></script>
    <script type="text/javascript" src="/microweb/Public/Static/uploadify/jquery.uploadify.min.js"></script>

    <!--<![endif]-->
    
	<script type="text/javascript" src="/microweb/Public/Static/ueditor/ueditor.parse.js"></script>
	<script type="text/javascript" src="/microweb/Public/Static/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" src="/microweb/Public/Static/ueditor/ueditor.all.js"></script>
	<script type="text/javascript" src="/microweb/Public/Static/ueditor/lang/zh-cn/zh-cn.js"></script>
	<style type="text/css">
		.main-title{
			margin-bottom: 10px;
		}
		#content{
			width: 95%;
			height: 400px;
			margin-bottom: 20px;
			background: white;
		}
		#title{
			width: 95%;
			height: 50px;
		}
		#ipt{
			width: 200px;
			height: 25px;
			border-radius: 5px;
			border: 2px solid #D4D4D4;
		}
		
		
	</style>

</head>
<body>
    <!-- 头部 -->
    <div class="header">
        <!-- Logo -->
        <span class="logo">微站后台管理</span>
        <!-- /Logo -->

        <!-- 主导航 -->
        <ul class="main-nav">
            <?php if(is_array($top_menu)): $i = 0; $__LIST__ = $top_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li class="state_color"><a href="<?php echo (U($menu["node_url"])); ?>"><?php echo ($menu['node_name']); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        <!-- /主导航 -->

        <!-- 用户栏 -->
        <div class="user-bar">
            <a href="javascript:;" class="user-entrance"><i class="icon-user"></i></a>
            <ul class="nav-list user-menu hidden">
                <li class="manager">你好，<em title="<?php echo session('admin_user');?>"><?php echo session('admin_user');?></em></li>
                <li><a href="<?php echo U('Website/addUser?choice=1');?>">修改信息</a></li>
                <!-- <li><a href="<?php echo U('User/updatePassword');?>">修改密码</a></li> -->
                <!-- <li><a href="<?php echo U('User/updateNickname');?>">修改昵称</a></li> -->
                <li><a href="<?php echo U('Public/logout');?>">退出</a></li>
            </ul>
        </div>
    </div>
    <!-- /头部 -->

    <!-- 边栏 -->
    <div class="sidebar">
        <!-- 子导航 -->
        
            <div id="subnav" class="subnav">
                <?php if(!empty($_extra_menu)): ?>
                    <?php echo extra_menu($_extra_menu,$__MENU__); endif; ?>
                <?php if(is_array($child_menu)): $i = 0; $__LIST__ = $child_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sub_menu): $mod = ($i % 2 );++$i;?><!-- 子导航 -->
                    <?php if(!empty($sub_menu)): if(!empty($key)): ?><h3><i class="icon icon-unfold"></i><?php echo ($key); ?></h3><?php endif; ?>
                        <ul class="side-sub-menu">
                            <?php if(is_array($sub_menu)): $i = 0; $__LIST__ = $sub_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$menu): $mod = ($i % 2 );++$i;?><li>
                                    <a class="item" href="<?php echo (U($menu["node_url"])); ?>"><?php echo ($menu["node_name"]); ?></a>
                                </li><?php endforeach; endif; else: echo "" ;endif; ?>
                        </ul><?php endif; ?>
                    <!-- /子导航 --><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        
        <!-- /子导航 -->
    </div>
    <!-- /边栏 -->

    <!-- 内容区 -->
    <div id="main-content">
        <div id="top-alert" class="fixed alert alert-error" style="display: none;">
            <button class="close fixed" style="margin-top: 4px;">&times;</button>
            <div class="alert-content">这是内容</div>
        </div>
        <div id="main" class="main">
            
            <!-- nav -->
            <?php if(!empty($_show_nav)): ?><div class="breadcrumb">
                <span>您的位置:</span>
                <?php $i = '1'; ?>
                <?php if(is_array($_nav)): foreach($_nav as $k=>$v): if($i == count($_nav)): ?><span><?php echo ($v); ?></span>
                    <?php else: ?>
                    <span><a href="<?php echo ($k); ?>"><?php echo ($v); ?></a>&gt;</span><?php endif; ?>
                    <?php $i = $i+1; endforeach; endif; ?>
            </div><?php endif; ?>
            <!-- nav -->
            

            
	<div class="main-title">
		<h2>编辑指导使用教程</h2>
	</div>
	<div id="title"><h3 id="h" style="width:90px;float: left;">内容标题：</h3>
		<input id="ipt" type="text" value="<?php echo ($list["guide_title"]); ?>"></div>
    <div id="content">
    	<textarea id="myEditor" name="news_content" style="width:100%;min-height:80%;float:left;"><?php echo ($list["content"]); ?></textarea>
    </div>
    
    <button class="btn" url="<?php echo U();?>" uid="<?php echo ($list["id"]); ?>">提交</button>


        </div>
        <div class="cont-ft">
            <div class="copyright">
                <div class="fl">感谢使用<a href="/microweb/index.php/Admin/index/index" target="_blank">微站</a>管理平台</div>
                <!-- <div class="fr">V<?php echo (ONETHINK_VERSION); ?></div> -->
            </div>
            <input type="hidden" id="nums" value = '<?php echo ($urlcolor); ?>'>
            <input type="hidden" id="leftnums" value = '<?php echo ($lefturlcolor); ?>'>
        </div>
    </div>
    <!-- /内容区 -->
    <script type="text/javascript">
    (function(){
        var ThinkPHP = window.Think = {
            "ROOT"   : "/microweb", //当前网站地址
            "APP"    : "/microweb/index.php", //当前项目地址
            "PUBLIC" : "/microweb/Public", //项目公共目录地址
            "DEEP"   : "<?php echo C('URL_PATHINFO_DEPR');?>", //PATHINFO分割符
            "MODEL"  : ["<?php echo C('URL_MODEL');?>", "<?php echo C('URL_CASE_INSENSITIVE');?>", "<?php echo C('URL_HTML_SUFFIX');?>"],
            "VAR"    : ["<?php echo C('VAR_MODULE');?>", "<?php echo C('VAR_CONTROLLER');?>", "<?php echo C('VAR_ACTION');?>"]
        }
    })();
    </script>
    <script type="text/javascript" src="/microweb/Public/Static/think.js"></script>
    <script type="text/javascript">

        +function(){
            var $window = $(window), $subnav = $("#subnav"), url;
            $window.resize(function(){
                $("#main").css("min-height", $window.height() - 130);
            }).resize();

            /* 左边菜单高亮 */
            url = window.location.pathname + window.location.search;
            url = url.replace(/(\/(p)\/\d+)|(&p=\d+)|(\/(id)\/\d+)|(&id=\d+)|(\/(group)\/\d+)|(&group=\d+)/, "");
            $subnav.find("a[href='" + url + "']").parent().addClass("current");

            /* 左边菜单显示收起 */
            $("#subnav").on("click", "h3", function(){
                var $this = $(this);
                $this.find(".icon").toggleClass("icon-fold");
                $this.next().slideToggle("fast").siblings(".side-sub-menu:visible").
                      prev("h3").find("i").addClass("icon-fold").end().end().hide();
            });

            $("#subnav h3 a").click(function(e){e.stopPropagation()});

            //主导航
            var i = 0;
            $('.state_color').each(function(){
                if($('.state_color:eq('+i+') a:only-child').attr('href') == $('#nums').val()+'/index'){
                    $('.state_color:eq('+i+')').addClass('current');
                }
                i++;
            });
            var j = 0;
            $('.item').each(function(){
                if($('.item:eq('+j+')').attr('href') == $('#leftnums').val()){
                    $('.item:eq('+j+')').parent().addClass('current');
                }
                j++;
            });


            /* 头部管理员菜单 */
            $(".user-bar").mouseenter(function(){
                var userMenu = $(this).children(".user-menu ");
                userMenu.removeClass("hidden");
                clearTimeout(userMenu.data("timeout"));
            }).mouseleave(function(){
                var userMenu = $(this).children(".user-menu");
                userMenu.data("timeout") && clearTimeout(userMenu.data("timeout"));
                userMenu.data("timeout", setTimeout(function(){userMenu.addClass("hidden")}, 100));
            });

	        /* 表单获取焦点变色 */
	        $("form").on("focus", "input", function(){
		        $(this).addClass('focus');
	        }).on("blur","input",function(){
				        $(this).removeClass('focus');
			        });
		    $("form").on("focus", "textarea", function(){
			    $(this).closest('label').addClass('focus');
		    }).on("blur","textarea",function(){
			    $(this).closest('label').removeClass('focus');
		    });

            // 导航栏超出窗口高度后的模拟滚动条
            var sHeight = $(".sidebar").height();
            var subHeight  = $(".subnav").height();
            var diff = subHeight - sHeight; //250
            var sub = $(".subnav");
            if(diff > 0){
                $(window).mousewheel(function(event, delta){
                    if(delta>0){
                        if(parseInt(sub.css('marginTop'))>-10){
                            sub.css('marginTop','0px');
                        }else{
                            sub.css('marginTop','+='+10);
                        }
                    }else{
                        if(parseInt(sub.css('marginTop'))<'-'+(diff-10)){
                            sub.css('marginTop','-'+(diff-10));
                        }else{
                            sub.css('marginTop','-='+10);
                        }
                    }
                });
            }
        }();
    </script>
    
	<script type="text/javascript">
		var ue = UE.getEditor("myEditor",{
			toolbars: [['source', '|', 'undo', 'redo', '|','bold', 'italic', 'underline', 'fontborder', 'strikethrough', 
            'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'pasteplain', '|', 'forecolor', 
            'backcolor', 'insertorderedlist', 'insertunorderedlist', '|', 'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
            'indent', '|', 'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|', 'justifyleft', 'justifycenter', 'justifyright', 
            'justifyjustify', '|', 'touppercase', 'tolowercase', '|','link', 'unlink','|','insertimage', 'emotion', 'attachment',
            'insertcode', 'pagebreak', 'background', '|', 'spechars', 'snapscreen', '|','inserttable', 'deletetable', 
            'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 
            'mergedown', 'splittocells', 'splittorows', 'splittocols', '|', 'searchreplace']],
    		autoHeightEnabled: true,
   			autoFloatEnabled: true
		});
		//加内容改变事件监听
		ue.addListener('contentChange',function(e){
			$(".btn").attr("disabled",false);
		});
		$(".btn").click(function(){
			var title = $("#ipt").val();
			$("#wore").remove();
			if (/<\s*(\S+)(\s[^>]*)?>[\s\S]*<\s*\/\1\s*>/.test(title)==true || title=="") {
				var error = "<span id='wore' style='color:red;font-size:16px;margin-left:20px;'>请确认输入信息</span>";
				$("#ipt").after(error);
				return;
			};
			if (title.length>10) {
				var error = "<span id='wore' style='color:red;font-size:16px;margin-left:20px;'>请简练文字信息</span>";
				$("#ipt").after(error);
				return;
			};
			var url = $(this).attr("url");
			var editor = ue.getContent();
			var seat = $(this).attr("uid");

			$.post(url,{title:title,editor:editor,seat:seat},function(data){
				if (data==""){
					var error = "<span id='sp' style='width:90%;line-height:30px;background:red;float:left;margin-left:-160px;z-index:10'><h2 style='color:white;'>对不起，操作失败！</h2></span>";
			    }else{
					$(".btn").attr("disabled",true);
					var error = "<span id='sp' style='width:90%;line-height:30px;background:green;float:left;margin-left:-160px;z-index:10'><h2 style='color:white;'>编辑成功</h2></span>";
				}
				$(".main-title").append(error);
				setTimeout(function(){
					$("#sp").remove();
				},2000);
			});
		})
	

	</script>


</body>
</html>