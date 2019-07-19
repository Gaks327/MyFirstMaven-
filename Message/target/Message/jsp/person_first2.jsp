<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
 %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<style>
body {
	background-color: #f4f9ff;
}
* {
	margin: 0;
	padding: 0;
}
ul {
	list-style-type: none;
}
.info_food {
	width: 1100px;
	margin: 0 auto;
	margin-top: 53px;
}
.info_food .info_item {
	font-size: 18px;
	font-family: '宋体';
}
.info_food .info_item .info_item_list {
	height: 60px;
}
.info_food .info_item .info_item_list:nth-child(odd) {
	background: #237ae4;
	color: #fff;
}
.info_food .info_item .info_item_list:nth-child(even) {
	background: #e4e9ee;
}
.info_food .info_item .info_item_list .info_name {
	width: 144px;
	/* margin-right: 100px; */
	line-height: 60px;
	display: inline-block;
	text-align: center;
	float: left;
}
.info_food .info_item .wu .info_name {
	/*margin-right: 85px;*/
	display: inline-block;
}
.info_food .info_item .info_item_list ul {
	display: inline-block;
	width: 956px;
}
.info_food .info_item .info_item_list li {
	float: left;
}
.info_food .info_item .info_item_list li input[type =checkbox] {
	width: 16px;
	height: 16px;
	vertical-align: -2px;
	margin-right: 5px;
}
.info_food .info_item .info_item_list ul li label {
	margin-right: 10px;
}
.btn {
	width: 1100px;
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
}
.btn .back {
	display: inline-block;
	width: 100px;
	margin-right: 100px;
	height: 40px;
	line-height: 40px;
	text-decoration: none;
	background: #237ae4;
	border-radius: 3px;
	color: #fff;
}
.btn .search {
	display: inline-block;
	width: 100px;
	/* margin-right: 100px; */
	height: 40px;
	line-height: 40px;
	text-decoration: none;
	background: #237ae4;
	border: none;
	border-radius: 3px;
	color: #fff;
}
.yi ul {
	height: 60px;
	line-height: 60px;
}
.er ul {
	height: 60px;
	line-height: 60px;
}
.san ul {
	height: 60px;
	line-height: 60px;
}
.si ul {
	height: 60px;
}
.wu ul {
	height: 60px;
	line-height: 60px;
	font-family: '微软雅黑';
}
.wu li span {
	margin-right: 10px;
}
</style>
</head>
<body>
<div class = "info_food">
<body>
<div class = "info_food">
  <form action="searchByData">
   <input type="hidden" name="plid"/>
    <div class = "info_item">
      <div class="info_item_list yi active">
        <label class="info_name">类别</label>
        <ul>
          <li>
            <input type="checkbox" name="crop_species" id="crop_species" value="${s.id }" />
            <label for="shuidao" >苹果</label>

          </li>


        </ul>
      </div>
      <div class="info_item_list er">
        <label class="info_name">年份</label>
        <ul>
          <li>
            <input type="checkbox" name="input_time" id="y2013" >
            <label for="y2013">

              2018 </label>
          </li>



        </ul>
      </div>
      <div class="info_item_list san">
        <label class="info_name">地区</label>
        <ul>

            <li>
              <input type="checkbox" name="province" id="liaoning" value="" />
              <label for="liaoning">河南</label>
            </li>
            <li>
              <input type="checkbox" name="province" id="liaoning" value="" />
              <label for="liaoning">天津</label>
            </li>
            <li>
              <input type="checkbox" name="province" id="liaoning" value="" />
              <label for="liaoning">安徽</label>
            </li>


         </ul>
      </div>
      <div class="info_item_list si">
        <label class="info_name">毒素</label>
        <div class="sids">
          <ul style="margin-top:20px; ">

              <li>
                <input type="checkbox" name="toxin_type" id="liaoning"/>
                <label for="don">伏马菌素</label>
              </li>
              <li>
                <input type="checkbox" name="toxin_type" id="liaoning"/>
                <label for="don">黄曲霉毒素G1</label>
              </li>
              <li>
                <input type="checkbox" name="toxin_type" id="liaoning"/>
                <label for="don">DON</label>
              </li>
              <li>
                <input type="checkbox" name="toxin_type" id="liaoning"/>
                <label for="don">玉米赤霉烯酮</label>
              </li>
               <li>
                <input type="checkbox" name="toxin_type" id="liaoning"/>
                <label for="don">黄曲霉毒素总量</label>
              </li>
               <li>
                <input type="checkbox" name="toxin_type" id="liaoning"/>
                <label for="don">黄曲霉毒素B2</label>
              </li>
               <li>
                <input type="checkbox" name="toxin_type" id="liaoning"/>
                <label for="don">黄曲霉毒素B1</label>
              </li>

          </ul>
        </div>
      </div>
      <div class="info_item_list wu">
        <label class="info_name">污染率</label>
        <ul>
          <li>
            <input type="radio" name="pollution_rate" id="" value="0-100" />
            <span>0~100%</span> </li>
          <li>
            <input type="radio" name="pollution_rate" id="" value="0-20" />
            <span>0%~20%</span> </li>
          <li>
            <input type="radio" name="pollution_rate" id="" value="20-40" />
            <span>20%~40%</span> </li>
          <li>
            <input type="radio" name="pollution_rate" id="" value="40-60" />
            <span>40%~60%</span> </li>
          <li>
            <input type="radio" name="pollution_rate" id="" value="60-80" />
            <span>60%~80%</span> </li>
          <li>
            <input type="radio" name="pollution_rate" id="" value="80-100" />
            <span>80%~100%</span> </li>
        </ul>
      </div>
    </div>
    <div class="btn"> <a href="<%=basePath%>jsp/person_first1.jsp" class="back">上一页</a>
      <input class="search" value="搜索" type="input" onclick="window.location='<%=basePath%>jsp/cus.jsp'" />
    </div>
  </form>
</div>
jsp
<style type="text/css">
  .search{text-align:center;font-size:16px;}
</style>
</body>
</html>
