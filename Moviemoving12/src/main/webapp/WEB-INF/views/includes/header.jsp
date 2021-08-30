<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <a href="#" id="login">로그인</a>
                    <a href="#" id="join">회원가입</a>
                    <!-- 로그인일경우 -->
                    <a href="/mypage">마이페이지</a>
                    <a href="#">로그아웃</a>
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
                <form>
                    <input type="text" name="username" placeholder="아이디(이메일 주소)" class="input-field input-id" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디(이메일 주소)'">
                    <input type="password" name="pw" placeholder="비밀번호" class="input-field input-id" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">

                    <p class="error-message">정확한 이메일 주소와 비밀번호를 입력해 주세요.</p>

                    <div class="login-footer">
                        <label>
                            <input type="checkbox" class="check" name="sveID" value="아이디저장">
                            아이디 저장
                        </label>
                        <a href="#">아이디 / 비밀번호 찾기 <i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    </div>

                    <input type="submit" value="로그인" class="input-field input-submit">
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
                <form>
                    <input type="text" name="name" placeholder="이름" class="input-field input-name" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'">
                    <input type="text" name="username" placeholder="아이디(이메일 주소)" class="input-field input-id" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디(이메일 주소)'">
                    <p class="error-message">정확한 이메일 주소를 입력하세요.</p>
                    <input type="password" name="pw" placeholder="비밀번호" class="input-field input-id" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">
                    <p class="pw-message">※ 비밀번호는 영문+숫자를 포함한 4 - 60자 사이여야 합니다.</p>
                    <input type="submit" value="회원가입" class="input-field input-submit">
                </form>
            </div>
        </div>
        <!-- //회원가입팝업 끝 ----------->