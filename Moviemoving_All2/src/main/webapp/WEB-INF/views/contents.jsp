<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@include file="includes/header.jsp" %>

 <!--- 서브컨텐츠 시작 ----------->
        <div class="sub-con con-wrap">
            <section class="video-info">
                <div class="video-bg-wrap" style="background-image:url('<c:out value="${movie.movieInfo_bkimg}"/>')">                    
                    <div class="video-bg-right"></div>
                    <div class="video-bg-left"></div>
                    <div class="video-bg"></div>
                </div>
                <div class="summary-info-wrap">
                    <div class="summary-info">
                        <div class="title">
                            <h2><c:out value="${movie.movieInfo_title}"/></h2>
                            <span><c:out value="${movie.movieInfo_year}"/></span>
                            <span class="left-line-gray cateList">
                            <c:forEach items="${cateList}" var="cateList">
                            	<c:out value="${cateList.categoryList_name}"/><strong>,</strong>
                            </c:forEach>
                            </span>
                        </div>
                        <div class="info-btn">
							<div class="btn" id="bookmark-btn">
                                <i class="fa fa-bookmark-o disp-block"></i>
                                <i class="fa fa-bookmark disp-none"></i>
                                <span>보고싶어요</span>                                
                            </div>                 
                            <div class="btn" id="review-btn">
                                <i class="fa fa-star-o disp-block"></i>
                                <i class="fa fa-star disp-none"></i>
                                <span>평가하기</span>
                            </div>
                        </div>
                        <form id='operForm' action="/bookmark" method="post">
                        	<input type="hidden" name="MovieInfo_no" value="<c:out value='${movie.movieInfo_no}'/>">
                        	<sec:authorize access="isAuthenticated()">
                        		<sec:authentication property="principal.username" var="user_id"/>
                        	<input type="hidden" name="User_id" value="${user_id}">
                        	</sec:authorize>
                        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </form>
                        
                    </div>
                    <div class="go-site">
                        <p class="title">감상 가능한 곳</p>
                        <div class="btn-wrap">
                       		<c:if test="${movie.movieInfo_netflix != null}">
                       			<a id="go-netflix" class="goBtn" href="<c:out value='${movie.movieInfo_netflix}'/>" target="_blank"></a>
                       		</c:if>
                       		<c:if test="${movie.movieInfo_watcha != null}">
                       			<a id="go-watcha" class="goBtn" href="<c:out value='${movie.movieInfo_watcha}'/>" target="_blank"></a>
                       		</c:if>
                       		<c:if test="${movie.movieInfo_wavve != null}">
                       			<a id="go-wavve" class="goBtn" href="<c:out value='${movie.movieInfo_wavve}'/>" target="_blank"></a>
                       		</c:if>
                        </div>
                    </div>
                    <div class="poster-img">
                        <img src="${movie.movieInfo_Thum}">
                    </div>
                </div>
            </section>

            <section class="video-info-con">
                <dl class="text">
                    <dt>연령 등급</dt>
                    <dd><c:out value="${movie.movieInfo_age}" /></dd>
                    <dt>장르</dt>
                    <dd>
					<%-- <c:forEach items="${cateList}" var="cateList">
                    	<c:out value="${cateList.categoryList_name}"/><strong>,</strong>
                    </c:forEach> --%>
					</dd>
                    <dt>재생시간</dt>
                    <dd><c:out value="${movie.movieInfo_rt}" /></dd>
                </dl>
                <dl class="plot">
                    <dt>내용</dt>
                    <dd><c:out value="${movie.movieInfo_con}" /></dd>
                </dl>
            </section>

            <section class="video-review">                
                <div class="review-wrap">
                    <div class="review-title">
                        <p class="title"><i class="fa fa-star"></i> 평가</p>
                        <p class="average">평균 <i class="fa fa-star"></i> <strong>5.0</strong> <span>(60명)</span></p>
                    </div>
                    <div class="review-con"> 
                        <ul class="review">
                        	<c:forEach items="${MovieRate}" var="MovieRate">
                            <li>
                                <div class="title">
                                    <span><c:out value="${MovieRate.user_id}"/></span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <%-- <c:out value="${MovieRate.movieRate_score}"/> --%>
                                </div>
                                <p><c:out value="${MovieRate.movieRate_con}"/></p>
                                <span class="more sm-bt">더보기</span>
                            </li>
                            </c:forEach>
                        </ul>

                        <div class="list-Leftarrow circle-arrow"><i class="fa fa-chevron-left"></i></div>
                        <div class="list-Rightarrow circle-arrow"><i class="fa fa-chevron-right"></i></div>
                    </div>
                </div>
            </section>
        </div>

        <!-- 평가하기팝업-작성 시작 ----------->
        <div class="pop-wrap-bg review-pop">
            <div class="review-pop-wrap">
                <div class="pop-close-bt"><i class="fa fa-window-close-o" aria-hidden="true"></i></div>
                <div class="pop-title">
                    <h2>평가하기</h2>
                </div>
                <form action="insertMovieRate" method="post">
                    <div class="title">
                        <p>모가디슈</p>
                        <input type="text" name="MovieRate_score">
                        <span class="review-star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </span>
                    </div>
                    <input type="hidden" name="MovieInfo_no" value="<c:out value='${movie.movieInfo_no}'/>">
                        	<sec:authorize access="isAuthenticated()">
                        		<sec:authentication property="principal.username" var="user_id"/>
                        	<input type="hidden" name="User_id" value="${user_id}">
                        	</sec:authorize>
                        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <textarea name="MovieRate_con" class="textarea-field"></textarea>
                    <p>사회적 문제가 될수 있는 발언, 욕설 및 비방은 관리자에 의해 삭제될 수 있으니 참고하여 주시기바랍니다.</p>
                    <input type="submit" value="확인" class="input-field input-submit">
                </form>
            </div>
        </div>
        <!-- //평가하기팝업-작성 끝 ----------->

        <!-- 평가하기팝업-더보기 시작 ----------->
        <div class="pop-wrap-bg review-more-pop">
            <div class="pop-wrap review-pop-wrap">
                <div class="pop-close-bt"><i class="fa fa-window-close-o" aria-hidden="true"></i></div>
                <div class="pop-title">
                    <h2>모가디슈</h2>
                </div>
                <form>
                    <div class="title">
                        <span>userID</span>
                        <span class="review-star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </span>
                    </div>
                    <textarea name="review" class="textarea-field" readonly></textarea>
                    <input type="submit" value="확인" class="input-field input-submit">
                </form>
            </div>
        </div>
        <!-- //평가하기팝업-작성 끝 ----------->
        <!-- //서브컨텐츠 끝 ----------->

<%@include file="includes/footer.jsp" %>