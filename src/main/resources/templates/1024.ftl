<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/css/swiper-3.4.2.min.css">
    <link rel="stylesheet" href="/css/animate.min.css">
    <style>
        /*.swiper-container {*/
        /*width: 100%;*/
        /*height: 100%;*/
        /*}*/
        h1{
            color:white;
            font-size:50px;
        }
        .slide_one{
            text-align:center;
            background:black;
            background-color:black;
            color:white;
            font-size:30px;
        }
        .slide_two{
            background-color:black;
            text-align:center;
            font-size:40px;
            color:white;
        }
        .slide_three{
            background-color:black;
            text-align:left;
            color:white;
            font-size:35px;
        }
        .slide_four{
            background-color:saddlebrown;
            text-align:center;
            font-size:40px;
            color:white;
        }
        .slide_four input{
            width:70%;
            height:80px;
            font-size:40px;
            border:5px white solide;
            color:white;
            background-color:saddlebrown;
        }
        button{
            width:70%;
            height:50px;
            font-size:30px;
        }
    </style>
</head>
<body>
<audio autoplay="autoplay" controls="controls"loop="loop" preload="auto"
       src="/images/xiedi.mp3">
    你的浏览器不支持audio标签
</audio>
<div class="swiper-container">
    <div class="swiper-wrapper">
        <div class="swiper-slide slide_one">
            <h1 class="ani" swiper-animate-effect="rubberBand" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s" style="color:white;font-size: 130px;">程序员的1024</h1>
            <h2 class="ani" swiper-animate-effect="bounceInLeft" swiper-animate-duration="0.5s" swiper-animate-delay="1s" style="text-align: left;">TO ${to}</h2>
            <h2 class="ani" swiper-animate-effect="bounceInDown" swiper-animate-duration="1s" swiper-animate-delay="2s" style="text-align: left;font-size:45px;line-height:200%;height:50%;padding:0 10%;">
                <img src="/images/5.jpg" width="100%" height="100%"/>
            </h2>
            <h2 class="ani" swiper-animate-effect="bounceInRight" swiper-animate-duration="0.5s" swiper-animate-delay="3s" style="text-align:right;">FROM ${from}</h2>
        </div>
        <div class="swiper-slide slide_two">
            <img class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="5s" swiper-animate-delay="0.3s style="width:20%;height:20%;" src="/images/moon.png"/>
            <h3 class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s">
                今天
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
                过1024
            </h3>
            <h3>已有<span style="font-size:70px;">${allParyerNum}</span>个程序猿/媛和你一起过1024！</h3>
        </div>
        <div class="swiper-slide slide_three">
                <img class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="1s" swiper-animate-delay="0.3s" src="/images/4.jpg" width="100%" height="25%"/>
                <img class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="1s" swiper-animate-delay="1s" src="/images/2.jpg" width="100%" height="25%"/>
                <img class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="1s" swiper-animate-delay="2s" src="/images/3.jpg" width="100%" height="25%"/>
                <img class="ani" swiper-animate-effect="fadeInUp" swiper-animate-duration="1s" swiper-animate-delay="3s" src="/images/6.jpg" width="100%" height="25%"/>
        </div>
        <div class="swiper-slide slide_four">
            <h4 class="ani" swiper-animate-effect="bounceInUp" swiper-animate-duration="0.5s" swiper-animate-delay="0.3s" style="color:white;margin-top:17%;">生成招呼</h4>
            <p class="ani" swiper-animate-effect="rollIn" swiper-animate-duration="0.5s" swiper-animate-delay="1s">from:<input id="from_input" maxlength="8" type="text"/></p>
            <p class="ani" swiper-animate-effect="rollIn" swiper-animate-duration="0.5s" swiper-animate-delay="2s">to&nbsp;:<input id="to_input" maxlength="8" type="text"/></p>
            <p class="ani" swiper-animate-effect="bounceInDown" swiper-animate-duration="0.5s" swiper-animate-delay="3s"><button id="copyurl_btn" style="border-radius:10px;color:white;border:2px white solid;background-color:saddlebrown;">点击生成招呼链接</button></p>
            <p class="ani" swiper-animate-effect="bounceInDown" swiper-animate-duration="0.5s" swiper-animate-delay="4s" style="margin-top:20%;margin-bottom:10%;text-align:left;">复制以下链接发送给要招呼的人儿即可：</p>
            <p id="link"></p>
        </div>
    </div>
    <!-- 如果需要分页器 -->
<#--<div class="swiper-pagination"></div>-->

</div>
<script src="/js/swiper.animate1.0.2.min.js"></script>
<script src="/js/swiper-3.4.2.min.js"></script>
<script src="/js/jquery-1.10.1.min.js"></script>
<script>
    var mySwiper = new Swiper ('.swiper-container', {
        direction: 'vertical',
        height:window.innerHeight,
        width:window.innerWidth,
        //loop: true,

        // 如果需要分页器
        //pagination: '.swiper-pagination',

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
        //var $url=window.location.href;
        var getip_url="http://2017.ip138.com/ic.asp";
        var $ip='';
        var $city='';
        var url = 'http://chaxun.1616.net/s.php?type=ip&output=json&callback=?&_='+Math.random();
        $.getJSON(url,function(data){
            $ip=data.Ip;
            $city=data.Isp.split(" ")[0];
            $("#city").html($city);
        });

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
                            $("#link").html("http://119.29.169.103:8084/1024?from="+$from_input+"&to="+$to_input);
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