<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
			<form:form   modelAttribute="memberVO"
				         method="POST"
				         action="/Member">
			         <div class="input-wrap">
						<h2>회원정보를 입력해주세요.</h2>
							<label class="input-container">
							<span class="icon"><i class="fa fa-envelope-o"></i></span>
							<!--  어아다 즁복검사 -->
							<span class="id_input1">사용가능한 아이디입니다.</span>
							<span class="id_input1">이미 존재하는 아이디입니다.</span>
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
			
			
			<!-- 아이디 중복검사 -->
			<script>
				$('.id_input').on("propertychange change keyup paste input", function(){
	
					console.log("keyup 테스트");	
					
					var memberId = $('.id_input').val();			// .id_input에 입력되는 값
					var data = {User_id : User_id}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
					
					$.ajax({
						type : "post",
						url : "/member/memberIdChk",
						data : data
					}); // ajax 종료
	
				});// function 종료
				
			</script>
		
</body>
</html>