<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>我的订单</title>
    <meta name="keywords" content="KEYWORDS..." />
    <meta name="description" content="DESCRIPTION..." />
    <meta name="author" content="DeathGhost" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name='apple-touch-fullscreen' content='yes'>
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <link rel="icon" href="/images/icon/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="/images/icon/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="120x120" href="/images/icon/apple-touch-icon-120x120-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="196x196" href="/images/icon/apple-touch-icon-196x196-precomposed.png">
    <meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="/wechat_css/reset.css">
    <link rel="stylesheet" type="text/css" href="/wechat_css/style.css" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link rel="stylesheet" type="text/css" href="/wechat_css/swiper3.07.min.css" />
    <style>
        .tab {top: 0;}
        .my-order-iphone1 {margin-top: 4%;}
        .addclasstruenav{color: #3acd17;}

    </style>
</head>

<body class="padd_40">

<div class="swiper-container" style="margin-top: -40px;" >

    <div class="swiper-wrapper w">
        <div class="swiper-slide d">
            <div class="init-loading list-group-item text-center" style="display: none;">下拉可以刷新</div>
            <div class="swiper-container2">
                <div class="swiper-wrapper">
                    <div class="swiper-slide list-group">
                        <ul>
						<#list orderList as order>
                            <li class="bor-bottom5-f1 bg-fff padb03">
                                <div class="order-details-header">
                                    <div class="order-det-logo fl"><img src="/image/fuwu (2).png"></div>
                                    <div class="order-det-time fl">
                                        <h4>${order.companyName}</h4>
                                        <p>${order.publishTimeStr}</p>
                                    </div>
                                    <div class="my-order-iphone1 fr f032 text-right toggleright">
										<#switch order.orderStatus>
											<#case 90>
                                                <h4 class="f029">被商家取消</h4>
												<#break >
											<#case 70>
                                                <h4 class="f029">已完成</h4>
												<#break >
											<#case 60>
                                                <h4 class="f029">待评价</h4>
												<#break >
											<#case 20>
                                                <h4 class="f029">待支付</h4>
												<#break >
											<#case 40>
                                                <h4 class="f029">待取餐</h4>
												<#break >
											<#case 50>
                                                <h4 class="f029">配送中</h4>
												<#break >
											<#case 80>
                                                <h4 class="f029">取消</h4>
												<#break >
											<#case 10>
                                                <h4 class="f029">新建</h4>
												<#break >
											<#case 30>
                                                <h4 class="f029">准备中</h4>
												<#break >
											<#case 100>
                                                <h4 class="f029">待接单</h4>
												<#break >
											<#case 110>
                                                <h4 class="f029">待配送</h4>
												<#break >
											<#default>
										</#switch>
                                        <p>￥${order.totalPrice}</p>
                                    </div>
                                    <div class="fr toggleButton"><img src="/image/xial_03.png"/></div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="commodity-name f032 toggleCon">
                                    <ul>
                                        <li>
											<#list order.dishesVos as dish>
                                                <span>${dish.dishesName}<em>×</em>${dish.count}</span>
											</#list>
                                        </li>
                                        <div class="clearfix"></div>
                                    </ul>
                                </div>
                                <div class="bg-fff pay-button-myorder">
									<#switch order.orderStatus>
										<#case 90>
										<#case 70>
                                            <button class="bg26c400" >再来一单</button>
											<#break >
										<#case 60>
                                            <button class="bgf58d05">评价</button>
                                            <button class="bg26c400" >再来一单</button>
											<#break >
										<#case 20>
                                            <button class="bg26c400" >去付款</button>
											<#break >
										<#case 40>
										<#case 50>
                                            <button class="bg26c400" >确认取餐</button>
											<#break >
										<#case 80>
										<#case 10>
										<#case 30>
										<#case 100>
										<#case 110>
											<#break >
										<#default>
									</#switch>
                                </div>
                            </li>
						</#list>
                        </ul>
                    </div>
                    <div class="swiper-slide list-group">
                        <ul>

                        </ul>
                    </div>
                    <div class="swiper-slide list-group">
                        <ul>

                        </ul>
                    </div>
                    <div class="swiper-slide list-group">
                        <ul>

                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="swiper-scrollbar"></div>
</div>
<div style="height:1.2rem;"></div>
<nav>
    <a href="index.html" class="homeIcon "><img src="/image/index1.png">点餐</a>
    <a href="orders.ftl" class="categoryIcon addclasstruenav"><img src="/image/index2-1.png">订单</a>
    <a href="service.html" class="cartIcon numberCount"><img src="/image/index3.png">服务</a>
    <a href="about-us.html" class="userIcon"><img src="/image/index4.png">我的</a>
</nav>
<script src="/wechat_js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="/wechat_js/swiper.jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".toggleButton").click(function(){
            $(".toggleCon").toggle(1000);
        });
    });
