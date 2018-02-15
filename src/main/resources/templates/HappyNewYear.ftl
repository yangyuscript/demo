<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/css/swiper-3.4.2.min.css">
    <link rel="stylesheet" href="/css/animate.min.css">
    <script type="text/javascript">
    </script>
    <style>
        body{
            color:white;
            background:#C10003 url(/images/hny/bg5.png);
        }
        @-webkit-keyframes rotation{
            from {-webkit-transform: rotate(0deg);}
            to {-webkit-transform: rotate(360deg);}
        }
        #music{
            position: absolute;
            top:0;
            right: 0;
            width:80px;
            height:80px;
            z-index: 1000000;
            -webkit-transform: rotate(360deg);
            animation: rotation 4s linear infinite;
            -moz-animation: rotation 4s linear infinite;
            -webkit-animation: rotation 4s linear infinite;
            -o-animation: rotation 4s linear infinite;
        }

        .slide_one{
            text-align:center;
            /*background:url(/images/hny/bg5.png);*/
            color:white;
            font-size:30px;
        }
        .slide_two{
            text-align:center;
            font-size:40px;
            color:white;
        }
        .slide_four{
            background:#C10003;
            text-align:center;
            font-size:40px;
        }
        .slide_four input{
            width:70%;
            height:80px;
            font-size:40px;
            border:5px white solide;
        }
        button{
            width:70%;
            height:50px;
            font-size:30px;
        }
        .swiper-slide{
            overflow: hidden;
        }

        .swiper-slide-active{
            overflow: auto !important;
        }
    </style>
</head>
<body>
<audio id="audio" style="display:none;" autoplay="autoplay" controls="controls"loop="loop" preload="auto"
       src="/images/hny/gongxifacai.mp3">
    你的浏览器不支持audio标签
</audio>
<img id="music" src="/images/hny/music.png" />
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide slide_one">
            <h1 class="ani" swiper-animate-effect="rubberBand" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s">
                <img style="width:60%;height:60%;" src="/images/hny/20182.png"/>
            </h1>
            <h2 class="ani" swiper-animate-effect="bounceInLeft" swiper-animate-duration="0.5s" swiper-animate-delay="1s" style="text-align: left;">TO ${to}</h2>
            <h2 class="ani" swiper-animate-effect="bounceInDown" swiper-animate-duration="1s" swiper-animate-delay="2s" style="text-align: left;font-size:45px;line-height:200%;height:50%;padding:0 10%;">
                &nbsp;&nbsp;恭祝狗年吉祥：旺狗贺岁，欢乐祥瑞;旺狗汪汪，事业兴旺;旺狗打滚，财源滚滚;旺狗高跳，吉星高照;旺狗撒欢，如意平安;旺狗祈福，阖家幸福!
                白雪迎狗年，祥瑞降人间。欢乐太平年，幸福不间断。美丽丰收年，万户笑开颜。甜蜜美满年，家家乐翩翩。喜气庆狗年，祝福满心田。愿你狗年大吉大利，万事如意!
            </h2>
            <h2 class="ani" swiper-animate-effect="bounceInRight" swiper-animate-duration="0.5s" swiper-animate-delay="3s" style="text-align:right;">FROM ${from}</h2>
        </div>
        <div class="swiper-slide slide_two">
            <img class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="5s" swiper-animate-delay="0.3s" src="/images/hny/dog.png"/>
            <h3 class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s">
                今年
            </h3>
            <h3 class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="0.5s" swiper-animate-delay="1s">
                你
            </h3>
            <h3 class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="0.5s" swiper-animate-delay="2s">
                在
            </h3>
            <h2 id="city" class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="0.5s" swiper-animate-delay="3s">
                地球
            </h2>
            <h3 class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="0.5s" swiper-animate-delay="4s">
                过春节
            </h3>
            <h4>已有<span style="font-size:70px;">${allParyerNum}</span>个伙伴和你一起过新年！</h4>
        </div>
        <div class="swiper-slide slide_four">
            <h4 class="ani" swiper-animate-effect="bounceInUp" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s" style="color:white;margin-top:17%;">生成你的新年祝福</h4>
            <p class="ani" swiper-animate-effect="rollIn" swiper-animate-duration="0.5s" swiper-animate-delay="1s">from:<input id="from_input" maxlength="8" type="text"/></p>
            <p class="ani" swiper-animate-effect="rollIn" swiper-animate-duration="0.5s" swiper-animate-delay="2s">to&nbsp;:<input id="to_input" maxlength="8" type="text"/></p>
            <p class="ani" swiper-animate-effect="bounceInDown" swiper-animate-duration="0.5s" swiper-animate-delay="3s"><button id="copyurl_btn" style="border-radius:10px;color:white;border:2px white solid;background-color:#C10003;">点击生成</button></p>
            <p class="ani" swiper-animate-effect="bounceInDown" swiper-animate-duration="0.5s" swiper-animate-delay="4s" style="margin-top:20%;margin-bottom:10%;text-align:left;">复制以下链接发送给要拜年的人儿即可：</p>
            <p id="link"></p>
            <p style="position:absolute;bottom:0;right:0;">All Rights Reserved.lingx</p>
        </div>
    </div>
