<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="header.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">movieList Register</h1>
                        
                        <div class="card mb-4">
                            <div class="card-body">
                                
                                	
                                	
                                	<div class="panel-body">
                                		<form role="form" action="/admin/movieList" method="post">
                                			<div class="form-group">
                                				<label>code</label>
                                				<input class="form-control" name="movieInfo_code">
                                			</div>
                                			<div class="form-group">
                                				<label>no</label>
                                				<input class="form-control" name="movieInfo_no">
                                			</div>
                                			<div class="form-group">
                                				<label>title</label>
                                				<input class="form-control" name="movieInfo_title">
                                			</div>
                                			<div class="form-group">
                                				<label>year</label>
                                				<input class="form-control" name="movieInfo_year">
                                			</div>
                                			<div class="form-group">
                                				<label>age</label>
                                				<input class="form-control" name="movieInfo_age">
                                			</div>
                                			<div class="form-group">
                                				<label>rt</label>
                                				<input class="form-control" name="movieInfo_rt">
                                			</div>
                                			<div class="form-group">
                                				<label>visit</label>
                                				<input class="form-control" name="movieInfo_visit">
                                			</div>
                                			<div class="form-group">
                                				<label>con</label>
                                				<input class="form-control" name="movieInfo_con">
                                			</div>
                                			<div class="form-group">
                                				<label>thum</label>
                                				<input class="form-control" name="movieInfo_thum">
                                			</div>
                                			<div class="form-group">
                                				<label>bkimg</label>
                                				<input class="form-control" name="movieInfo_bkimg">
                                			</div>
                                			<div class="form-group">
                                				<label>video</label>
                                				<input class="form-control" name="movieInfo_video">
                                			</div>
                                			<div class="form-group">
                                				<label>watcha</label>
                                				<input class="form-control" name="movieInfo_watcha">
                                			</div>
                                			<div class="form-group">
                                				<label>wave</label>
                                				<input class="form-control" name="movieInfo_wave">
                                			</div>
                                			<div class="form-group">
                                				<label>netflix</label>
                                				<input class="form-control" name="movieInfo_netflix">
                                			</div>
                                			<div class="form-group">
                                				<label>category</label>
                                				<input class="form-control" name="movieInfo_catagory">
                                			</div>
                                			<button type="submit" class="btn btn-primary">등록</button>
                                			<button type="reset" class="btn btn-primary">reset</button>
                                		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                		</form>
                                	</div>
                                	
                                	
                               
                            </div>
                        </div>
                    </div>
                </main>
              
             
<%@include file="footer.jsp" %>