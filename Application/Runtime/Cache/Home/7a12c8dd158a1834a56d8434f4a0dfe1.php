<?php if (!defined('THINK_PATH')) exit();?>
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Static/bootstrap/css/bootstrap.css">
    <script type="text/javascript" src='/microweb/Public/Static/jquery-2.0.3.min.js'></script>
    <script type="text/javascript" src="/microweb/Public/Static/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/register.css">
    <link rel="stylesheet" type="text/css" href="/microweb/Public/Home/css/forgotPassword.css">


    <form class="form-horizontal" role="form">
        <div class="verifyProblem">
            <div class="form-group">
                <label for="account" class="col-sm-2 control-label">账&emsp;户:</label>
                <div class="col-sm-8">
                    <div class="input"><input type="text" class="form-control" onkeyup="value=value.replace(/[W]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^d]/g,''))" id="account" maxlength="15"></div>
                    <div class="hint"><span></span></div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">问题一:</label>
                <div class="col-sm-8">
                    <select class="form-control" id="problem1">
                        <option value="-1">请选择密保问题</option>
                        <?php if(is_array($problem)): foreach($problem as $key=>$vo): ?><option value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["question"]); ?></option><?php endforeach; endif; ?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="answer1" class="col-sm-2 control-label">答&emsp;案</label>
                <div class="col-sm-8">
                    <div class="input"><input type="text" class="form-control" id="answer1"></div>
                    <div class="hint"><span></span></div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">问题二:</label>
                <div class="col-sm-8">
                    <select class="form-control" id="problem2">
                        <option value="-1">请选择密保问题</option>
                        <?php if(is_array($problem)): foreach($problem as $key=>$vo): ?><option value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["question"]); ?></option><?php endforeach; endif; ?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="answer2" class="col-sm-2 control-label">答&emsp;案</label>
                <div class="col-sm-8">
                    <div class="input"><input type="text" class="form-control" id="answer2"></div>
                    <div class="hint"><span></span></div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">问题三:</label>
                <div class="col-sm-8">
                    <select class="form-control" id="problem3">
                        <option value="-1">请选择密保问题</option>
                        <?php if(is_array($problem)): foreach($problem as $key=>$vo): ?><option value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["question"]); ?></option><?php endforeach; endif; ?>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="answer3" class="col-sm-2 control-label">答&emsp;案</label>
                <div class="col-sm-8">
                    <div class="input"><input type="text" class="form-control" id="answer3"></div>
                    <div class="hint"><span></span></div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="btn btn-default" id="verifyNow">立即验证</button>
                </div>
            </div>
        </div>
        <div class="forgetPassword">
            <div class="form-group">
                <label for="Password" class="col-sm-2 control-label">密码</label>
                <div class="col-sm-8">
                    <div class="input"><input type="password" class="form-control" id="Password" maxlength="16"></div>
                    <div class="hint">
                        <span>长度为6-16个字符</span><br/>
                        <span>不能包含空格</span><br/>
                        <span>不能是9位以下纯数字</span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="confirmPassword" class="col-sm-2 control-label">确认密码</label>
                <div class="col-sm-8">
                    <div class="input"><input type="password" class="form-control" id="confirmPassword" maxlength="16"></div>
                    <div class="hint">
                        <span>请再次输入密码</span>
                    </div>
                </div>
            </div>
            <div class="form-group has-success has-feedback">
                <label  class="col-sm-2 control-label" id="authCode_label" for="authCode">验证码:</label>
                <div class="col-sm-8">
                    <input name="verify" type="text" id="authCode" class="form-control"/>
                    <img src="verify" border="0" title="点击刷新" alt="验证码" id="authImg" onClick="this.src=this.src+'?'+Math.random()"/>
                    <span></span>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="btn btn-default" id="getPassword">提交</button>
                </div>
            </div>
        </div>
    </form>

    <div id="top-alert-back">
        <div id="top-alert" class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close_hint"><span aria-hidden="true">×</span></button>
            <div class="alert-content"></div>
        </div>
    </div>
    <div id="top-alert-back"></div>


    <script type="text/javascript" src="/microweb/Public/Home/js/forgotPassword.js"></script>