<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="includes/header.jsp" %>

<!--- 서브컨텐츠 시작 ----------->
        <div class="mypage-con con-wrap">
            <section class="mypage-title">
                 <sec:authorize access="isAuthenticated()">
			      <h1><sec:authentication property="principal.user.user_name" /></h1>
			      	<h3>님 반갑습니다 !</h3>
		         </sec:authorize>
                <span class="modify_bt_pw sm-bt">비밀번호변경</span>
                <span class="modify_bt_pw sm-bt">회원탈퇴</span>
            </section>
            <section class="mypage-movie">
                <h3>영화</h3>
                <div class="mp-box mp-bookmark">
                    <div class="mp-title">
                        <i class="fa fa-bookmark"></i> 보고싶어요
                    </div>
                    <div class="list-wrap movie-list">
                        <ul class="list">
                        	<c:forEach items="${moviemark}" var="moviemark">
                        		<li>
	                                <div class="list-img">
	                                    <img src="<c:out value='${moviemark.movieInfo_thum}'/>">
	                                </div>
	                                <div class="list-title">
	                                    <span class="title"><c:out value='${moviemark.movieInfo_title}'/></span>
	                                </div>                        
	                                <a href="/movie?MovieInfo_no=<c:out value='${moviemark.movieInfo_no}'/>" class="box-a"></a>
	                            </li>
                        	</c:forEach>                          
                        </ul>
                        <div class="more-w100">더보기 <i class="fa-chevron-down fa"></i></div>
                        <div class="close-w100">접기 <i class="fa-chevron-up fa"></i></div>
                    </div>                    
                </div>
                <div class="mp-box mp-reivew">
                    <div class="mp-title">
                        <i class="fa fa-star"></i> 평가
                    </div>
                    <div class="review-con movie-review-list">                       
                        <ul class="review">
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                        </ul>
                        <div class="more-w100">더보기 <i class="fa-chevron-down fa"></i></div>
                        <div class="close-w100">접기 <i class="fa-chevron-up fa"></i></div>
                    </div>                    
                </div>
            </section>

            <section class="mypage-tv">
            <h3>TV 프로그램</h3>
                <div class="mp-box mp-bookmark">
                    <div class="mp-title">
                        <i class="fa fa-bookmark"></i> 보고싶어요
                    </div>
                    <div class="list-wrap tv-list">
                        <ul class="list">
                            <c:forEach items="${tvmarke}" var="tvmarke">
                        		<li>
	                                <div class="list-img">
	                                    <img src="<c:out value='${tvmarke.movieInfo_thum}'/>">
	                                </div>
	                                <div class="list-title">
	                                    <span class="title"><c:out value='${tvmarke.movieInfo_title}'/></span>
	                                </div>                        
	                                <a href="/movie?MovieInfo_no=<c:out value='${tvmarke.movieInfo_no}'/>" class="box-a"></a>
	                            </li>
                        	</c:forEach> 
                        </ul>
                        <div class="more-w100">더보기 <i class="fa-chevron-down fa"></i></div>
                        <div class="close-w100">접기 <i class="fa-chevron-up fa"></i></div>
                    </div>                    
                </div>
                <div class="mp-box mp-reivew">
                    <div class="mp-title">
                        <i class="fa fa-star"></i> 평가
                    </div>
                    <div class="review-con tv-review-list">                       
                        <ul class="review">
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                            <li>
                                <div class="movie-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="title">
                                    <span>보스 베이비</span>
                                    <span class="review-star">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </span>
                                    <p>넷플릭스에서 어제 공개된 [킹덤: 아신전]을 시청 완료하였습니다. 사실 아주 재미있고 흥미로웠다면 빠르게 리뷰를 작성했을 텐데 '킹덤 시리즈' 세계관의 확장이라는 점에서는 긍정적인 요소가 있는 반면에 1년 4개월을 이 시리즈 후속편에 대한 기대로 기다렸을 시청자에게는 조금 실망스러운 작품이 아니었을까 싶네요. 저 역시 그래서 어쩌면 리뷰에 대한 빠른 반응이 없었는지도 모르겠고요.</p>
                                    <spna class="modify-bt sm-bt">수정</spna>
                                    <spna class="delete-bt sm-bt">삭제</spna>
                                </div>                                
                            </li>
                        </ul>
                        <div class="more-w100">더보기 <i class="fa-chevron-down fa"></i></div>
                        <div class="close-w100">접기 <i class="fa-chevron-up fa"></i></div>
                    </div>                    
                </div>
            </section>
        </div>
        <!-- //메인컨텐츠 끝 ----------->

        <!-- 평가하기팝업-수정 시작 ----------->
        <div class="pop-wrap-bg review-modify-pop">
            <div class="review-pop-wrap">
                <div class="pop-close-bt"><i class="fa fa-window-close-o" aria-hidden="true"></i></div>
                <div class="pop-title">
                    <h2>평가 수정하기</h2>
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
                    <input type="submit" value="수정" class="input-field input-submit">
                </form>
            </div>
        </div>
        <!-- //평가하기팝업-수정 끝 ----------->

<%@include file="includes/footer.jsp" %>