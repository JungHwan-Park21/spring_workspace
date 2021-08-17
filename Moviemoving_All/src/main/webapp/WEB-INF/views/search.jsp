<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="includes/header.jsp" %>

<!--- 서브컨텐츠 시작 ----------->
        <div class="search-con con-wrap">
            <form>
                <label class="search-label">
                    <input type="text" name="search" class="input-field input-search" maxlength="100">
                    <button class="search-bt"><i class="fa fa-search"></i></button>
                </label>
            </form>
            <section id="search-option">
                <form>
                    <div class="genre-wrap">
                        <ul>
                            <li>
                                <label>
                                    <input type="checkbox" class="check" name="genreID" value="판타지">
                                    판타지 (10)
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="check" name="genreID" value="액션">
                                    액션 (10)
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="check" name="genreID" value="SF">
                                    SF (10)
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="check" name="genreID" value="코미디">
                                    코미디 (10)
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="check" name="genreID" value="어드벤처">
                                    어드벤처 (10)
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="check" name="genreID" value="애니메이션">
                                    애니메이션 (10)
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="check" name="genreID" value="미스터리">
                                    미스터리 (10)
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="checkbox" class="check" name="genreID" value="스릴러">
                                    스릴러 (10)
                                </label>
                            </li>
                        </ul>
                    </div>
                    <div class="cate-wrap">
                        <ul class="category-select">
                            <li class="active">전체 (60)</li>
                            <li>영화 (30)</li>
                            <li>TV프로그램 (30)</li>
                        </ul>
                        <select>
                            <option value="30">30개</option>
                            <option value="50">50개</option>
                            <option value="100">100개</option>
                        </select>
                    </div>
                </form>
            </section>
            <section id="search-movie">
                <h3>영화</h3>
                <div class="search-box">
                    <div class="list-wrap">
                        <ul>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                        </ul>
                    </div>
                    <div class="list-num">
                        <ul>
                            <li><i class="fa fa-angle-double-left"></i></li>
                            <li><i class="fa fa-angle-left"></i></li>                            
                            <li class="active">1</li>
                            <li>2</li>
                            <li>3</li>
                            <li>4</li>
                            <li>5</li>
                            <li>6</li>
                            <li>7</li>
                            <li>8</li>
                            <li>9</li>
                            <li>10</li>
                            <li><i class="fa fa-angle-right"></i></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                        </ul>
                    </div>
                </div>
            </section>
            <section id="search-tv">
                <h3>TV프로그램</h3>
                <div class="search-box">
                    <div class="list-wrap">
                        <ul>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg01.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">킹덤 : 아신전</span>
                                </div>                        
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg02.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">블러드 레드 스카이</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg03.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">이스케이프룸</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>
                                <div class="list-img">
                                    <img src="/resources/images/exListimg04.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">지오스톰</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                            <li>                                
                                <div class="list-img">
                                    <img src="/resources/images/exListimg05.png">
                                </div>
                                <div class="list-title">
                                    <span class="title">보스 베이비</span>
                                </div>
                                <a href="#" class="box-a"></a>
                            </li>
                        </ul>
                    </div>
                    <div class="list-num">
                        <ul>
                            <li><i class="fa fa-angle-double-left"></i></li>
                            <li><i class="fa fa-angle-left"></i></li>                            
                            <li class="active">1</li>
                            <li>2</li>
                            <li>3</li>
                            <li>4</li>
                            <li>5</li>
                            <li>6</li>
                            <li>7</li>
                            <li>8</li>
                            <li>9</li>
                            <li>10</li>
                            <li><i class="fa fa-angle-right"></i></li>
                            <li><i class="fa fa-angle-double-right"></i></li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <!-- //메인컨텐츠 끝 ----------->

<%@include file="includes/footer.jsp" %>