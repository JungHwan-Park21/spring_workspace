window.addEventListener('load', onLoadEvent);

var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player = {};

function makeYoutube(id, link) {
    player[id] = new YT.Player('player', {
        height: '100%',
        width: '100%',
        videoId: link,
        playerVars : {
            'controls': 0, //플레이어 컨드롤러 표시여부
            'rel': 0, //연관동영상 표시여부
            'playsinline': 0, //ios환경에서 전체화면으로 재생하지 않게하는 옵션
            'autoplay': 1, //자동재생 여부(모바일에서 작동하지 않습니다. mute설정을 하면 작동합니다.)
            'loop': 0,
            'mute' : 1,
            'rel' : 0
        },
    events: {
        'onReady': onPlayerReady,
        'onStateChange': onPlayerStateChange
    }
    });
    
    function onPlayerReady(event) {
        event.target.playVideo();
    }

    function onPlayerStateChange(event) {
        if (event.data === 0) {
            $('#player').hide();
        }
    }
}

function yotubeOnClick() {
    [].forEach.call(document.querySelectorAll('.best-list-bt'), function(el, index) {
      el.addEventListener('click', function() {
        var getLink = this.getAttribute('data-youtubeLink');
        var thisYoutubeLink = getLink.split('=',2);
       
        this.id = makeRandomId();
        makeYoutube(this.id, thisYoutubeLink[1]);        
      });
    });
}

function onLoadEvent() {
    yotubeOnClick();
}

function youtubeAllStop() {
    for (var youtube in player) {
      player[youtube].pauseVideo();
    }
}

var makeRandomId = function() {
    var text = '';
    var possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+=-';
    for (var i = 0; i < 11; i++) text += possible.charAt(Math.floor(Math.random() * possible.length));
    return text;
}










// 메인 영상제어

// var tag = document.createElement('script');

// tag.src = "https://www.youtube.com/iframe_api";
// var firstScriptTag = document.getElementsByTagName('script')[0];
// firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// var player;
// function onYouTubeIframeAPIReady() {  
//     player = new YT.Player('player', {
//     height: '100%',
//     width: '100%',
//     videoId: 'uQmu3hwhKzs',
//     playerVars : {
//         'controls': 0, //플레이어 컨드롤러 표시여부
//         'rel': 0, //연관동영상 표시여부
//         'playsinline': 0, //ios환경에서 전체화면으로 재생하지 않게하는 옵션
//         'autoplay': 1, //자동재생 여부(모바일에서 작동하지 않습니다. mute설정을 하면 작동합니다.)
//         'loop': 0,
//         'mute' : 1,
//         'rel' : 0
//     },
//     events: {
//         'onReady': onPlayerReady,
//         'onStateChange': onPlayerStateChange
//     }
//     });
// }
// function onPlayerReady(event) {
//     event.target.playVideo();
// }