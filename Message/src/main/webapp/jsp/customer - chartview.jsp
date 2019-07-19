<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
 %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>数据浏览</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>jsp/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="<%=basePath%>jsp/css/person_frist.css"/>
<link rel="stylesheet" href="<%=basePath%>jsp/css/p_header.css" />
<script type="text/javascript" src="<%=basePath%>jsp/js/jquery.js" ></script>
<script type="text/javascript" src="<%=basePath%>jsp/js/browsing.js" ></script>
</head>
<body>
<header style="height: 50px;background-color: #c0dafb;">
  
  <div class="logo_right_box">
    <ul class="logo_right_left">
      <li><a class="datebrowsing" href="<%=basePath%>jsp/person_first1.jsp"><span style="padding: 12px;">数据浏览</span></a></li>
      <li><a class="chartview" href="<%=basePath%>jsp/customer - chartview.jsp"><span style="padding: 12px; color: #58a0fd">图表查看</span></a></li>
      <li><a class="regional" href="<%=basePath%>jsp/customer - reqion.jsp"><span>地域分布图</span></a></li>
    </ul>
    <ul class="logo_2right">
      <li class="grzx_a"> <a class="gerencenter"><span class="logo_bt" id="logo_mycenter">个人中心</span></a>
        <div id="dropdown_box" style="top: 50px; right: -15px; z-index: 888; display: none;">
          <ul class="dropdown_ul">
            <li class="dropdown_li"><a class="llhistry" href="<%=basePath%>jsp/person_DataBrowsing.jsp"><span>浏览记录</span></a></li>
            <li class="dropdown_li"><a class="updatebro" href="<%=basePath%>jsp/person_DataBrowsin.jsp"><span>下载记录</span></a></li>
            <li class="dropdown_li"><a class="pwdup" href="<%=basePath%>jsp/person_updatePassword.jsp"><span>密码修改</span></a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
</header>
	
<iframe src="<%=basePath%>jsp/person_chartView.jsp" id="mainiframe" width="100%" height="100%"  frameborder="no" border="0" scrolling="no"></iframe>
</body>
</html>
