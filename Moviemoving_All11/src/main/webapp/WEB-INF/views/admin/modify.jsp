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
					                    		<label>code</label>
					                        	<input class="form-control" name="movieInfo_code" value='<c:out value="${getList.movieInfo_code}"/>'>
					                    </div>
					                    <div class="form-group">
					                            <label>no</label>
					                            <input class="form-control" name="movieInfo_no" value="${getList.movieInfo_no}">
					                    </div>
					                    <div class="form-group">
					                             <label>title</label>
					                             <input class="form-control" name="movieInfo_title" value="${getList.movieInfo_title}">
					                    </div>
					                    <div class="form-group">
					                             <label>year</label>
					                             <input class="form-control" name="movieInfo_year" value="${getList.movieInfo_year}">
					                    </div>
					                    <div class="form-group">
					                             <label>age</label>
					                           	 <input class="form-control" name="movieInfo_age" value="${getList.movieInfo_age}">
					                	</div>
					                    <div class="form-group">
					                     		 <label>rt</label>
					                  			 <input class="form-control" name="movieInfo_rt" value="${getList.movieInfo_rt}">
					                    </div>
					                   	<div class="form-group">
					                     		 <label>visit</label>
					                   	    	 <input class="form-control" name="movieInfo_visit" value="${getList.movieInfo_visit}">
					                    </div>
					                    <div class="form-group">
					                             <label>con</label>
					                             <input class="form-control" name="movieInfo_con" value="${getList.movieInfo_con}">
					                    </div>
					                    <div class="form-group">
					                             <label>thum</label>
					                             <input class="form-control" name="movieInfo_thum" value="${getList.movieInfo_thum}">
					                    </div>
					                    <div class="form-group">
					                             <label>bkimg</label>
					                             <input class="form-control" name="movieInfo_bkimg" value="${getList.movieInfo_bkimg}">
					                    </div>
					                    <div class="form-group">
					                             <label>video</label>
					                             <input class="form-control" name="movieInfo_video" value="${getList.movieInfo_video}">
					                    </div>
					                    <div class="form-group">
					                             <label>netflix</label>
					                             <input class="form-control" name="movieInfo_netflix" value="${getList.movieInfo_netflix}">
					                    </div>
					                    <div class="form-group">
					                             <label>watcha</label>
					                             <input class="form-control" name="movieInfo_watcha" value="${getList.movieInfo_watcha}">
					                    </div>
					                    <div class="form-group">
					                             <label>wavve</label>
					                             <input class="form-control" name="movieInfo_wavve" value="${getList.movieInfo_wavve}">
					                    </div>
					                    <div class="form-group">
					                             <label>category</label>
					                             <input class="form-control" name="movieInfo_category" value="${getList.movieInfo_category}">
					                    </div>
			                             <button type="submit" data-oper="modify" class="btn btn-primary">수정</button>
			                             <button type="submit" value="${getList.movieInfo_no}" class="movie_remove btn btn-primary">삭제</button>
			                             <input type="hidden" name="MovieInfo_no">
			                             <button type="submit" data-oper="list" class="btn btn-primary">목록</button>
			                             
			                            
                                	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                	
                                	  <script>
                                		$(document).ready(function(){
                                			var formObj=$("form");
                                			$(".movie_remove").on("click",function(e){
                                				alert("삭제되었습니다." +e.target.value);
                                				formObj.find("input[name='MovieInfo_no']").attr("value", e.target.value);
                                				
                                				formObj.attr("action","/admin/remove").submit();
                                			});
                                			$("button").on("click",function(e){
                                				e.preventDefault();
                                				var operation=$(this).data("oper");
                                				if(operation==="remove"){
                                					formObj.attr("action","/admin/remove");
                                				}else if(operation==="list"){
                                					self.location="/admin/movieList";
                                					return;
                                				}
                                				formObj.submit();
                                			});
                                		});
                                	</script>
                                	</form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
          
<%@include file="footer.jsp" %>