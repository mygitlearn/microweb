$(function(){
    $(document).keyup(function(e){
        if(!e) var e = window.event;
        var $focused = $(':focus').attr("id");
        switch($focused){
            case "account":
                $account = $("#account").val();
                that = $("#account").parents(".col-sm-8").find(".hint");
                if($account.length<9){
                    that.find("span").eq(0).css("color","red");
                }else{
                    that.find("span").eq(0).css("color","green");
                }
                if(!/^\w+$/.test($account)){
                    that.find("span").eq(1).css("color","red");
                }else{
                    that.find("span").eq(1).css("color","green");
                }
                break;
            case "Password":
                $password = $("#Password").val();
                var that = $("#Password").parents(".col-sm-8").find(".hint");
                if(/^\d+$/.test($password) && $password.length<9){
                    that.find("span").eq(2).css("color",'red');
                }else{
                    that.find("span").eq(2).css("color",'green');
                }
                if($password.length<6){
                    that.find("span").eq(0).css("color",'red');
                }else{
                    that.find("span").eq(0).css("color",'green');
                }
                break;
            case  "confirmPassword":
                $confirmPassword = $("#confirmPassword").val();
                $password = $("#Password").val();
                var that = $("#confirmPassword").parents(".col-sm-8").find(".hint");
                if($password ==""){
                    that.find("span").html("密码不能为空");
                    that.find("span").css("color","red");
                }else if($confirmPassword != $password){
                    that.find("span").html("两次密码不一致");
                    that.find("span").css("color","red");
                }else{
                    that.find("span").html("密码正确").css("color","green");
                }
                break;
        }
//        监听空格键账户密码均不能有空格
        if(e.keyCode==32){
            switch($focused){
                case "account":
                    that = $("#account").parents(".col-sm-8").find(".hint");
                    that.find("span").eq(1).html("账户不能存在空格");
                    that.find("span").eq(1).css("color",'red');
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
                        that.find("span").eq(1).html("字母与数字组合");
                    }
                    break;
                case "Password":
                    $password = $("#Password").val();
                    if($password.indexOf(" ") == -1){
                        $("#Password").siblings("span").eq(1).css("color","green");
                    }
                    break;
            }
        }
    });
// 账号正则匹配
    $("#account").blur(function(){
        $account = $(this).val();
        if(!/^[a-z,A-Z,1-9]{9,15}$/.test($account)){
            if($account != ""){
                alert("格式错误提示");
            }
        }
    })


    $("#problem1,#problem2,#problem3").change(function(){
        var $hint;
        $problem_id = $(this).val();
        switch ($problem_id){
            case "1":
                $hint = "请填写2-15个字符";
                break;
            case "2":
                $hint = '请填写日期<br/>例如20080619';
                break;
            case "3":
                $hint = "请填写2-15个纯数字";
                break;
            case "4":
                $hint = "请填写2-15个字符";
                break;
            case "5":
                $hint = '请填写日期<br/>例如20080619';
                break;
            case "6":
                $hint = "请填写2-15个字符";
                break;
            case "7":
                $hint = '请填写日期<br/>例如20080619';
                break;
            case "8":
                $hint = "请填写2-15个字符";
                break;
            case "9":
                $hint = "请填写2-15个字符";
                break;
            case "10":
                $hint = "请填写2-15个字符";
                break;
        }
        $(this).parents(".form-group").next().find(".hint").find("span").html($hint).css("color","red");
        $("#answer1,#answer2,#answer3").blur(function(){
            $answer = $.trim($(this).val());
            that = $(this).parents(".col-sm-8").find(".hint").find("span");
            $hint = that.html();
            if($hint == "请填写2-15个字符"){
                if(/^[\w]{2,15}$/.test($answer)){
                    that.hide();
                }else{
                    that.show();
                }
            }else if($hint == "请填写2-15个纯数字"){
                if(/^[\d]{2,15}$/.test($answer)){
                    that.hide();
                }else{
                    that.show();
                }
            }else{
                if( /^[12]\d{3}[01]\d[0123]\d$/.test($answer)){
                    that.hide();
                }else{
                    that.show();
                }
            }
        })
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
        $("#second_content_top").addClass("back");
        $("#second_content_top").find(".circle").addClass("back");
        $("#first_form").toggle();
        $("#second_form").toggle();
    });
    $("#registerNow").click(function(){
        $("#third_content_top").addClass("back");
        $("#third_content_top").find(".circle").addClass("back");
        $("#third_form").toggle();
        $("#second_form").toggle();
    });

    $("#registerNow").click(function(){
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
        $problem1 = $("#problem1").val();
        if($problem1 == -1){
            $("#answer1").parents(".col-sm-8").find("span").html("密保不能为空").css("color","red");
            return;
        }else{
            $answer1 = $("#answer1").val();
            if($answer1 == ''){
                $("#answer1").focus();
                $("#answer1").parents(".col-sm-8").find("span").html("答案不能为空").css("color","red");
                return;
            }
        }
        $problem2 = $("#problem2").val();
        if($problem1 == -1){
            $("#answer2").parents(".col-sm-8").find("span").html("密保不能为空").css("color","red");
            return;
        }else{
            $answer2 = $("#answer2").val();
            if($answer2 == ''){
                $("#answer2").focus();
                $("#answer2").parents(".col-sm-8").find("span").html("答案不能为空").css("color","red");
                return;
            }
        }
        $problem3 = $("#problem3").val();
        if($problem1 == -1){
            $("#answer3").parents(".col-sm-8").find("span").html("密保不能为空").css("color","red");
            return;
        }else{
            $answer3 = $("#answer3").val();
            if($answer3 == ''){
                $("#answer3").focus();
                $("#answer3").parents(".col-sm-8").find("span").html("答案不能为空").css("color","red");
                return;
            }
        }
        $authCode = $("#authCode").val();
        if($authCode == ""){
            $("#authCode").siblings("span").html("验证码不能为空").css("color","red");
            $(this).focus();
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

                alert(data);
                if (data=="ok") {
                    // $("#third_content_top").addClass("back");
                    // $("#third_content_top").find(".circle").addClass("back");
                    // $("#third_form").toggle();
                };
            }
        )
    })
})
