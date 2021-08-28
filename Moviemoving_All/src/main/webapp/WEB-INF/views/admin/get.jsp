<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="header.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">movieList 상세보기</h1>
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="panel-body">
										<div class="form-group">
					                    		<label>code</label>
					                        	<input class="form-control" name="분류코드" value='<c:out value="${getList.movieInfo_code}"/>' readonly>
					                    </div>
					                    <div class="form-group">
					                            <label>no</label>
					                            <input class="form-control" name="no" value="${getList.movieInfo_no}" readonly>
					                    </div>
					                    <div class="form-group">
					                            <label>title</label>
					                            <input class="form-control" name="title" value="${getList.movieInfo_title}" readonly>
					                    </div>
					                    <div class="form-group">
					                            <label>year</label>
					                            <input class="form-control" name="year" value="${getList.movieInfo_year}" readonly>
					                    </div>
					                    <div class="form-group">
					                            <label>age</label>
					                        	<input class="form-control" name="age" value="${getList.movieInfo_age}" readonly>
					                	</div>
					                    <div class="form-group">
					                     		 <label>rt</label>
					                  			 <input class="form-control" name="rt" value="${getList.movieInfo_rt}" readonly>
					                    </div>
					                   	<div class="form-group">
					                     		 <label>visit</label>
					                   	    	 <input class="form-control" name="visit" value="${getList.movieInfo_visit}" readonly>
					                    </div>
					                    <div class="form-group">
					                             <label>con</label>
					                             <input class="form-control" name="con" value="${getList.movieInfo_con}" readonly>
					                    </div>
					                    <div class="form-group">
					                             <label>thum</label>
					                             <input class="form-control" name="thum" value="${getList.movieInfo_thum}" readonly>
					                    </div>
					                    <div class="form-group">
					                             <label>bkimg</label>
					                             <input class="form-control" name="bkimg" value="${getList.movieInfo_bkimg}" readonly>
					                    </div>
					                    <div class="form-group">
					                             <label>video</label>
					                             <input class="form-control" name="video" value="${getList.movieInfo_video}" readonly>
					                    </div>
					                    <div class="form-group">
					                             <label>watcha</label>
					                             <input class="form-control" name="watcha" value="${getList.movieInfo_netflix}" readonly>
					                    </div>
					                    <div class="form-group">
					                             <label>wave</label>
					                             <input class="form-control" name="wave" value="${getList.movieInfo_watcha}" readonly>
					                    </div>
					                    <div class="form-group">
					                             <label>netflix</label>
					                             <input class="form-control" name="netflix" value="${getList.movieInfo_wavve}" readonly>
					                    </div>
					                    <div class="form-group">
					                             <label>category</label>
					                             <input class="form-control" name="category" value="${getList.movieInfo_category}" readonly>
					                    </div>
					                                		
					                                	
					               </div>
                                
			                             
			                            <a href="/admin/modify?MovieInfo_no=<c:out value='${getList.movieInfo_no}'/>" class="btn btn-primary">수정</a>
			                             
			                           	<a href="/admin/movieList" class="btn btn-primary">목록</a>
			                 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />            
                            </div>
                        </div>
                    </div>
                </main>
                
<%@include file="footer.jsp" %>