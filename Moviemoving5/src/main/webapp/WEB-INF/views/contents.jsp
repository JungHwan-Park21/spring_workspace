<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="includes/header.jsp" %>

 <!--- 서브컨텐츠 시작 ----------->
        <div class="sub-con con-wrap">
            <section class="vedio-info">
                <div class="vedio-bg-wrap">                    
                    <div class="vedio-bg-right"></div>
                    <div class="vedio-bg-left"></div>
                    <div class="vedio-bg"></div>
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
                        <form action="C:url value='/mypage' />" method="post">
	                        <div class="info-btn">
	                            <div class="btn active" id="bookmark-btn">
	                                <i class="fa fa-bookmark-o disp-block"></i>
	                                <i class="fa fa-bookmark disp-none"></i>
	                                <span>보고싶어요</span>
	                        </div>
                        </form>
                            <div class="btn" id="review-btn">
                                <i class="fa fa-star-o disp-block"></i>
                                <i class="fa fa-star disp-none"></i>
                                <span>평가하기</span>
                            </div>
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
                    </div>
                    <div class="poster-img">
                        <img src="${movie.movieInfo_img}">
                    </div>
                </div>
            </section>

            <section class="vedio-info-con">
                <dl class="text">
                    <dt>연령 등급</dt>
                    <dd><c:out value="${movie.movieInfo_age}" /></dd>
                    <dt>장르</dt>
                    <dd>드라마, 액션</dd>
                    <dt>재생시간</dt>
                    <dd><c:out value="${movie.movieInfo_rt}" /></dd>
                </dl>
                <dl class="plot">
                    <dt>내용</dt>
                    <dd><c:out value="${movie.movieInfo_con}" /></dd>
                </dl>
            </section>

            <section class="vedio-review">                
                <div class="review-wrap">
                    <div class="review-title">
                        <p class="title"><i class="fa fa-star"></i> 평가</p>
                        <p class="average">평균 <i class="fa fa-star"></i> <strong>5.0</strong> <span>(60명)</span></p>
                    </div>
                    <div class="review-con">                       
                        <ul class="review">
                            <li>
                                <div class="title">
                                    <span>UserID</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <spna class="more sm-bt">더보기</spna>
                                </div>
                                <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                            </li>

                            <li>
                                <div class="title">
                                    <span>UserID</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <spna class="more sm-bt">더보기</spna>
                                </div>
                                <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                            </li>
                            <li>
                                <div class="title">
                                    <span>UserID</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <spna class="more sm-bt">더보기</spna>
                                </div>
                                <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                            </li>
                            <li>
                                <div class="title">
                                    <span>UserID</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <spna class="more sm-bt">더보기</spna>
                                </div>
                                <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                            </li>
                            <li>
                                <div class="title">
                                    <span>UserID</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <spna class="more sm-bt">더보기</spna>
                                </div>
                                <p>
                                    넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.
                                </p>
                            </li>
                            <li>
                                <div class="title">
                                    <span>UserID</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <spna class="more sm-bt">더보기</spna>
                                </div>
                                <p>
                                    넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.
                                </p>
                            </li>
                            <li>
                                <div class="title">
                                    <span>UserID</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <spna class="more sm-bt">더보기</spna>
                                </div>
                                <p>
                                    넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.
                                </p>
                            </li>
                            <li>
                                <div class="title">
                                    <span>UserID</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <spna class="more sm-bt">더보기</spna>
                                </div>
                                <p>
                                    넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.
                                </p>
                            </li>
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
                <form>
                    <div class="title">
                        <p>모가디슈</p>
                        <span class="review-star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </span>
                    </div>
                    <textarea name="review" class="textarea-field"></textarea>
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