<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="header.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">movieList 수정</h1>
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="panel-body">
                                		<form role="form" action="/admin/modify" method="post">
										<div class="form-group">
					                    		<label>분류코드</label>
					                        	<input class="form-control" name="분류코드" value='<c:out value="${movieList.movieInfo_code}"/>'>
					                    </div>
					                    <div class="form-group">
					                            <label>영화번호</label>
					                            <input class="form-control" name="title" value="${movieList.movieInfo_no}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_title}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_year}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                           	 <input class="form-control" name="title" value="${movieList.movieInfo_age}">
					                	</div>
					                    <div class="form-group">
					                     		 <label>영화번호</label>
					                  			 <input class="form-control" name="title" value="${movieList.movieInfo_rt}">
					                    </div>
					                   	<div class="form-group">
					                     		 <label>영화번호</label>
					                   	    	 <input class="form-control" name="title" value="${movieList.movieInfo_visit}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_con}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_thum}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_bkimg}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_video}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_netflix}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_watcha}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_wavve}">
					                    </div>
					                    <div class="form-group">
					                             <label>영화번호</label>
					                             <input class="form-control" name="title" value="${movieList.movieInfo_category}">
					                    </div>
			                             <button type="submit" data-oper="modefy" class="btn btn=primary">수정</button>
			                             <button type="submit" data-oper="remove" class="btn btn=primary">삭제</button>
			                             <button type="submit" data-oper="list" class="btn btn=primary">목록</button>
                                	</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
<%@include file="footer.jsp" %>