</script>




<script type="text/javascript">
    var loadFlag = true;
    var oi = 0;
    var mySwiper = new Swiper('.swiper-container', {
        direction: 'vertical',
        scrollbar: '.swiper-scrollbar',
        slidesPerView: 'auto',
        mousewheelControl: true,
        freeMode: true,
        onTouchMove: function(swiper) { //手动滑动中触发
            var _viewHeight = document.getElementsByClassName('swiper-wrapper')[0].offsetHeight;
            var _contentHeight = document.getElementsByClassName('swiper-slide')[0].offsetHeight;

            if(mySwiper.translate < 50 && mySwiper.translate > 0) {
                $(".init-loading").html('下拉刷新...').show();
            } else if(mySwiper.translate > 50) {
                $(".init-loading").html('释放刷新...').show();
            }
        },
        onTouchEnd: function(swiper) {
            var _viewHeight = document.getElementsByClassName('swiper-wrapper')[0].offsetHeight;
            var _contentHeight = document.getElementsByClassName('swiper-slide')[0].offsetHeight;
            // 上拉加载
            if(mySwiper.translate <= _viewHeight - _contentHeight - 50 && mySwiper.translate < 0) {
                // console.log("已经到达底部！");

                if(loadFlag) {
                    $(".loadtip").html('正在加载...');
                } else {
                    $(".loadtip").html('没有更多啦！');
                }

                setTimeout(function() {
                    for(var i = 0; i < 5; i++) {
                        oi++;
                        $(".list-group").eq(mySwiper2.activeIndex).append('<li class="list-group-item">我是加载出来的' + oi + '...</li>');
                    }
                    $(".loadtip").html('上拉加载更多...');
                    mySwiper.update(); // 重新计算高度;
                }, 800);
            }

            // 下拉刷新
            if(mySwiper.translate >= 50) {
                $(".init-loading").html('正在刷新...').show();
                $(".loadtip").html('上拉加载更多');
                loadFlag = true;

                setTimeout(function() {
                    $(".refreshtip").show(0);
                    $(".init-loading").html('刷新成功！');
                    setTimeout(function() {
                        $(".init-loading").html('').hide();
                    }, 800);
                    $(".loadtip").show(0);

                    //刷新操作
                    mySwiper.update(); // 重新计算高度;
                }, 1000);
            } else if(mySwiper.translate >= 0 && mySwiper.translate < 50) {
                $(".init-loading").html('').hide();
            }
            return false;
        }
    });
    var mySwiper2 = new Swiper('.swiper-container2', {
        onTransitionEnd: function(swiper) {

            $('.w').css('transform', 'translate3d(0px, 0px, 0px)')
            $('.swiper-container2 .swiper-slide-active').css('height', 'auto').siblings('.swiper-slide').css('height', '0px');
            mySwiper.update();

            $('.tab a').eq(mySwiper2.activeIndex).addClass('active').siblings('a').removeClass('active');
        }

    });
    $('.tab a').click(function() {

        $(this).addClass('active').siblings('a').removeClass('active');
        mySwiper2.slideTo($(this).index(), 500, false)

        $('.w').css('transform', 'translate3d(0px, 0px, 0px)')
        $('.swiper-container2 .swiper-slide-active').css('height', 'auto').siblings('.swiper-slide').css('height', '0px');
        mySwiper.update();
    });
</script>
</body>

</html>