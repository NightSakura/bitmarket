<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<title>登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<script src="assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="assets/css/amazeui.css" />
<link href="css/loginDlstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="login-boxtitle">
		<a href="home.html"><img alt="logo" src="images/logobig.png" /></a>
	</div>

	<div class="login-banner">
		<div class="login-main">
			<div class="login-banner-bg">
				<span></span><img src="images/big.jpg" />
			</div>
			<div class="login-box" style="max-width:360px;">
				<h3 class="title">登录商城</h3>

				<div class="clear"></div>
				<form class="submit" action="submit" method="post">
				<div style="position:relative;margin-bottom:0px;height:20px;width:300px;">
				    <label style="width:300px;background:#F7F7F7;color:red;" >${errInfo}</label>
				</div>
				<div class="login-form" style="margin-top:30px;">
						<div class="user-name">
							<label for="user"><i class="am-icon-user"></i></label> 
							<input type="text" name="user" id="user" placeholder="邮箱/手机/用户名"> 
						</div>
						<div class="user-pass" style="margin-top:20px;">
							<label for="password"><i class="am-icon-lock"></i></label> 
							<input type="password" name="password" id="password" placeholder="请输入密码">
						</div>
				</div>
				<div class="login-links">
					<!-- <label for="remember-me"><input id="remember-me" type="checkbox">记住密码</label>   -->
						<a href="#" class="am-fr">忘记密码</a> 
						<a href="register" class="zcnext am-fr am-btn-default">注册</a> <br />
				</div>
				<div class="am-cf">
					<input type="submit" id="submit" value="登 录"
						class="am-btn am-btn-primary am-btn-sm">
				</div>
				</form>
				<div class="partner">
					<h3>合作账号</h3>
					<div class="am-btn-group">
						<li><a href="#"><i class="am-icon-qq am-icon-sm"></i><span>QQ登录</span></a></li>
						<li><a href="#"><i class="am-icon-weibo am-icon-sm"></i><span>微博登录</span>
						</a></li>
						<li><a href="#"><i class="am-icon-weixin am-icon-sm"></i><span>微信登录</span>
						</a></li>
					</div>
				</div>

			</div>
		</div>
	</div>
    <script>
    $(document).ready(function() {
    	$('#submit').click(function(){
    		 $.ajax({  
    		        type: "POST",  
    		        url: "submit",  
    		        data:{
    		        	"user" : $('#user').val(),
    		        	"password" : $('#password').val(),
    		        },
    		        async: true,  
    		        error: function(request) {  
    		            alert("Connection error");  
    		        },  
    		        success: function(data) {  
    		            //接收后台返回的结果
    		            if(data.err != null){
    		            	$('#err').val() = data.err;
    		            }
    		        }  
    		      });
    	});
    });
    </script>

	<div class="footer ">
		<div class="footer-hd ">
			<p>
				<a href="# ">恒望科技</a> <b>|</b> <a href="# ">商城首页</a> <b>|</b> <a
					href="# ">支付宝</a> <b>|</b> <a href="# ">物流</a>
			</p>
		</div>
		<div class="footer-bd ">
			<p>
				<a href="# ">关于恒望</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a> <a
					href="# ">网站地图</a> <em><a href="http://www.5imoban.net/"
					target="_blank" title="html静态模板">我爱模板网</a></em>
			</p>
		</div>
	</div>
</body>
</html>