<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/css/swiper-3.4.2.min.css">
    <link rel="stylesheet" href="/css/animate.min.css">
</head>
<body>
<div class="swiper-slide">
    <p style="text-align:center;font-size:100px;" class="ani" swiper-animate-effect="bounceOutDown" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s">内容</p>
</div>
<script src="/js/jquery-1.10.1.min.js"></script>
<script src="/js/swiper.animate1.0.2.min.js"></script>
<script src="/js/swiper-3.4.2.min.js"></script>

<script>
    var mySwiper = new Swiper ('.swiper-container', {
        onInit: function(swiper){ //Swiper2.x的初始化是onFirstInit
            swiperAnimateCache(swiper); //隐藏动画元素
            swiperAnimate(swiper); //初始化完成开始动画
        },
        onSlideChangeEnd: function(swiper){
            swiperAnimate(swiper); //每个slide切换结束时也运行当前slide动画
        }
    })
</script>
</body>
</html>