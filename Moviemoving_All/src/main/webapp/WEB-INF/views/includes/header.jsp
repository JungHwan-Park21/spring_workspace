<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MovieMoving</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/js/control.js"></script>
<script tpye="text/javascript">
	
function registerCheck() {
    var chkId = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
    var chkPw= RegExp(/^[a-zA-Z0-9]{4,60}$/);
    var chkName= RegExp(/^[가-힣]+$/);

    
    //회원가입 아이디 null 확인
    if($("#register-user_id").val() == ""){
      $("#register-id-error").html("아이디(이메일)를 입력해주세요");
      return false;
    } else {$("#register-id-error").html("");}
    
    //회원가입 페스워드 null 확인
    if($("#register-user_pw").val()==""){
    	$("#register-pw-error").html("비밀번호를 입력해주세요");
		return false;
	} else {$("#register-pw-error").html("");}

    //회원가입 이름 null 확인
	if($("#register-user_name").val()==""){
		$("#register-name-error").html("이름을 입력해주세요");
		$("#register-user_name").focus();
		return false;
	} else {$("#register-name-error").html("");}
	
    //회원가입 아이디 유효성 검사
    if(!chkId.test($("#register-user_id").val())){
		$("#register-id-error").html("아이디(이메일)의 형식을 확인해주세요");
      $("#register-user_id").val("");
      $("#register-user_id").focus();
      return false;
    }
    
    //회원가입 비밀번호 유효성 검사
    if(!chkPw.test($("#register-user_pw").val())){
		$("#register-pw-error").html("비밀번호의 형식을 확인해주세요");
      $("#register-user_pw").val("");
      $("#register-user_pw").focus();
      return false;
    }
}



function loginCheck() {
	//로그인 아이디 null 확인
	if($("#login-user_id").val()==""){
		$("#login-id-error").html("아이디(이메일)을 입력해주세요");
		$("#login-user_id").focus();
		return false;
	} else {$("#login-id-error").html("");}

	//로그인 비밀번호 null 확인
	if($("#login-user_pw").val()==""){
		$("#login-pw-error").html("비밀번호를 입력해주세요");
		$("#login-user_pw").focus();
		return false;
	} else {$("#login-pw-error").html("");}
	
}
</script>
<link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>

<div id="full-wrap">
       <!-- 상단 시작 ----------->
        <header>
            <div id="header-wrap">
                <a id="logo" href="/">
                    <img src="/resources/images/logo.png">            
                </a>
                <nav class="category">
                    <a href="#">영화</a>
                    <a href="#">TV프로그램</a>
                </nav>
                <!-- 검색 시작 ----------->
                <form>
                    <label class="search-label">
                        <input type="text" name="search" placeholder="검색어를 입력해주세요." class="input-field input-search" maxlength="100" onfocus="this.placeholder = ''" onblur="this.placeholder = '검색어를 입력하세요.'">
                        <button class="search-bt"><i class="fa fa-search"></i></button>
                    </label>
                </form>
                <!-- //검색 끝 ----------->
                <nav class="member">
                	<!-- 로그아웃일경우 -->
                	<sec:authorize access="!isAuthenticated()">
                    <a href="#" id="login">로그인</a>
                    <a href="#" id="join">회원가입</a>
                    </sec:authorize>
                    <!-- 로그인일경우 -->
                    <sec:authorize access="isAuthenticated()">
                    <a href="/mypage">마이페이지</a>
               		<a href="#" onclick="document.getElementById('logout-form').submit();">로그아웃</a>
					<form id="logout-form" action='<c:url value='/logout'/>' method="POST">
					   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
					</form>
                    </sec:authorize>
                </nav>
            </div>
        </header>      
        <!-- //상단 끝 ----------->
       
        <!-- 로그인팝업 시작 ----------->
        <div class="pop-wrap-bg login-pop">
            <div class="">
                <div class="pop-close-bt"><i class="fa fa-window-close-o" aria-hidden="true"></i></div>
                <div class="pop-title">
                    <h2>로그인</h2>
                    <p>가입하신 무비무빙 아이디와 비밀번호를 입력해주세요.</p>
                    <p>비밀번호는 대소문자를 구분합니다.</p>
                </div>
                <form action="/login" method="POST"  onsubmit="return loginCheck()">
                    <input type="text" id="login-user_id" name="user_id" placeholder="아이디(이메일 주소)" class="input-field input-id" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디(이메일 주소)'">
                    <p id="login-id-error" class="error-message"></p>
                    <input type="password" id="login-user_pw" name="user_pw" placeholder="비밀번호" class="input-field input-pw" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">
					<p id="login-pw-error" class="error-message"></p>

                    <div class="login-footer">
                        <label>
                            <input type="checkbox" class="check" name="sveID" value="아이디저장">
                            아이디 저장
                        </label>
                        <a href="#">아이디 / 비밀번호 찾기 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    </div>

                    <input type="submit" value="로그인" class="input-field input-submit" id="loginBtn">
                    <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}">
                </form>
            </div>
        </div>
        <!-- //로그인팝업 끝 ----------->

        <!-- 회원가입팝업 시작 ----------->
        <div class="pop-wrap-bg join-pop">
            <div class="">
                <div class="pop-close-bt"><i class="fa fa-window-close-o" aria-hidden="true"></i></div>
                <div class="pop-title">
                    <h2>회원가입</h2>
                </div>
                <form action="register" onsubmit="return registerCheck()" method="POST">
                    <input type="text" id="register-user_name" name="user_name" placeholder="이름" class="input-field input-name" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'">
                    <p id="register-name-error" class="error-message"></p>
                    <input type="text" id="register-user_id" name="user_id" placeholder="아이디(이메일)" class="input-field input-id" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디(이메일 주소)'">
                    <p id="register-id-error" class="error-message"></p>
                    <input type="password" id="register-user_pw" name="user_pw" placeholder="비밀번호" class="input-field input-pw" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">
                    <p class="pw-message">※ 비밀번호는 영문+숫자를 포함한 4 - 60자 사이여야 합니다.</p>
                    <p id="register-pw-error" class="error-message"></p>
                    <input type="submit" value="회원가입" class="input-field input-submit" id="registerBtn">
                    <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}">
                </form>
            </div>
        </div>
        <!-- //회원가입팝업 끝 ----------->