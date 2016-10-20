<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?php echo ($meta_title); ?> | 微网站生成系统</title>
	<link rel="stylesheet" type="text/css" href="/microweb/Public/Static/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/base.css">
	<link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/side.css">
	<script type="text/javascript" src='/microweb/Public/Static/jquery-2.0.3.min.js'></script>
	<script type="text/javascript" src="/microweb/Public/Static/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/microweb/Public/Home/js/base.js"></script>
	<script type="text/javascript" src="/microweb/Public/Static/uploadifive/jquery.uploadifive.min.js"></script>
	<script type="text/javascript" src="/microweb/Public/Static/uploadify/jquery.uploadify.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/website/add_article.css">
	<link rel="stylesheet" type="text/css" href="/microweb/Public/Static/ueditor/themes/default/css/ueditor.css">
	<script type="text/javascript" src="/microweb/Public/Static/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" src="/microweb/Public/Static/ueditor/ueditor.all.js"></script>
	<script type="text/javascript" src="/microweb/Public/Static/ueditor/ueditor.all.js"></script>
	<script type="text/javascript" src="/microweb/Public/Static/ueditor/lang/zh-cn/zh-cn.js"></script>

</head>
<body>
	<!-- 头部 -->
	<div class="header">
		<div class="auto-center">
			<!-- logo -->
			<div class="logo">Logo</div>
			<!-- 主导航 -->
			<ul class="main-nav">
				<li class="nav-item"><a href="<?php echo U('Website/index');?>" >我的网站</a></li>
				<li class="nav-item"><a href="<?php echo U('Account/personalDetails');?>" >账户信息</a></li>
				<li class="nav-item"><a href="<?php echo U('Message/index');?>" >留言</a></li>
				<li class="nav-item"><a href="<?php echo U('Help/index');?>" >帮助教程</a></li>
			</ul>
			<!-- /主导航 -->
			<!-- 登录状态信息 -->
			<div class="login-bar">
				<div class="head-icon">
					<a href="<?php echo U('Account/personalDetails');?>">
						<?php if(empty($head_img)): ?><img src="/microweb/Public/Home/images/head_img/user.png" alt="head-img" class="head-img">
						<?php else: ?>
							<img src="/microweb/Uploads/<?php echo ($head_img); ?>" alt="head-img"><?php endif; ?>
					</a>
				</div>
				
				<?php if(is_login()): ?><a class="login-status logout-butotn" href="<?php echo U('Login/logout');?>">退出</a>
				<?php else: ?>
					<a class="login-status login-button"  href="<?php echo U('Login/login');?>">登录</a><?php endif; ?>

			</div>
			<!-- /登录状态信息 -->
		</div>
	</div>
	<div class="senior-nav">
		
	<div class="site-name-show"><?php echo ($site_name); ?></div>

	</div>
	<!-- /头部 -->
	<!-- 中间 -->
	<div class="center">
		<!-- 边栏 -->
		<div class="side">
			<div class="side-head">网站资源</div>
			<div class="side-item"><a href="/microweb/index.php/Home/Website/album_list/site_id/<?php echo ($site_id); ?>">相册</a></div>
			<div class="side-item"><a href="/microweb/index.php/Home/Website/article_list/site_id/<?php echo ($site_id); ?>">文章</a></div>
		</div>
		<!-- /边栏 -->
		<!-- 内容区 -->
		<div class="content">
			<?php $site_id = (int)session('site_id'); if( $site_id > 0 ){ echo '<div class="to-panel"><a href="/microweb/index.php/Home/Panel/index/site_id/'.$site_id.'">前往编辑页</a></div>'; } ?>
			
	<div class="centent-head">添加文章</div>
	<!-- <input id="create_album_url" type="hidden" value="/microweb/index.php/Home/Website/create_album">
	<input id="edit_album_url" type="hidden" value="/microweb/index.php/Home/Website/edit_album">
	<input id="del_album_url" type="hidden" value="/microweb/index.php/Home/Website/del_album"> -->
	<input id="article-url" type="hidden" value="/microweb/index.php/Home/Website/article_list/site_id/<?php echo ($site_id); ?>">
	<div class="add-article-panel">
			<?php if($is_edit == 1): ?><form action="/microweb/index.php/Home/Website/edit_article" id="article-form">
				<input id="article-id" name="id" type="hidden" value="<?php echo ($article_info["id"]); ?>">
			<?php else: ?>
			<form action="/microweb/index.php/Home/Website/insert_article" id="article-form">
				<input id="site-id" name="site_id" type="hidden" value="<?php echo ($site_id); ?>"><?php endif; ?>
			
			<div class="article-form-item">
				<label for="article-title" class="article-label">标题：</label>
				<input id="article-title" name="title" type="text" class="article-input form-control" value="<?php echo ($article_info["title"]); ?>">
			</div>
			<div class="article-form-item">
				<label for="article-source" class="article-label">来源：</label>
				<input id="article-source" name="source" type="text" class="article-input form-control" value="<?php echo ($article_info["source"]); ?>">
			</div>
			<div class="article-form-item">
				<label for="article-author" class="article-label">作者：</label>
				<input id="article-author" name="author" type="text" class="article-input form-control" value="<?php echo ($article_info["author"]); ?>">
			</div>
			<div class="article-form-item">
				<label for="article-url" class="article-label">网址：</label>
				<input id="article-url" name="url" type="text" class="article-input form-control" value="<?php echo ($article_info["url"]); ?>">
			</div>
			<div class="article-form-item">
				<label for="article-type" class="article-label">分类：</label>
				<input id="article-type" name="type_id" type="hidden" value="<?php echo ($article_info["type_id"]); ?>">
				<div class="dropdown">
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				  	<span id="type-name-span">请选择</span>
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
				  	<?php  foreach ($type_list as $key => $value) { $class = ""; if((int)$value['id'] == (int)$article_info['type_id']){ $class = " class='checked' "; } echo "<li ".$class."data='".$value['id']."'><a>".$value['name']."</a></li>"; } ?>
				  </ul>
				</div>
				<?php  if(empty($type_list)){ ?>
				<span id="add-type-info">还没有分类,先去<a id="add-type-a" href="/microweb/index.php/Home/Website/set_classify/site_id/<?php echo ($site_id); ?>">添加分类</a>吧</span>
				<?php
 } ?>
			</div>
			<textarea id="editor" name="content"><?php echo ($article_info["content"]); ?></textarea>
			<div class="article-form-item">
				<label for="article-picture" class="article-label">配图：</label>
				<input id="article-picture-id" name="pic_id" type="hidden" value="<?php echo ($article_info["pic_id"]); ?>">
				<input id="article-picture" name="article-picture" type="file">
				<div class="add-picture-button">上传图片</div>
				<div class="show-picture">
					<?php
 if(!empty($article_info['savepath'])){ echo "<img src = '".C('UPLOAD_ROOT').$article_info['savepath'].$article_info['savename']."'/>"; } ?>
				</div>
			</div>
		</form>
	</div>
	<div class="button-bar">
		<?php if($is_edit == 1): ?><button type="button" class="save" url="/microweb/index.php/Home/Website/edit_article">保存</button>
		<?php else: ?>
			<button type="button" class="save" url="/microweb/index.php/Home/Website/insert_article">保存</button><?php endif; ?>
		<button type="button" class="cencel" url="/microweb/index.php/Home/Website/article_list/site_id/<?php echo ($site_id); ?>">取消</button>
	</div>

		</div>
		<!-- 内容区 -->
	</div>
	<!-- /中间 -->
	<!-- 页脚 -->
	<div class="footer">
		
	</div>
	<input id="primary-index" type="hidden" value="<?php echo ($primary_index); ?>">
	<input id="senior-index" type="hidden" value="<?php echo ($senior_index); ?>">
	<input id="nav-index" type="hidden" value="<?php echo ($nav_index); ?>">
	<!-- /页脚 -->
	
	

<div id="top-alert-back">
	<div id="top-alert" class="alert alert-warning alert-dismissible" role="alert">
	      <button type="button" class="close"><span aria-hidden="true">×</span></button>
	      <div class="alert-content"></div>
	</div>
<div id="top-alert-back">

	<script type="text/javascript" src="/microweb/Public/Home/js/website/add_article.js"></script>

</body>
</html>