</div>
<script src="/js/swiper.animate1.0.2.min.js"></script>
<script src="/js/swiper-3.4.2.min.js"></script>
<script src="/js/jquery-1.10.1.min.js"></script>
<script>
    var mySwiper = new Swiper ('.swiper-container', {
        direction: 'vertical',
        height:window.innerHeight,
        width:window.innerWidth,

        /* 初始化animate */
        onInit: function(swiper){  //Swiper2.x的初始化是onFirstInit
            //console.log("what the fuck!");
            swiperAnimateCache(swiper);  //隐藏动画元素
            setTimeout(function(){ //2s后开始运行动画（移动端总是没加载完图片就开始动画了。。。。。）
                swiperAnimate(swiper); //初始化完成开始动画
            },2000)
        },
        onSlideChangeEnd: function(swiper){
            swiperAnimate(swiper); //每个slide切换结束时也运行当前slide动画
        }
    })
</script>
<script>
    $(function(){
        var getip_url="http://2017.ip138.com/ic.asp";
        var $ip='';
        var $city='';
        var url = 'http://chaxun.1616.net/s.php?type=ip&output=json&callback=?&_='+Math.random();
        $.getJSON(url,function(data){
            $ip=data.Ip;
            $city=data.Isp.split(" ")[0];
            $("#city").html($city);
        });

        //music图片控制mp3播放
        var $audio=document.getElementById("audio");
        $("#music").click(function(){
            //alert("点击music"+$audio.paused);
            if($audio.paused){
                $audio.play()
                $("#music").css("background-color","")
            }else{
                $audio.pause()
                $("#music").css("background-color","black")

            }
        })

        $("#copyurl_btn").click(function(){
            var $from_input=$("#from_input").val();
            var $to_input=$("#to_input").val();
            if($from_input==null||$from_input.trim()==""||$to_input==null||$to_input.trim()==""){
                alert("请保证from和to的内容不为空！");
            }else{
                $(this).prop("disabled",true);
                $.ajax({
                    url:'/getInfo',
                    type:'POST',
                    data:{
                        from:$from_input,
                        to:$to_input,
                        ip:$ip,
                        city:$city
                    },
                    dataType:'json',
                    success:function(data){
                        if(data.result=='success'){
                            $(this).prop("disabled",true);
                            //alert(encodeURI($from_input));
                            $from_input=encodeURI($from_input);
                            $to_input=encodeURI($to_input);
                            $("#link").html("http://118.25.35.27:8084/HappyNewYear?from="+$from_input+"&to="+$to_input);
                        }else{
                            $(this).prop("disabled",false);
                        }
                    }
                });
            }
        });
    })
</script>
</body>
</html>