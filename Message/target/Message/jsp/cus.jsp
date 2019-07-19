<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
 %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html lang="en"><head>
    <meta charset="UTF-8">

    <title>数据浏览</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">



    <link rel="stylesheet" type="text/css" href="<%=basePath%>jsp/css/reset.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>jsp/css/p_DataBrowsing.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>jsp/css/page.css">
    <link rel="stylesheet" href="<%=basePath%>jsp/css/p_header.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>jsp/css/examine.css"/>

  <script type="text/javascript" src="<%=basePath%>js/jquery1.11.3-jquery.min.js"></script>
  <script type="text/javascript" src="<%=basePath%>jsp/js/browsing.js"></script>
  <script type="text/javascript" src="<%=basePath%>jsp/js/linkage4.js"></script>
  <script type="text/javascript" src="<%=basePath%>jsp/js/hover.js"></script>
  <style>
     .screens{
        width:1088px;
        padding:4px 0px;
        margin:0 auto;
        padding-bottom:10px;
        border-bottom:1px solid #ccc;
     }
     .screens:after{
        display:block;
        content:'';
        clear:both;
     }
     .screens .screen_left,.screen .screen_right{
        float:left;
        color:#4F6AA8;
        font-size:14px;
     }
     .screens span{
        display:inline-block;
        padding:0px 0px 0px 8px;
        border:1px solid #ddd;
        cursor:pointer;
        margin-right:8px;
     }
     .screens span i{
        font-style:normal;
        display:inline-block;
        margin-left:5px;
        padding:0 2px;
     }
     .screens span:hover i{
        color:#fff;
     }
     .screens span:hover{
        background:#237AE4;
        color:#fff;
     }
     em{
        font-style:normal;
     }
  </style>
  </head>

  <body>

 <header style="height: 50px;background-color: #c0dafb;">



<div class="logo_right_box">
    <ul class="logo_right_left">
      <li><a class="datebrowsing" href="<%=basePath%>jsp/person_first1.jsp"><span style="padding: 12px; color: #58a0fd">数据浏览</span></a></li>
      <li><a class="chartview" href="<%=basePath%>jsp/customer - chartview.html"><span style="padding: 12px;">图表查看</span></a></li>
      <li><a class="regional" href="<%=basePath%>jsp/customer - reqion.html"><span>地域分布图</span></a></li>
    </ul>
    <ul class="logo_2right">
      <li class="grzx_a"> <a class="gerencenter"><span class="logo_bt" id="logo_mycenter">个人中心</span></a>
        <div id="dropdown_box" style="top: 50px; right: -15px; z-index: 888; display: none;">
          <ul class="dropdown_ul">
            <li class="dropdown_li"><a class="llhistry" href="<%=basePath%>jsp/person_DataBrowsing.html"><span>浏览记录</span></a></li>
            <li class="dropdown_li"><a class="updatebro" href="<%=basePath%>jsp/person_DataBrowsin.html"><span>下载记录</span></a></li>
            <li class="dropdown_li"><a class="pwdup" href="<%=basePath%>jsp/person_updatePassword.html"><span>密码修改</span></a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>

