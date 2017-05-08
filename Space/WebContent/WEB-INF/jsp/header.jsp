<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-fixed-top navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${ctx }/index">场地借用管理系统</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav pull-right">
				<c:choose>

					<c:when test="${empty sessionScope.loginUser }">
						<li><a href="" data-toggle="modal" data-target="#loginPane">登录</a>
						</li>
						<li><a href="" data-toggle="modal" data-target="#registPane">注册</a>
						</li>
					</c:when>

					<c:otherwise>
						<li class="dropdown"><img id="navbar-avatar"
							style="width: 51px; height: 51px; border-radius: 50%;"
							class="navbar-header navbar-avatar"
							src="${ctx }${sessionScope.profile.pfAvatar}"> <a
							style="display: none" id="username" href="#">${ sessionScope.loginUser.username }</a>
							<ul class="dropdown-menu">
								<li><a href="${ctx }/user/index"><span
										class="glyphicon glyphicon-home"></span> &nbsp;个人主页</a></li>
								<li><a href="${ctx }/myservice/myinforms/"><span
										class="glyphicon glyphicon-bell"></span>
										&nbsp;通&nbsp;&nbsp;知&nbsp;&nbsp;<span id="unreadinf"></span></a></li>
								<li><a href="${ctx }/myservice/myacts/"><span
										class="glyphicon glyphicon-fire"></span> &nbsp;我的活动</a></li>
								<li><a href="${ctx }/myservice/myrooms/"><span
										class="glyphicon glyphicon-road"></span> &nbsp;我的场地</a></li>

								<li><a href="JavaScript:void(0)"
									data-url="${ctx }/user/logout" id="logout"><span
										class="glyphicon glyphicon-log-out"></span> &nbsp;退出</a></li>
							</ul></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
<!-- 消息提示 -->


<c:choose>

	<c:when test="${empty sessionScope.loginUser }">
		<!--登录模态框-->
		<div class="modal fade" id="loginPane" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">登录</h4>
					</div>
					<div class="modal-body">
						<form>
							<p hidden="hidden" style="color: red" id="login-tip"></p>
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-user"></span></span> <input type="text"
									class="form-control" placeholder="请输入用户名或邮箱" name="username"
									id="login-username">
							</div>

							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-lock"></span></span> <input type="password"
									class="form-control" name="password" placeholder="请输入登录密码"
									aria-describedby="pwd" id="login-password"> <span
									class="input-group-btn"> <a id="login-btn"
									class="btn btn-success" data-url="${ctx }/user/login">登 录</a>
								</span>
							</div>
						</form>
						<!-- <p class="">
							<a href="#" class="">忘记密码?</a>
						</p> -->
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>
		<!--注册模态框-->
		<div class="modal fade" id="registPane" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">注册</h4>
					</div>
					<div class="modal-body">
						<form>
							<p id="regist-tip" hidden="hidden" style="color: red;"></p>
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-user"></span></span> <input type="text"
									name="username" class="form-control" placeholder="请输入用户名"
									id="username">
							</div>
							<div class="alert alert-danger" hidden="hidden" id="nametip">
								<span class="glyphicon glyphicon-remove-sign"></span>&nbsp;<span
									id="name-cont"></span>
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-envelope"></span></span> <input
									type="email" class="form-control" name="email"
									placeholder="请输入邮箱" aria-describedby="email" id="email">
							</div>
							<div class="alert alert-danger" id="emailtip" hidden="hidden">
								<span class="glyphicon glyphicon-remove-sign"></span>&nbsp;<span
									id="email-cont"></span>
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-lock"></span></span> <input type="password"
									name="password" class="form-control" placeholder="请输入密码"
									aria-describedby="pwd" id="password"> </span>
							</div>
							<div class="alert alert-danger" id="passtip" hidden="hidden">
								<span class="glyphicon glyphicon-remove-sign"></span>&nbsp;<span
									id="pwd-cont"></span>
							</div>
							<div class="input-group input-group-lg">
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-lock"></span></span> <input type="password"
									name="password2" class="form-control" placeholder="请再次输入密码"
									aria-describedby="pwd" id="password2"> <span
									class="input-group-btn"> <a class="btn btn-success"
									type="submit" id="registBtn" data-url="${ctx }/user/regist">注
										册</a>
								</span>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>
		<script>
