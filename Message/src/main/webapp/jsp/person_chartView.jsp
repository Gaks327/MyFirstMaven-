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
<title>图表查看</title>

<link rel="stylesheet" href="<%=basePath%>css/p_chartView.css" />
<link rel="stylesheet" href="<%=basePath%>css/p_regionalDistribution.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/reset.css" />

</head>
<script type="text/javascript" src="<%=basePath%>js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath%>js/echarts.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/person_aa.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/hover.js" ></script>

<body>

	<!-- 内容顶部路由页显示  -->
	<p class="top_url_box box">
		<span>当前页面 ：</span><a>图表查看</a>
	</p>
	<article class="arcbox box">
		<form action="" method="post">
			<span class="nzw_zl">农作物大类别 </span> 
			<select id="allcan" name="nzw_spacies" class="nzw_spacies"><option value="0">--请选择--</option><option value="1">水果类</option><option value="2">谷物类</option><option value="3">油料类</option><option value="4">坚果类</option><option value="5">香辛类</option><option value="6">饲料类</option></select> 
			<span class="nzw_zl">农作物种类 </span> 
			<select id="nzw_spacies" name="nzw_spacies" class="nzw_spacies">
				<option>--请选择--</option>
			</select> 
			
			
			<!-- 省市县下拉框 -->
			<span>地区</span>
			<span class="region">
			<select id="shen" name="province" class="province" onchange="changeShen(this.value,'shen','shi','xian')">
				<option selected="" value="请选择">请选择</option>
			</select>
			<!-- 时间下拉框 -->
			<span>年份 </span>
			<span class="data_ymd">
			<select id="year" name="year" class="year" onchange="changeYear()">
				<option selected="" value="请选择">请选择</option>
			</select>
			
			<span>污染率 </span> 
			<select id="pollutionRate" name="pollutionRate" class="pollutionRate">
				<option value="0-20">0~20%</option>
				<option value="21-40">21~40%</option>
				<option value="41-60">41~60%</option>
				<option value="61-80">61~80%</option>
				<option value="81-100">81~100%</option>
				<option value="0-100">0~100%</option>
			</select>
			<input class="search" type="button" value="搜索" id="find">
		
	</span></span></form></article>
	<article class="echartmap">
		
		<div id="main" class="echart_map" _echarts_instance_="ec_1521172575568" style="-webkit-tap-highlight-color: transparent; user-select: none;"><div style="position: relative; overflow: hidden; width: 940px; height: 695px; padding: 0px; margin: 0px; border-width: 0px; cursor: default;"></div></div>
		<script type="text/javascript" src="/glory/static/js/linkage3_.js"></script>
		<script type="text/javascript">
			var myChart = echarts.init(document.getElementById('main'));
				var arr=null;
				var arry=null;
			$(function(){
				var option={
						legend:{data:[]},
						tooltip:{trigger:'axis'},
						itemStyle:{
									normal:{
											color:function(params){
												var colorList = ['#EFE42A','#64BD3D','#EE9201','#29AAE3', '#B74AE5','#0AAF9F','#E89589','#Edd201','#29ccE3','#B7aaE5','#0fde9F','#444666'];
												return colorList[params.dataIndex];
											}, 
											label:{show:false} 
									} 
						},
						yAxis: {},
						xAxis: {data : [''],axisLabel:{interval: 0}},
						series: []
				};
				
					
			
					option = {
						title : {
							text: '毒素含量统计图',

						},
						tooltip : {
							trigger: 'axis'
						},
						legend: {
							data:['毒素含量']
						},
						toolbox: {
							show : true,
							feature : {
								mark : {show: true},
								dataView : {show: true, readOnly: false},
								magicType : {show: true, type: ['line', 'bar']},
								restore : {show: true},
								saveAsImage : {show: true}
							}
						},
						calculable : true,
						xAxis : [
							{
								type : 'category',
								data : [ "a","b","c","d","e"]
							}
						],
						yAxis : [
							{
								type : 'value'
							}
						],
						series : [
							{
								name:'毒素含量',
								type:'bar',
								data:[ "2.36","3.55","2.11","6.7","0.55"]

							},]
					};
					myChart.clear();
					myChart.setOption(option);

			
				})
		</script>
	</article>
</body>
</html>
