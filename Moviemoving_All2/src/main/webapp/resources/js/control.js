// 팝업제어
$(function(){ 
    $('#login').on('click',function(){
        $('.login-pop').show();
        $('.login-pop > div').addClass('pop-wrap');  
        popupCenter();      
    });
    $('#join').on('click',function(){
        $('.join-pop').show();     
        $('.join-pop > div').addClass('pop-wrap');
        popupCenter();
    }); 
    $('#review-btn').on('click',function(){
        $('.review-pop').show();     
        $('.review-pop > div').addClass('pop-wrap');
        popupCenter();
    }); 
    $('.more').on('click',function(){
        $('.review-more-pop').show();     
        $('.review-more-pop > div').addClass('pop-wrap');
        popupCenter();
    }); 
    $('.modify-bt').on('click',function(){
        $('.review-modify-pop').show();     
        $('.review-modify-pop > div').addClass('pop-wrap');
        popupCenter();
    }); 
    
    $('.pop-close-bt').on('click',function(){
        $('.pop-wrap-bg').hide();
        $('.pop-wrap').removeClass('pop-wrap');
    });

    $(window).resize(function(){
        popupCenter();
    })
})

//팝업 center 정렬
function popupCenter(){
    var top = ($(window).height() - $('.pop-wrap').height())/2
    var left = ($(window).width() - $('.pop-wrap').width())/2

    $('.pop-wrap').css({
        "top" : top,
        "left" : left
    });
}


//마이페이지 더보기
$(function(){
    //보고싶어요 - 영화
    if($('.movie-list li').length > 10) {
        $('.movie-list').find('.more-w100').show();
    } else {
        $('.movie-list').find('.more-w100').hide();
    }
    $('.movie-list li').slice(0,10).show();    
    $('.movie-list .more-w100').on('click', function(e){
        e.preventDefault();
        $('.movie-list li:hidden').slice(0,10).slideDown();
        if($('.movie-list li:hidden').length == 0) {
            $(this).parent('.list-wrap').find('.more-w100').hide();
            $(this).parent('.list-wrap').find('.close-w100').show();
        }
    });   
    $('.movie-list .close-w100').on('click', function(e){
        e.preventDefault();
        $('.movie-list li').slideUp(function(){
            $('.movie-list li').slice(0,10).show();
        });

        $(this).parent('.list-wrap').find('.more-w100').show();
        $(this).parent('.list-wrap').find('.close-w100').hide();
    });
   
    //보고싶어요 - TV
    if($('.tv-list li').length > 10) {
        $('.tv-list').find('.more-w100').show();
    } else {
        $('.tv-list').find('.more-w100').hide();
    }
    $('.tv-list li').slice(0,10).show();    
    $('.tv-list .more-w100').on('click', function(e){
        e.preventDefault();
        $('.tv-list li:hidden').slice(0,10).slideDown();
        if($('.tv-list li:hidden').length == 0) {
            $(this).parent('.list-wrap').find('.more-w100').hide();
            $(this).parent('.list-wrap').find('.close-w100').show();
        }
    });   
    $('.tv-list .close-w100').on('click', function(e){
        e.preventDefault();
        $('.tv-list li').slideUp(function(){
            $('.tv-list li').slice(0,10).show();
        });

        $(this).parent('.list-wrap').find('.more-w100').show();
        $(this).parent('.list-wrap').find('.close-w100').hide();
    });

    //평가 - 영화
    if($('.movie-review-list li').length > 4) {
        $('.movie-review-list').find('.more-w100').show();
    } else {
        $('.movie-review-list').find('.more-w100').hide();
    }
    $('.movie-review-list li').slice(0,4).css('display','flex');    
    $('.movie-review-list .more-w100').on('click', function(e){
        e.preventDefault();
        $('.movie-review-list li:hidden').slice(0,4).slideDown(function(){
            $(this).css('display','flex');
        });
        
        if($('.movie-review-list li:hidden').length == 0) {
            $(this).parent('.review-con').find('.more-w100').hide();
            $(this).parent('.review-con').find('.close-w100').show();
        }
    });   
    $('.movie-review-list .close-w100').on('click', function(e){
        e.preventDefault();
        $('.movie-review-list li').slideUp(function(){
            $('.movie-review-list li').slice(0,4).css('display','flex');  
        });

        $(this).parent('.review-con').find('.more-w100').show();
        $(this).parent('.review-con').find('.close-w100').hide();
    });

    //평가 - TV
    if($('.tv-review-list li').length > 4) {
        $('.tv-review-list').find('.more-w100').show();
    } else {
        $('.tv-review-list').find('.more-w100').hide();
    }
    $('.tv-review-list li').slice(0,4).css('display','flex');    
    $('.tv-review-list .more-w100').on('click', function(e){
        e.preventDefault();
        $('.tv-review-list li:hidden').slice(0,4).slideDown(function(){
            $(this).css('display','flex');
        });
        
        if($('.tv-review-list li:hidden').length == 0) {
            $(this).parent('.review-con').find('.more-w100').hide();
            $(this).parent('.review-con').find('.close-w100').show();
        }
    });   
    $('.tv-review-list .close-w100').on('click', function(e){
        e.preventDefault();
        $('.tv-review-list li').slideUp(function(){
            $('.tv-review-list li').slice(0,4).css('display','flex');  
        });

        $(this).parent('.review-con').find('.more-w100').show();
        $(this).parent('.review-con').find('.close-w100').hide();
    });
})

//메인 롤링
$(function(){
		$('.list-con li').on('click', function(){
			var getNo = $(this).attr('class');	
			
			if($('.best-list-info li').css("opacity",1)){
				$('.best-list-info li').css("opacity",0);
			}
			
			$('.best-list-info li.'+getNo).animate({"opacity":1});
	
		})
		
		
		$('.best-list-Rightarrow').on('click',function(){
			$('.list-con ul').each(function(){
				$(this).animate({'left':'-1200px'});
			})
			$('.best-list-Rightarrow').hide();
			$('.best-list-Leftarrow').show();
		})
		$('.best-list-Leftarrow').on('click',function(){
			$('.list-con ul').each(function(){
				$(this).animate({'left':'0'});
			})
			$('.best-list-Rightarrow').show();
			$('.best-list-Leftarrow').hide();
		})
	
});
	
	
//Ajax 토큰
$(document).ready(function(){
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	$(document).ajaxSend(function(e, xhr, options) {
		xhr.setRequestHeader(header, token); 
	});
});


//북마크 중복검사 + 등록 + 삭제
window.onload = function(){
	var operForm = $("#operForm");   
	
	var User_id = $("input[name='User_id']").val();
	var MovieInfo_no = $("input[name='MovieInfo_no']").val();
	var data = {User_id : User_id, MovieInfo_no: MovieInfo_no};
	
    $.ajax({
		type:"post",
		url: "/bookmarkChk",
		data : data,
		success : function(result){
			console.log("성공여부 : " + result);
			
			if(result == "fail"){
				$('#bookmark-btn').addClass('active');
				$('#bookmark-btn').on('click', function(){
					operForm.attr("action","/removeBookmark").submit();
					alert("보고싶어요를 취소했습니다.")
				});
			} else {
				$('#bookmark-btn').on('click', function(){
					operForm.attr("action","/insertBookmark").submit();
					alert("보고싶어요를 등록했습니다.");
				});
			}
		},
		error : function(request, status, error){
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }
	})
}    