$(document).ready(function() {
	/* ajax登录 */
	$("#login-btn").click(function(){
		var username = $("#login-username").val();
		var password = $("#login-password").val();
		if(username == ''){
			$("#login-tip").html("未输入用户名或邮箱！");
			$("#login-tip").show(300);
			return false;
		}else if(password == ""){
			$("#login-tip").html("未输入密码！");
			$("#login-tip").show(300);
			return false;
		}
		var url = $(this).data('url');

		$.post(url,
                {
                    "username": username,
                    "password":password,
                },
                function(data){
                	if(data['login']=='no'){
                		$("#login-tip").html(data['message']);
            			$("#login-tip").show(300);
            			return false;
                	}else{
                		window.location.reload();
                	}
            });
	});
	
	/* 注册表单验证 */
	var checkemail = function(){
		var email = $("#email").val();

        apos = email.indexOf("@");
        dotpos = email.lastIndexOf(".");
        if (apos < 1 || dotpos - apos < 2) {
            $("#email-cont").html('请输入一个正确的邮箱');
            $("#emailtip").show(300);
            return false;
        }else {
            $("#emailtip").hide(300);
            return true;
        }
	}
    $("#email").blur(function() {
    	checkemail();
    	
    });

    var checkPsd1 = function() {

        psd1 = $("#password").val();
        var flagZM = false;
        var flagSZ = false;
        var flagQT = false;
        if (psd1.length < 6 || psd1.length > 12) {
            $("#pwd-cont").html("请输入至少6位密码");
            $("#passtip").show(300);
            return false;
        } else {
            for (i = 0; i < psd1.length; i++) {
                if ((psd1.charAt(i) >= 'A' && psd1.charAt(i) <= 'Z') || (psd1.charAt(i) >= 'a' && psd1.charAt(i) <= 'z')) {
                    flagZM = true;
                } else if (psd1.charAt(i) >= '0' && psd1.charAt(i) <= '9') {
                    flagSZ = true;
                } else {
                    flagQT = true;
                }
            }
            if (!flagZM || !flagSZ || flagQT) {
                $("#pwd-cont").html("密码必须由 字母 和 数字 组成");
                $("#passtip").show(300);
                return false;
            } else {
                $("#passtip").hide(300);
            }
        }
        return true;
    };
    $("#password").blur(checkPsd1);
    
    var checkPsd2 = function() {
        var pwd = $("#password").val();
        var cpwd = $("#password2").val();
        if (pwd != cpwd) {
            $("#pwd-cont").html("两次密码不一致");
            $("#passtip").show(300);
            return false;
        } else {
            $("#passtip").hide(300);
        }
        return true;
        
    }
    $('#password2').blur(checkPsd2);
    $('#registBtn').click(function(){
    	var username = $("#username").val();
    	if(username == ""){
    		$("#name-cont").html("未输入用户名！");
    		$("#nametip").show(300);
    		return false;
    	}
    	if(checkemail() == false){
    		return false;
    	}
    	
		if(checkPsd1() == false){
			return false;
		}
		if(checkPsd2() == false){
			return false;
		}
		
		var username = $("#username").val();
		var email = $("#email").val();
		var password = $("#password").val();
		var password2 = $("#password2").val();
		var url = $(this).data('url');
		$.post(url,
				{
					"username":username,
					"email":email,
					"password":password,
					"password2":password2,
				},function(data){
					$("#regist-tip").html(data['message']);
					$("#regist-tip").show(300);
					if(data['valid'] == "yes"){
						setTimeout(function(){
							$("#regist-tip").html("自动登录中。。。。");
							$("#regist-tip").show(300);
							window.location.reload();
						},1000);
					}					
				});
    });
	
});

</script>
	</c:when>

	<c:otherwise>
		<script>
		$(document).ready(function() {
			/* ajax登出 */
			$("#logout").click(function(){
				
				var url = $(this).data('url');
		
				$.get(url,
		                function(data){
		                	if(data['logout']=='yes'){
		                		window.location.reload();
		                	}
		            });
			});
			
			var getUnReadInform = function(){
				$.get("${ctx}/myservice/unReadInf/",
						function(data){
						
							if(data["login"]=="yes" && data["commInfNum"] != "error" && data["sysInfNum"] != "error"){
								if(data["commInfNum"] + data["sysInfNum"] != 0){
									$("#unreadinf").addClass("label label-warning");
									$("#unreadinf").html(data["commInfNum"] + data["sysInfNum"]);
								}
								
							}
				});
			}
			
			getUnReadInform();
			
		});
		
		</script>
	</c:otherwise>
</c:choose>