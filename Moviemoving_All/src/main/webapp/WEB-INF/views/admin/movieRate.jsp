<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="header.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">평점관리</h1>
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
                                        	<th>영화이름</th>
                                            <th>유저아이디</th>
                                            <th>제목</th>
                                            <th>평가내용</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <from id="adminMovie" method="post">
                                    <c:forEach items="${movieRate}" var="movieRate">
                                        <tr>
                                        	<td style="text-align:center;">
                                        		<input type="checkbox" id="mainshow" name="mainshow" value="${movieRate.movieRate_con}">
                                        	</td>
                                            <td>${movieRate.movieRate_con}</td>
                                            <td>${movieRate.movieRate_con}</td>                                           
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