</header><!-- /header -->


    <p class="top_url_box box">
        <span>当前页面 ：</span><a id="sss">数据浏览</a>
    </p>
    <article class="arcbox box">
        <span>污染率 </span>
        <select id="pollution_rate" name="pollution_rate" class="mainSpecies">
            <option value="0-100">0~100%</option>
            <option value="0-20">0~20%</option>
            <option value="20-40">20%~40%</option>
            <option value="40-60">40%~60%</option>
            <option value="60-80">60%~80%</option>
            <option value="80-100">80%~100%</option>
        </select>
    </article>
    <!-- 筛选 -->
    <article class="">
        <div class="screens">
            <div class="screen_left">类别&gt;</div>
            <div class="screen_right">

                    <span><em>苹果</em><i class="delCate">×</i></span>

                    <span><em>猕猴桃</em><i class="delCate">×</i></span>

                    <span><em>梨</em><i class="delCate">×</i></span>

            </div>
        </div>
        <div class="screens">
            <div class="screen_left">年份&gt;</div>
            <div class="screen_right">

                    <span><em>2018</em><i class="delCate">×</i></span>

            </div>
        </div>
        <div class="screens">
            <div class="screen_left">地区&gt;</div>
            <div class="screen_right">

                    <span><em>湖南</em><i class="delCate">×</i></span>

                    <span><em>北京</em><i class="delCate">×</i></span>

                    <span><em>山东</em><i class="delCate">×</i></span>

            </div>
        </div>
        <div class="screens">
            <div class="screen_left">毒素&gt;</div>
            <div class="screen_right">

                    <span><em>黄曲霉毒素M1</em><i class="delCate">×</i></span>

                    <span><em>DON</em><i class="delCate">×</i></span>

                    <span><em>黄曲霉毒素总量</em><i class="delCate">×</i></span>

                    <span><em>伏马菌素</em><i class="delCate">×</i></span>

            </div>
        </div>
    </article>


    <article class="arc0">
        <div class="arc1">
        <span class="yanpbh">样品编号</span>
        <span class="addrr">取样信息</span>
        <span class="nzwclass">农作物种类</span>
        <span class="wrl">污染率</span>
        <span class="qydate">取样时间</span>
        <span class="zyds">主要毒素种类</span>
        <span class="cpjz">产毒菌株信息</span>
        <span class="caozuo">操作</span>
        </div>
    </article>

    <article class="article_box box">

        <input value="1" name="id" id="id" type="hidden">
        <div class="articles_box">

            <div class="seria_num">
                <div class="sample_id">asd123123</div>
            </div>

            <div class="seria_right">
                <div class="articles_box_nr addr sample_info1">
                    <ul>
                        <li><span class="sam_info_value">湖南郴州市临武县</span></li>
                        <li><span>取样人：</span><span class="sam_info_value">123</span></li>
                        <li><span>气候特征：</span><span class="sam_info_value">123</span></li>
                        <li><span>环境描述：</span><span class="sam_info_value">123</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr nzwclass sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">苹果</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr wrl sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">12.00%</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr qydate sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">2018-02-27</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr sample_info2">
                    <ul>

                            <li><span class="sam_info_value">黄曲霉毒素M1:</span><span class="sam_info_value">12.0</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr cpjz sample_info3">



                                <ul>
                                    <li>
                                        <span>原始编号：</span>
                                        <span class="sam_info_value">asd123123-1</span>
                                    </li>

                                    <li>
                                        <span>图片文件：</span><span class="sam_info_value">
                                            <a href="/upload/img/asdadasd.png" target="_blank">asdadasd.png</a>
                                        </span>
                                    </li>
                                    <li><span>文档信息：</span>
                                    <span class="sam_info_value">
                                        <a href="/glory/rest/lookword?url=123123123.docx" target="_blank">123123123.docx</a>
                                    </span>
                                    </li>
                                    <li><span>TXT文本信息：</span>
                                    <span class="sam_info_value">
                                        <a href="/glory/rest/lookword?url=qwasdads.txt" target="_blank">qwasdads.txt</a>
                                    </span>
                                    </li>
                                </ul>





                </div>
                <div class="articles_box_nr caozuo sample_info4">
                    <ul>
                        <li class="downline">
                        <a href="/glory/rest/downlineZIP?id=" +1"="">下载</a>
                        </li>
                        <li class="showbox">展开 <div style="display: none">1</div><span id="showa"></span></li>
                        <li class="hidebox">收起 <span id="hidea"></span></li>                    </ul>
                </div>
            </div>
        </div>

        <input value="2" name="id" id="id" type="hidden">
        <div class="articles_box">

            <div class="seria_num">
                <div class="sample_id">asd123123</div>
            </div>

            <div class="seria_right">
                <div class="articles_box_nr addr sample_info1">
                    <ul>
                        <li><span class="sam_info_value">北京北京市昌平区</span></li>
                        <li><span>取样人：</span><span class="sam_info_value">rwe</span></li>
                        <li><span>气候特征：</span><span class="sam_info_value">343edsrf</span></li>
                        <li><span>环境描述：</span><span class="sam_info_value">dsfdfsdfssf</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr nzwclass sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">苹果</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr wrl sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">20.00%</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr qydate sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">2017-02-02</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr sample_info2">
                    <ul>

                            <li><span class="sam_info_value">DON:</span><span class="sam_info_value">15.0</span></li>

                            <li><span class="sam_info_value">黄曲霉毒素总量:</span><span class="sam_info_value">30.0</span></li>

                            <li><span class="sam_info_value">DON:</span><span class="sam_info_value">33.5</span></li>

                            <li><span class="sam_info_value">DON:</span><span class="sam_info_value"></span></li>

                    </ul>
                </div>
                <div class="articles_box_nr cpjz sample_info3">



                                <ul>
                                    <li>
                                        <span>原始编号：</span>
                                        <span class="sam_info_value">asd123123-01</span>
                                    </li>

                                    <li>
                                        <span>图片文件：</span><span class="sam_info_value">
                                            <a href="" target="_blank"></a>
                                        </span>
                                    </li>
                                    <li><span>文档信息：</span>
                                    <span class="sam_info_value">
                                        <a href="/glory/rest/lookword?url=" target="_blank"></a>
                                    </span>
                                    </li>
                                    <li><span>TXT文本信息：</span>
                                    <span class="sam_info_value">
                                        <a href="/glory/rest/lookword?url=" target="_blank"></a>
                                    </span>
                                    </li>
                                </ul>





                </div>
                <div class="articles_box_nr caozuo sample_info4">
                    <ul>
                        <li class="downline">
                        <a href="/glory/rest/downlineZIP?id=" +2"="">下载</a>
                        </li>
                        <li class="showbox">展开 <div style="display: none">2</div><span id="showa"></span></li>
                        <li class="hidebox">收起 <span id="hidea"></span></li>                    </ul>
                </div>
            </div>
        </div>

        <input value="3" name="id" id="id" type="hidden">
        <div class="articles_box">

            <div class="seria_num">
                <div class="sample_id">dsfdddfs</div>
            </div>

            <div class="seria_right">
                <div class="articles_box_nr addr sample_info1">
                    <ul>
                        <li><span class="sam_info_value">北京北京市东城区</span></li>
                        <li><span>取样人：</span><span class="sam_info_value">dsffdd</span></li>
                        <li><span>气候特征：</span><span class="sam_info_value">dsfsdfds</span></li>
                        <li><span>环境描述：</span><span class="sam_info_value">dsfsfd</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr nzwclass sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">苹果</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr wrl sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">36.00%</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr qydate sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">2018-03-02</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr sample_info2">
                    <ul>

                            <li><span class="sam_info_value">DON:</span><span class="sam_info_value">20.0</span></li>

                            <li><span class="sam_info_value">黄曲霉毒素总量:</span><span class="sam_info_value">30.0</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr cpjz sample_info3">



                            <span class="sam_info_value"></span>



                </div>
                <div class="articles_box_nr caozuo sample_info4">
                    <ul>
                        <li class="downline">
                        <a href="/glory/rest/downlineZIP?id=" +3"="">下载</a>
                        </li>
                        <li class="showbox">展开 <div style="display: none">3</div><span id="showa"></span></li>
                        <li class="hidebox">收起 <span id="hidea"></span></li>                    </ul>
                </div>
            </div>
        </div>

        <input value="5" name="id" id="id" type="hidden">
        <div class="articles_box">

            <div class="seria_num">
                <div class="sample_id">A-123456</div>
            </div>

            <div class="seria_right">
                <div class="articles_box_nr addr sample_info1">
                    <ul>
                        <li><span class="sam_info_value">北京北京市西城区</span></li>
                        <li><span>取样人：</span><span class="sam_info_value">大大</span></li>
                        <li><span>气候特征：</span><span class="sam_info_value">就</span></li>
                        <li><span>环境描述：</span><span class="sam_info_value">而是</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr nzwclass sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">猕猴桃</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr wrl sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">22.00%</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr qydate sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">2018-03-06</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr sample_info2">
                    <ul>

                            <li><span class="sam_info_value">伏马菌素:</span><span class="sam_info_value">23.0</span></li>

                            <li><span class="sam_info_value">DON:</span><span class="sam_info_value">2.0</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr cpjz sample_info3">



                                <ul>
                                    <li>
                                        <span>原始编号：</span>
                                        <span class="sam_info_value">A-123456-001</span>
                                    </li>

                                    <li>
                                        <span>图片文件：</span><span class="sam_info_value">
                                            <a href="/upload/txt/20180307172217349.txt" target="_blank">20180307172217349.txt</a>
                                        </span>
                                    </li>
                                    <li><span>文档信息：</span>
                                    <span class="sam_info_value">
                                        <a href="/glory/rest/lookword?url=" target="_blank"></a>
                                    </span>
                                    </li>
                                    <li><span>TXT文本信息：</span>
                                    <span class="sam_info_value">
                                        <a href="/glory/rest/lookword?url=" target="_blank"></a>
                                    </span>
                                    </li>
                                </ul>





                </div>
                <div class="articles_box_nr caozuo sample_info4">
                    <ul>
                        <li class="downline">
                        <a href="/glory/rest/downlineZIP?id=" +5"="">下载</a>
                        </li>
                        <li class="showbox">展开 <div style="display: none">5</div><span id="showa"></span></li>
                        <li class="hidebox">收起 <span id="hidea"></span></li>                    </ul>
                </div>
            </div>
        </div>

        <input value="7" name="id" id="id" type="hidden">
        <div class="articles_box">

            <div class="seria_num">
                <div class="sample_id">w1221212</div>
            </div>

            <div class="seria_right">
                <div class="articles_box_nr addr sample_info1">
                    <ul>
                        <li><span class="sam_info_value">山东聊城市冠　县</span></li>
                        <li><span>取样人：</span><span class="sam_info_value">1</span></li>
                        <li><span>气候特征：</span><span class="sam_info_value">w</span></li>
                        <li><span>环境描述：</span><span class="sam_info_value">w</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr nzwclass sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">梨</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr wrl sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">2.00%</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr qydate sample_info1">
                    <ul>
                        <li><span></span><span class="sam_info_value">2018-03-07</span></li>
                    </ul>
                </div>
                <div class="articles_box_nr sample_info2">
                    <ul>

                            <li><span class="sam_info_value">黄曲霉毒素总量:</span><span class="sam_info_value">11.0</span></li>

                    </ul>
                </div>
                <div class="articles_box_nr cpjz sample_info3">



                            <span class="sam_info_value"></span>



                </div>
                <div class="articles_box_nr caozuo sample_info4">
                    <ul>
                        <li class="downline">
                        <a href="/glory/rest/downlineZIP?id=" +7"="">下载</a>
                        </li>
                        <li class="showbox">展开 <div style="display: none">7</div><span id="showa"></span></li>
                        <li class="hidebox">收起 <span id="hidea"></span></li>                    </ul>
                </div>
            </div>
        </div>

         <div class="page">






