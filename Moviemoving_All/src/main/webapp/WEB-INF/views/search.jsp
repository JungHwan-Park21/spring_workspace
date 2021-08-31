<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="includes/header.jsp"%>

<!-- 페이징처리 자바스크립트 ------------------------------------------------>
<script>
	$(document).ready(function() {
		var moveForm = $("#moveForm");

		$(".pageInfo a").on("click", function(e) {

			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/search");
			moveForm.submit();

		});
	});
</script>
<!-- 페이징처리 자바스크립트 -->



<!--- 서브컨텐츠 시작 ----------->
<!--검색창 ----------------------------------------------->
<div class="search-con con-wrap">
	<form class="search-keywordBOx">
		<label class="search-label"> <input type="text" name="keyword"
			value="${pageMaker.cri.keyword}" class="input-field input-search"
			maxlength="100">
			<button class="search-bt">
				<i class="fa fa-search"></i>
			</button>
		</label>
	</form>
	<!--검색창 끝  -->
	<!--  장르 체크박스 ------------------------------------------------------------------------- -->
	<section id="search-option">
		<form>
			<div class="genre-wrap">
				<ul>
					<li><label> <input type="checkbox" class="check"
							name="genreID" value="판타지"> 판타지 (10<!-- 여기에  내용 넣어야함-->)
					</label></li>
					<li><label> <input type="checkbox" class="check"
							name="genreID" value="액션"> 액션 (10)
					</label></li>
					<li><label> <input type="checkbox" class="check"
							name="genreID" value="SF"> SF (10)
					</label></li>
					<li><label> <input type="checkbox" class="check"
							name="genreID" value="코미디"> 코미디 (10)
					</label></li>
					<li><label> <input type="checkbox" class="check"
							name="genreID" value="어드벤처"> 어드벤처 (10)
					</label></li>
					<li><label> <input type="checkbox" class="check"
							name="genreID" value="애니메이션"> 애니메이션 (10)
					</label></li>
					<li><label> <input type="checkbox" class="check"
							name="genreID" value="미스터리"> 미스터리 (10)
					</label></li>
					<li><label> <input type="checkbox" class="check"
							name="genreID" value="스릴러"> 스릴러 (10)
					</label></li>
				</ul>
			</div>
			<div class="cate-wrap">
				<ul class="category-select">
					<li class="active">전체 (60)</li>
					<li>영화 (30)</li>
					<li>TV프로그램 (30)</li>
				</ul>
				<!-- 목록 출력 수량 변경 --------------------->
				<select>
					<option value="30">30개</option>
					<option value="50">50개</option>
					<option value="100">100개</option>
				</select>
				<!-- 목록 출력 수량 변경 -->
			</div>
		</form>
	</section>
	<!--  장르 체크박스-------------->

	<!-- 영화 목록 ------------------------------------------------------------------>
	<section id="search-movie">
		<h3>영화</h3>
		<div class="search-box">
			<div class="list-wrap">
				<ul>
					<c:forEach items="${list}" var="list">
						<li>
							<div class="list-img">
								<img src="<c:out value = '${list.movieInfo_thum}' />">
							</div>
							<div class="list-title">
								<span class="title"><c:out
										value="${list.movieInfo_title}" /></span>
							</div> <a href="#" class="box-a"></a>
						</li>
					</c:forEach>
				</ul>
			</div>

			<!-- 페이지번호 ------------------------------------------------------------------------>
			<div class="list-num">
				<div class="pageInfo_area">
					<ul id="pageInfo" class="pageInfo">
						<!-- 이전페이지 버튼 -->
						<c:if test="${pageMaker.prev}">
							<li class="pageInfo_btn previous"><a
								href="${pageMaker.startPage-1}"> prev </a></li>
						</c:if>

						<!--  각 번호 페이지 버튼 -->
						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="pageInfo_btn"><a href="${num}">${num}</a></li>
						</c:forEach>

						<!-- 다음페이지 버튼 -->
						<c:if test="${pageMaker.next}">
							<li class="pageInfo_btn next"><a
								href="${pageMaker.endPage +1}"> next </a></li>
						</c:if>

					</ul>
				</div>
			</div>

			<form id='moveForm' action='/search' method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
			</form>
			<!-- 페이지번호 -->
		</div>
	</section>
	<!-- 영화 목록 -->
	<!-- TV 목록 ----------------------------------------------------------------->
	<section id="search-tv">
		<h3>TV프로그램</h3>
		<div class="search-box">
			<div class="list-wrap">
				<ul>
					<c:forEach items="${list}" var="list">
						<li>
							<div class="list-img">
								<img src="<c:out value = '${list.movieInfo_thum}' />">
							</div>
							<div class="list-title">
								<span class="title"><c:out value="${list.movieInfo_title}" /></span>
							</div> <a href="#" class="box-a"></a>
						</li>
					</c:forEach>
				</ul>
			</div>

			<!-- tv페이징 목록-------------------------------------------->
			<div class="list-num">
				<ul>
					<c:if test="${pageMaker.prev }">
						<li class="paginate_button1 previous"><a
							href="${pageMaker.startPage -1}" id="paging-bt">Previous</a></li>
					</c:if>

					<c:forEach var="num" begin="${pageMaker.startPage}"
						end="${pageMaker.endPage}">
						<li class='paginate_button1 ${pageMaker.cri.pageNum == num ? "active" : "" } '>
						<a href="${num}">${num}</a></li>
					</c:forEach>

					<c:if test="${pageMaker.next }">
						<li class="paginate_button1 next"><a
							href="${pageMaker.endPage +1}">Next</a></li>
					</c:if>
				</ul>
			</div>
			<!-- tv페이징 목록 -->
		</div>
	</section>
	<!-- TV 목록 -->
</div>
<!-- //서브컨텐츠 끝 ----------->

<%@include file="includes/footer.jsp"%>