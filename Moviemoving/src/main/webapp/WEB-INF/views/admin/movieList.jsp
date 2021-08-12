<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="header.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">영화관리</h1>
                        <div class="mb-4">
                        	<button id="mainShow_netflix">넷플릭스 메인노출</button>
                        </div>
                        <div class="card mb-4">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                	<colgroup>
                                		<col width="5%"/>
                                		<col width="10%"/>
                                		<col width=""/>
                                		<col width="15%"/>
                                		<col width="15%"/>
                                		<col width="15%"/>
                                	</colgroup>
                                    <thead>
                                        <tr>
                                        	<th>체크</th>
                                            <th>분류코드</th>
                                            <th>제목</th>
                                            <th>넷플릭스</th>
                                            <th>왓챠</th>
                                            <th>웨이브</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <from id="adminMovie" method="post">
                                    <c:forEach items="${movieList}" var="movieList">
                                        <tr>
                                        	<td style="text-align:center;">
                                        		<input type="checkbox" id="mainshow" name="mainshow" value="${movieList.movieInfo_no}">
                                        	</td>
                                            <td>${movieList.movieInfo_no}</td>
                                            <td>${movieList.movieInfo_title}</td>
                                            <td>
	                                            <c:if test="${movieList.movieInfo_netflix != null}">
	                                            	<i class="netflix-icon">넷플릭스</i>
	                                            </c:if>
                                            </td>
                                            <td>
	                                            <c:if test="${movieList.movieInfo_watcha != null}">
	                                            	<i class="watcha-icon">왓챠</i>
	                                            </c:if>
                                            </td>                                            
                                            <td>
                                            	<c:if test="${movieList.movieInfo_wavve != null}">
                                            		<i class="wavve-icon">웨이브</i>
                                            	</c:if>
                                            </td>                                            
                                        </tr>
                                    </c:forEach>
                                    </from>                                    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
<%@include file="footer.jsp" %>