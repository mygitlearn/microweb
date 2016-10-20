$(function(){
    //弹出信息提示
    function alert_info(text,type){
        var top_alert = $('#top-alert');
        top_alert.find(".alert-content").text(text);
        if(type == 1){
            top_alert.removeClass('alert-danger alert-warning').addClass('alert-success');
        }else if(type == 0){
            top_alert.removeClass('alert-success alert-warning').addClass('alert-danger');
        }else{
            top_alert.removeClass('alert-success alert-danger').addClass('alert-warning');
        }
        $('#top-alert-back').show();
        top_alert.animate({"opacity":1},250);

        setTimeout(function(){
            $('#top-alert').find('button').click();
        },2000);
    }
    /**弹出信息框的关闭**/
    $('.close_hint').click(function(){
        $('#top-alert').animate({"opacity":0},250,function(){$('#top-alert-back').hide()});
    });
    /*
    * 获得焦点事件
    * 弹出提示框
    */
    $("#account,#Password,#confirmPassword").focus(function(){
        $(this).parent(".input").next().show();
    })
    //验证账号
    function verifyAccount(){
        $account = $("#account").val();
        var that = $("#account").parents(".col-sm-8").find(".hint");
        that.find("span").html("字母、数字或其组合9-15位");
        if($account.length<9 || !/^\w+$/.test($account)){
            that.find("span").css("color","red");
        }else{
            that.find("span").css("color","green");
        }
    }
    //验证密码
    function verifyPwd(){
        $password = $("#Password").val();
        var that = $("#Password").parents(".col-sm-8").find(".hint");
        //验证是否为九位以下纯数字
        if(/^\d+$/.test($password) && $password.length<9){
            that.find("span").eq(2).css("color",'red');
        }else{
            that.find("span").eq(2).css("color",'green');
        }
        //验证密码至少六位(非纯数字)
        if($password.length<6){
            that.find("span").eq(0).css("color",'red');
        }else{
            that.find("span").eq(0).css("color",'green');
        }
        //验证两次密码是否一样
        $confirmPassword = $("#confirmPassword").val();
        if($confirmPassword != ""){
            if($confirmPassword != $password){
                var that = $("#confirmPassword").parents(".col-sm-8").find(".hint");
                that.show();
                that.find("span").html("密码不一致");
                that.find("span").css("color","red");
            }
        }
    }
    //验证两次密码是否一致
    function verifyPwdEqual(){
        $confirmPassword = $("#confirmPassword").val();
        $password = $("#Password").val();
        var that = $("#confirmPassword").parents(".col-sm-8").find(".hint");
        if($password ==""){
            that.find("span").html("密码不能为空");
            that.find("span").css("color","red");
        }else if($confirmPassword != $password){
            that.find("span").html("密码不一致");
            that.find("span").css("color","red");
        }else{
            that.find("span").html("密码正确").css("color","green");
        }
    }
    /*
    * 绑定键盘事件
    * 验证是否有空格
    */
    $(document).keyup(function(e){
        if(!e) var e = window.event;
        var $focused = $(':focus').attr("id");
        switch($focused){
            case "account":
                verifyAccount();
                break;
            case "Password":
                verifyPwd();
                break;
            case  "confirmPassword":
                verifyPwdEqual();
                break;
        }
//        监听空格键账户密码均不能有空格
        if(e.keyCode==32){
            switch($focused){
                case "account":
                    that = $("#account").parents(".col-sm-8").find(".hint");
                    that.find("span").html("不能存在空格");
                    that.find("span").css("color",'red');
                    break;
                case "Password":
                    $("#Password").parents(".col-sm-8").find(".hint").find("span").eq(1).css("color",'red');
                    break;
            }
        }
        //监听删除键判断账户密码是否有空格
        if(e.keyCode==8){
            switch($focused){
                case "account":
                    $account = $("#account").val();
                    that = $("#account").parents(".col-sm-8").find(".hint");
                    if($account.indexOf(" ") == -1){
                        that.find("span").html("字母、数字或其组合9-15位");
                    }
                    break;
                case "Password":
                    $password = $("#Password").val();
                    if($password.indexOf(" ") == -1){
                        $("#Password").parents(".col-sm-8").find(".hint").find("span").eq(1).css("color",'green');
                    }
                    //验证两次密码是否一样
                    $confirmPassword = $("#confirmPassword").val();
                    if($confirmPassword != ""){
                        if($confirmPassword == $password){
                            var that = $("#confirmPassword").parents(".col-sm-8").find(".hint");
                            that.show();
                            that.find("span").html("密码正确").css("color","green");
                        }
                    }
                    break;
            }
        }
    });
    /*
     * 失去焦点事件
     * 账号正则匹配
     * 账号密码、确认密码
     */
    $("#account").blur(function(){
        $account = $(this).val();
        if($account != ''){
            if(!/^[a-z,A-Z,1-9]{9,15}$/.test($account)){
                $("#account").parents(".col-sm-8").find(".hint").find("span").html("格式错误");
            }else{
                $(this).parent(".input").next().hide();
            }
        }else{
            that = $("#account").parents(".col-sm-8").find(".hint");
            that.find("span").html("账号不能为空").css("color",'red');
        }
    })
    $("#Password").blur(function(){
        $password = $("#Password").val();
        var that = $("#Password").parents(".col-sm-8").find(".hint");
        if($password != ''){
            if((/^\d+$/.test($password) && $password.length>=9)||(!(/^\d+$/.test($password)) && $password.length>=6)){
                that.hide();
            }
        }
    })
    $("#confirmPassword").blur(function(){
        $confirmPassword = $("#confirmPassword").val();
        if($confirmPassword == $password){
            $("#confirmPassword").parents(".col-sm-8").find(".hint").hide();
        }
    })
    //解决问题重复
    $("select").change(function(){
        $("select option").attr("disabled",false);
        $("select option").show();
        for(i = 0; i < $("select").length; i++){
            that = $("select").eq(i);
            $val = that.val();
            if($val != -1){
                $("select").not(that).find("option[value="+$val+"]").hide();
                $("select").not(that).find("option[value="+$val+"]").attr("disabled",true);
            }
        }
    })

 //form显示
    $("#first_content_top").find(".circle").addClass("back");
    $("#next_problem").click(function(){
        $account = $("#account").val();
        if(!/^[\w]{9,15}$/.test($account)){
            $("#account").focus();
            return;
        }
        $password = $("#Password").val();
        if(/^\d+$/.test($password) && $password.length<9 || $password.length<6){
            $("#Password").focus();
            return;
        }
        $confirmPassword = $("#confirmPassword").val();
        if($password != $confirmPassword){
            $("#confirmPassword").focus();
            return;
        }
        //判断账户名是否存在
        $.post("verifyAccount",{account:$account},function(data){
            if(data != "ok"){
                alert_info("账户已存在",0);
            }else{
                $("#second_content_top").addClass("back");
                $("#second_content_top").find(".circle").addClass("back");
                $("#first_form").toggle();
                $("#second_form").toggle();
            }
        })
    });
    $("#back").click(function(){
        $("#second_content_top").removeClass("back");
        $("#second_content_top").find(".circle").removeClass("back");
        $("#first_form").toggle();
        $("#second_form").toggle();
    })

    /*
    * 收集数据
    * 验证数据
    */
    function getVerifyData(){
        $problem1 = $("#problem1").val();
        if($problem1 == -1){
            $("#answer1").parents(".col-sm-8").find('.hint').show().find("span").html("请选择密保").css("color","red");
            hint_hide("answer1");
            return false;
        }else{
            $answer1 = $.trim($("#answer1").val());
            if($answer1 == ''){
                $("#answer1").focus();
                $("#answer1").parents(".col-sm-8").find("span").html("答案不能为空").css("color","red");
                hint_hide("answer1");
                return false;
            }
        }
        $problem2 = $("#problem2").val();
        if($problem2 == -1){
            $("#answer2").parents(".col-sm-8").find('.hint').show().find("span").html("请选择密保").css("color","red");
            hint_hide("answer2");
            return false;
        }else{
            $answer2 = $.trim($("#answer2").val());
            if($answer2 == ''){
                $("#answer2").focus();
                $("#answer2").parents(".col-sm-8").find("span").html("答案不能为空").css("color","red");
                hint_hide("answer2");
                return false;
            }
        }
        $problem3 = $("#problem3").val();
        if($problem3 == -1){
            $("#answer3").parents(".col-sm-8").find(".hint").show().find("span").html("请选择密保").css("color","red");
            hint_hide("answer3");
            return false;
        }else{
            $answer3 = $.trim($("#answer3").val());
            if($answer3 == ''){
                $("#answer3").focus();
                $("#answer3").parents(".col-sm-8").find("span").html("答案不能为空").css("color","red");
                hint_hide("answer3");
                return false;
            }
        }
        $authCode = $.trim($("#authCode").val());
        if($authCode == ""){
            $("#authCode").siblings("span").html("验证码不能为空").css("color","red");
            $(this).focus();
            return false;
        }
    }
    function hint_hide(obj){
        setTimeout(function(){
            $("#"+obj).parents(".col-sm-8").find(".hint").hide();
        },2000);
    }
    //立即注册
    $("#registerNow").click(function(){
        var val = getVerifyData();
        if(val == false){
            return;
        }
        $.post("register",
            {
                account  : $account,
                password : $password,
                problem1 : $problem1,
                problem2 : $problem2,
                problem3 : $problem3,
                answer1  : $answer1,
                answer2  : $answer2,
                answer3  : $answer3,
                authCode : $authCode
            },
            function(data){
                if (data=="ok") {
                    $("#third_content_top").addClass("back");
                    $("#third_content_top").find(".circle").addClass("back");
                    $("#third_form").toggle();
                    $("#second_form").toggle();
                }else{
                    alert_info(data,0);
                }
            }
        )
    })
    $("#but").click(function(){
        $.post("login",{account:$account,password:$password,kk:"ok"},function(data){
            if(data == "ok"){
                var url = $("#but").attr("data-url");
                console.log(url);
                window.location.href = url;
            }
        })
    })
})
