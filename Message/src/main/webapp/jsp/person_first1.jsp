<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/reset.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/person_frist.css" />
<link rel="stylesheet" href="<%=basePath%>css/p_header.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>js/browsing.js"></script>
</head>
<body>
	<header style="height: 50px; background-color: #c0dafb;">
		<div class="logo_right_box">
			<ul class="logo_right_left">
				<li><a class="datebrowsing" href="<%=basePath%>jsp/person_first1.jsp">
					<span style="padding: 12px; color: #58a0fd">数据浏览</span></a></li>
				<li><a class="chartview" href="<%=basePath%>jsp/customer - chartview.jsp">
					<span style="padding: 12px;">图表查看</span></a></li>
				<li><a class="regional" href="<%=basePath%>jsp/customer - reqion.jsp">
					<span>地域分布图</span>	</a></li>
			</ul>
			<ul class="logo_2right">
				<li class="grzx_a"><a class="gerencenter"><span
						class="logo_bt" id="logo_mycenter">个人中心</span></a>
					<div id="dropdown_box"
						style="top: 50px; right: -15px; z-index: 888; display: none;">
						<ul class="dropdown_ul">
							<li class="dropdown_li"><a class="llhistry"
								href="<%=basePath%>jsp/person_DataBrowsing.jsp"><span>浏览记录</span></a></li>
							<li class="dropdown_li"><a class="updatebro"
								href="<%=basePath%>jsp/person_DataBrowsin.jsp"><span>下载记录</span></a></li>
							<li class="dropdown_li"><a class="pwdup"
								href="<%=basePath%>jsp/person_updatePassword.jsp"><span>密码修改</span></a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</header>
	<div class="food_class">
		<ul class="food_item">
			<li class="food_item_list">
			<a style="text-decoration: none; display: block;"
				href="<%=basePath%>jsp/person_first2.jsp">水果类 </a></li>
			<li class="food_item_list">
			<a style="text-decoration: none; display: block;"
				href="<%=basePath%>jsp/person_first2.jsp">谷物类 </a></li>
			<li class="food_item_list">
			<a style="text-decoration: none; display: block;"
				href="<%=basePath%>jsp/person_first2.jsp">坚果类 </a></li>
			<li class="food_item_list">
			<a style="text-decoration: none; display: block;"
				href="<%=basePath%>jsp/person_first2.jsp">香辛类 </a></li>
			<li class="food_item_list">
			<a style="text-decoration: none; display: block;"
				href="<%=basePath%>jsp/person_first2.jsp">饲料类 </a></li>
			<li class="food_item_list yi">
			<a style="text-decoration: none; display: block;"
				href="<%=basePath%>jsp/person_first2.jsp" >饲料类 </a></li>
			
		</ul>
	</div>
</body>
<script type="text/javascript">
$(function() {
	$('.yi a').removeAttr('href');//去掉a标签中的href属性
	$('.yi a').removeAttr('onclick');//去掉a标签中的onclick事件
});
</script>
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script>
	$('.food_item').click(function(e) {
		if (e.target.nodeName === "LI") {
			$(e.target).addClass('active').siblings().removeClass('active');
			window.location.href = 'index.jsp';
		}
	})
</script>
<script type="text/javascript" src="<%=basePath%>js/jquery-2.1.0.js"></script>
<script>
	$(function() {
		$('.food_item').click(
				function(e) {
					if (e.target.nodeName === "LI") {
						$(e.target).addClass('active').siblings().removeClass(
								'active');
					}
				})
	});

	function shousuo(id) {
		//alert(id);
		location.href = "searchByCategory?id=" + id;
	}
</script>
</html>