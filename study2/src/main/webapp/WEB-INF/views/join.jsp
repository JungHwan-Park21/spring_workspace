<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
<link href="/resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div id="join-wrap">
		<header>
			<a href="#" class="header-logo"><img src="https://static.coupangcdn.com/image/static/login/logo-coupang.x2.20201201.png"></a>
		</header>
		<div id="join-form">
			
			<form action="/join" method="post" role="form">
				<div class="input-wrap">
					<h2>회원정보를 입력해주세요</h2>
					<label class="input-container">
						<span class="icon"><i class="fa fa-envelope-o"></i></span>
						<input type="text" name="mem_id" placeholder="아이디(이메일)" class="input-field input-userid" maxlength="80" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디(이메일)'">						
					</label>
					<label class="input-container">
						<span class="icon"><i class="fa fa-lock"></i></span>
						<input type="password" name="mem_pw" placeholder="비밀번호" class="input-field input-pwd" maxlength="20" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">
					</label>
					<label class="input-container">
						<span class="icon"><i class="fa fa-user-o"></i></span>
						<input type="text" name="mem_name" placeholder="이름" class="input-field input-name" maxlength="40" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'">
					</label>
					<label class="input-container">
						<span class="icon"><i class="fa fa-mobile"></i></span>
						<input type="text" name="mem_phone" placeholder="휴대폰번호" class="input-field input-phone" maxlength="40" onfocus="this.placeholder = ''" onblur="this.placeholder = '휴대폰번호'">
					</label>
				</div>

				<input type="submit" value="동의하고 가입하기" class="join-btn">		
		
			</form>
		</div>		
	</div>
</body>
</html>