<!-- <link rel="stylesheet" type="text/css" href="../css/style.css"> -->
<link type="text/css" rel="stylesheet" href="/glory/static/css/paging.css">
<style type="text/css">
.color a {
    padding: 5px;
    color: #4c4743;
    /* font-size: 20px; */
}

.color a:hover {
    color: #ed6c44;
}

/* .color2 {
    float: right;
    color: #4c4743;
    font-size: 20px;
    border: 1px black hidden;
} */

.color {
    float: right;
    border: 1px black hidden;
    width: 1366px;
    text-align: center;
}

#checkOne {
    color: #000;
    font-size: 20px;
}
#checkOnediv{
    color: #ed6c44;

}

/* #h1 {
    color: #4c4743;
} */
</style>




    <div class="im-page">
  <ul>
    <li class="im-indexpage"><a href="">首页</a></li>
    <li class="im-nextpage"><a href="">上一页</a></li>
    <li class="im-pagenum"><a href="">1</a></li>
    <li class="im-pagenum"><a href="">2</a></li>
    <li class="im-pagenum"><a href="">3</a></li>
    <li class="im-pagenum"><a href="">4</a></li>
    <li class="im-pagenum"><a href="">5</a></li>
    <li class="im-nextpage"><a href="">下一页</a></li>
    <li class="im-indexpage"><a href="">尾页</a></li>
  </ul>
</div>

    </div>



    </article>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/IM-index.css"/>

<script type="text/javascript">
$(".delCate").click(function(){
    var texts = $(this).parent("span").find("em").text();
    alert(texts);
    $(this).parent("span").remove();
    window.location.href="/glory/rest/findnewmessage?text="+texts;

})
$("#pollution_rate").change(function(){
    var sss = $(this).val();
    window.location.href="/glory/rest/findnewmessage?text="+sss;
})
</script>


</body></html>