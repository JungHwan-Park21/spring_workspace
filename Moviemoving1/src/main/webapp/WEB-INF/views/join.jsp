<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	
		<form:form 
			         modelAttribute="memberVO"
			         method="POST"
			         action="/join">
			         <div class="input-wrap">
						<h2>회원정보를 입력해주세요.</h2>
							<label class="input-container">
							<span class="icon"><i class="fa fa-envelope-o"></i></span>
							 <form:input path="User_id"  placeholder="아이디(이메일)" class="input-field input-userid" maxlength="80" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디(이메일)'" />
					         <form:errors path="User_id" style="color:Tomato;"  />
					         </label>
					         <label class="input-container">
						<span class="icon"><i class="fa fa-lock"></i></span>
					         <form:password path="User_pw" placeholder="비밀번호" class="input-field input-pwd" maxlength="20" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'" />
					         <form:errors path="User_pw"  />
					         </label>
					         <label class="input-container">
						<span class="icon"><i class="fa fa-user-o"></i></span>
					         <form:password path="User_name" placeholder="이름" class="input-field input-name" maxlength="40" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'"/>
					         <form:errors path="User_name" style="color:Tomato;" />
					         </label>
					         <label class="input-container">
					         </label>
		
			         </div>
						     <input type="submit" value="동의하고 가입하기" class="join-btn">	
			</form:form>
			
			
		
</body>
</html>