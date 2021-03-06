<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Static/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/panel/notice.css">
    <!--<link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/panel/alert_info.css">-->
    <script type="text/javascript" src='/microweb/Public/Static/jquery-2.0.3.min.js'></script>
    <script type="text/javascript" src="/microweb/Public/Static/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/microweb/Public/Home/js/panel/notice.js"></script>
    <!--<script type="text/javascript" src="/microweb/Public/Home/js/panel/alert_info.js"></script>-->
</head>
<body>
<div id="notice">
    <div class="noticeTitle">
        <span><label for="noticeSetTitle">模块标题:</span>
        <span>
            <input type="text" id="noticeSetTitle" class="setNoticeTitle" value="滚动公告"/>
        </span>
    </div>
    <div class="noticeContent">
        <span>公告图标:</span>
        <span><input type="radio" id="noticeRadio1" checked="checked" name="noticeLogo"></span>
        <span><label for="noticeRadio1"><img src="/microweb/UserFiles/Public/Controller/notice/Images/noticeIco1.gif"></label></span>
        <span><input type="radio" id="noticeRadio2" name="noticeLogo"></span>
        <span><label for="noticeRadio2"><img src="/microweb/UserFiles/Public/Controller/notice/Images/noticeIco2.gif"></label></span>
        <span><input type="radio" id="noticeRadio3" name="noticeLogo"></span>
        <span><label for="noticeRadio3"><img src="/microweb/UserFiles/Public/Controller/notice/Images/noticeIco3.gif"></label></span>
        <!--<span><input type="radio" id="noticeRadio4" name="noticeLogo"><label for="noticeRadio4">无</label></span>-->
    </div>
    <div class="setNoticeType">
        <span>滚动样式:</span>
        <span><input type="radio" id="noticeRadio5" checked="checked" value="row" name="noticeType"><label for="noticeRadio5">横向</label></span>
        <span><input type="radio" id="noticeRadio6" value="cell" name="noticeType"><label for="noticeRadio6">竖直</label></span>
    </div>
    <div class="noticeList">
        <span>公告列表:</span>
        <span class="addBtn">添加公告</span>
    </div>
    <div class="setNotice">
        <table cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td><span>内容</span><br/><span class="bottomHr"></span></td>
                    <td><span>链接</span><br/><span></span></td>
                    <td><span>操作</span><br/><span></span></td>
                </tr>
            </tbody>
        </table>
        <div class="showContentList">

        </div>
    </div>
    <div class="popup">
        <div class="popupTitle">
            添加公告
        </div>
        <div class="setPopupContent">
            <span>公告内容:</span>
            <span><input type="text" class="setPopup"/></span>
        </div>
        <div class="setPopupType">
            <span>跳转方式:</span>
            <span><input type="radio" name="skipType" checked="checked"></span>
            <span>不跳转</span><br/>
            <span class="hint"></span>
        </div>
        <div class="btnOKFalse">
            <input type="button" class="btn btn-primary addOK" value="确定">
            <input type="button" class="btn btn-default addFalse" value="取消">
        </div>
    </div>
    <input type="hidden" id="controller-id" value="<?php echo ($controllerId); ?>" />
    <input type="hidden" id="status" value="<?php echo ($status); ?>">
    <!--<div id="top-alert-back">-->
        <!--<div id="top-alert" class="alert alert-warning alert-dismissible" role="alert">-->
            <!--<button type="button" class="close_hint"><span aria-hidden="true">×</span></button>-->
            <!--<div class="alert-content"></div>-->
        <!--</div>-->
    <!--</div>-->
</div>
</body>
</html>