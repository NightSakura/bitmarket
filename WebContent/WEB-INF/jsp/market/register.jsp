<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<title>注册</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" href="assets/css/amazeui.min.css" />
<link href="css/dlstyle.css" rel="stylesheet" type="text/css">
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>

</head>

<body>

	<div class="login-boxtitle">
		<a href="home/demo.html"><img alt="" src="images/logobig.png" /></a>
	</div>

	<div class="res-banner">
		<div class="res-main">
			<div class="login-banner-bg">
				<span></span><img src="images/big.jpg" />
			</div>
			<div class="login-box" style="margin-left:200px;max-width:450px; background:#F7F7F7;">

				<div class="am-tabs" id="doc-my-tabs">
					<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify" style="width:300px;margin:auto;">
						<li class="am-active"><a href="">邮箱注册</a></li>
						<li><a href="">手机号注册</a></li>
					</ul>

					<div class="am-tabs-bd" style="width:500px;">
						<form class="am-tab-panel am-active" action="register/submit" method="post">
								<div class="user-email" style="width:450px;">
									<label for="email"><i class="am-icon-envelope-o"></i></label> <input
										type="email" name="id" id="email" placeholder="请输入邮箱账号" style="margin-left:0px;width:200px;">
									<label id="email-check" style="text-align:left;background-color:#F7F7F7;color:#CDC9C9;width:180px;height:37px;margin-left:210px;">请输入正确的邮箱格式</label>
								    <label id="email-err" style="text-align:left;background-color:#F7F7F7;color:red;width:180px;height:37px;margin-left:210px;display:none;">邮箱格式输入不正确</label>
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="password" id="password" placeholder="设置密码" style="margin-left:0px;width:200px;">
									<label id="pass-check" style="text-align:left;background-color:#F7F7F7;color:#CDC9C9;width:180px;height:37px;margin-left:210px;">6-12位，英文、数字或常用符号</label>
								    <label id="pass-err" style="text-align:left;background-color:#F7F7F7;color:red;width:180px;height:37px;margin-left:210px;display:none;">密码格式输入不正确</label>
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="" id="passwordRepeat"
										placeholder="确认密码" style="margin-left:0px;width:200px;">
									<label id="passRep-check" style="text-align:left;background-color:#F7F7F7;color:#CDC9C9;width:180px;height:37px;margin-left:210px;">请重复输入密码</label>
									 <label id="passRep-err" style="text-align:left;background-color:#F7F7F7;color:red;width:180px;height:37px;margin-left:210px;display:none;">两次输入的密码不一致</label>
								</div>
							<!--
							<div class="login-links">
								<label for="reader-me" style="width:300px;"> <input id="reader-me"
									type="checkbox"> 点击表示您同意商城《服务协议》
								</label>
							</div>
							-->
							<div class="am-cf">
								<input type="submit" name="submit" value="注册"
									class="am-btn am-btn-primary am-btn-sm am-fl" style="margin-left:50px;width:300px;">
							</div>

						</form>

						<div class="am-tab-panel" style="width:500px;">
							<form method="post">
								<div class="user-phone">
									<label for="phone"><i
										class="am-icon-mobile-phone am-icon-md"></i></label> <input type="tel"
										name="" id="phone" placeholder="请输入手机号" style="width:220px;">
								</div>
								<div class="verification">
									<label for="code"><i class="am-icon-code-fork"></i></label> <input
										type="tel" name="" id="code" placeholder="请输入验证码" style="width:220px;"> <a
										class="btn" href="javascript:void(0);"
										onclick="sendMobileCode();" id="sendMobileCode"> <span
										id="dyMobileButton">获取</span></a>
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i></label> <input
										type="password" name="" id="password" placeholder="设置密码" style="width:220px;">
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
									<input type="password" name="" id="passwordRepeat"
										placeholder="确认密码" style="width:200px;">
								</div>
							</form>
							<div class="login-links">
								<label for="reader-me"> <input id="reader-me"
									type="checkbox"> 点击表示您同意商城《服务协议》
								</label>
							</div>
							<div class="am-cf">
								<input type="submit" name="" value="注册"
									class="am-btn am-btn-primary am-btn-sm am-fl" style="width:220px;">
							</div>

							<hr>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="footer ">
			<div class="footer-hd ">
				<p>
					<a href="# ">恒望科技</a> <b>|</b> <a href="# ">商城首页</a> <b>|</b> <a
						href="# ">支付宝</a> <b>|</b> <a href="# ">物流</a>
				</p>
			</div>
			<div class="footer-bd ">
				<p>
					<a href="# ">北理商城</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a> <a
						href="# ">网站地图</a> <em><a href="http://www.5imoban.net/"
						target="_blank" title="html静态模板">@2009-2018 版权所有</a></em>
				</p>
			</div>
		</div>
		<script>
			$(document).ready(function() {
				$('#email').blur(function(){
					var email = $('#email').val();
					if(email=="" || email== null){
					    $('#email-check').hide();
					    $('#email-err').show();
					}else{
						$('#email-err').hide();
					}
				});
				
				$('#password').blur(function() {
					var length = $('#password').val().length;
					if(length < 6 || length > 12){
					    $('#pass-check').hide();
					    $('#pass-err').show();
					}else{
						$('#pass-err').hide();
					}
				});
				
				$('#passwordRepeat').blur(function() {
					if($('#passwordRepeat').val() != $('#password').val()){
						  $('#passRep-check').hide();
						    $('#passRep-err').show();
						}else{
							$('#passRep-err').hide();
						}
				});
			});
		</script></body>

</html>