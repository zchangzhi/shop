<%@page language="java" contentType="text/html; character=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>首页</title>
    <link type="text/css" rel="stylesheet" href="${ctx}/resource/user/css/style.css">
    <link rel="stylesheet" href="${ctx}/resource/css/layui.css">
    <script src="${ctx}/resource/user/js/jquery-1.8.3.min.js"></script>
    <script src="${ctx}/resource/user/js/jquery.luara.0.0.1.min.js"></script>
</head>
<body>
    <%@include file="/common/utop.jsp"%>
<!--导航条-->
    <div class="" style="margin-left: 180px;width: 1200px">
<div class="width100" style="height: 45px;background: #d3d3d3;margin-top: 30px;position: relative;z-index: 100;">
    <!--中间的部分-->
    <div class="width100 center_yh relative_yh" style="height: 45px;">
        <!--列表导航-->
        <div class="left_yh Selected" style="width: 230px;height: 45px;background: #696969;" id="hiddenShow">
            <!--头部的图标-->
            <img src="${ctx}/resource/user/images/cd.png" class="left_yh" style="margin-left: 24px;" alt="">
            <span class="block_yh left_yh fff" style="height: 45px;line-height: 44px;margin-left: 10px;">分类</span>
            <!--导航展开部分-->
                <div class="downSlide" style="background: #708090;">
                    <c:forEach items="${lbs}" var="data" varStatus="l">
                        <div class="n1Nav">
                            <font>${data.father.name}</font>
                            <img src="${ctx}/resource/user/images/jt.png" alt="">
                            <div class="n2Nav">
                                <div class="n3Nav">
                                    <h3>${data.father.name}</h3>
                                    <c:forEach items="${data.childrens}" var="child" varStatus="ll">
                                        <a href="${ctx}/item/shoplist?categoryIdTwo=${child.id}">${child.name}</a>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
        </div>
        <!--普通导航-->
        <div class="left_yh font16" id="pageNav">
            <a href="${ctx}/login/uIndex">首页</a>
            <a href="${ctx}/news/list">公告</a>
            <a href="${ctx}/message/add">留言</a>
        </div>
    </div>
</div>
<!--轮动广告-->

<div class="" style="height: 490px;width: 1000px;">
        <div class="layui-carousel" id="test1" style="margin-left: 230px">
            <div carousel-item>
                <div> <img src="${ctx}/resource/images/Snipaste_2021-11-08_21-31-22.png" style="min-width: 1000px;max-height: 490px;"></div>
                <div> <img src="${ctx}/resource/images/17ce9a3d9eac3f41.jpg!q95.webp" style="min-width: 1000px;max-height: 490px;"></div>
                <div><img src="${ctx}/resource/images/5ce03c23Nf867d31e.jpg!q80.webp" style="min-width: 1000px;max-height: 490px;"></div>
                <div><img src="${ctx}/resource/images/16pic_5224622_b.jpg" style="min-width: 1000px;max-height: 490px;"></div>
                <div><img src="${ctx}/resource/images/Snipaste_2021-11-18_14-55-46.png" style="min-width: 1000px;max-height: 490px;"></div>
            </div>
        </div>
</div>
    </div>
    <script src="${ctx}/resource/js/layui.js"></script>
    <script>
        layui.use('carousel', function(){
            var carousel = layui.carousel;
            //建造实例
            carousel.render({
                elem: '#test1'
                ,width: '97%' //设置容器宽度

                ,height: '100%'
                // ,arrow: 'always' //始终显示箭头
                //,anim: 'updown' //切换动画方式
            });
        });

    </script>
<!--折扣商品-->
<div class="width1200 center_yh hidden_yh">
    <div class="width100" style="height: 45px;line-height: 45px;border-bottom: 2px solid #f5f5f5; margin-top: 20px;">
        <font class="left_yh font20">折扣大促销</font>
    </div>
    <div class="width100 hidden_yh" style="height: 960px;">
        <div class="normalPic">
            <c:forEach items="${zks}" var="data" varStatus="l">
                <a href="${ctx}/item/view?id=${data.id}">
                    <h3 class="yihang c_33 font14 font100" style="padding-left: 10px;padding-right: 10px;">${data.name}</h3>
                    <p class="red font14" style="padding-left: 10px;">${data.price}</p>
                    <img src="${data.url1}" width="105" height="118" alt="" style="margin:0 auto">
                </a>
            </c:forEach>
        </div>
    </div>
</div>

<!--热门商品-->
<div class="width1200 center_yh hidden_yh">
    <div class="width100" style="height: 45px;line-height: 45px;border-bottom: 2px solid #dd4545; margin-top: 20px;">
        <font class="left_yh font20">热门商品</font>
    </div>
    <div class="width100 hidden_yh" style="height: 720px;">
        <div class="normalPic">
            <c:forEach items="${rxs}" var="data" varStatus="l">
                <a href="${ctx}/item/view?id=${data.id}">
                    <h3 class="yihang c_33 font14 font100" style="padding-left: 10px;padding-right: 10px;">${data.name}</h3>
                    <p class="red font14" style="padding-left: 10px;">${data.price}</p>
                    <img src="${data.url1}" width="105" height="118" alt="" style="margin:0 auto">
                </a>
            </c:forEach>
        </div>
    </div>
</div>
    <%@include file="/common/ufooter.jsp"%>
</body>
</html>



















