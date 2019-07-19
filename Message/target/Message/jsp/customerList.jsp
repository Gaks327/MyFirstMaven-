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
	<meta charset="utf-8" />
	<title>客户管理</title>
	<link rel="stylesheet" href="<%=basePath%>css/reset.css" />
	<link rel="stylesheet" href="<%=basePath%>css/customer-management-index.css" />
	<link rel="stylesheet" href="<%=basePath%>css/page-con.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/IM-index.css" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/examine.css" />
	<script src="<%=basePath%>js/jquery.js"></script>
	<script src="<%=basePath%>js/super.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery1.11.3-jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
	function all(id) {
		$.ajax({
			url:"/Message/all",
			data:{
				"pageNum":id
			},
			type:"post",
			dateType:"json",
			success: function(map){
				/* 清空页面 */
				$(".im-page").html("");
				$(".info-item").remove()
				/* 查所有 */
				var checkStatus = ""
				var state = ""
				var isdel = ""
				var lala = ""
				for(var i = 0; i<map["list"].length; i++ ){
					//判断字符串
					if(map["list"][i].checkStatus==0){
						checkStatus = "未审核"
					}else if(map["list"][i].checkStatus==1){
						checkStatus = "通过"
					}else if(map["list"][i].checkStatus==2){
						checkStatus = "驳回"}
					//判断字符串
					if(map["list"][i].state==0){state = "未启用"
					}else{state = "启用"}
					//拼接表单
					lala += "<tr class='info-item' id='info-item'><td>"+map["list"][i].id+"</td><td>"+map["list"][i].loginName+
					"</td><td>"+map["list"][i].username+"</td><td>"+map["list"][i].idcard+
					"</td><td>"+map["list"][i].company+"</td><td>"+map["list"][i].email+
					"</td><td>"+map["list"][i].phone+"</td><td>"+map["list"][i].applicationTime+
					"</td><td>"+checkStatus+"</td><td>"+state+"</td>";
					//判断字符串
					if(map["list"][i].checkStatus!=0){
						lala += "<td class='operation'><div class='ifshow'>"
						lala += "<a class='modify' href='/Message/selectById2?id="+i+"'>修改</a>"
						lala += "<a class='delete' onclick='return confirm('是否删除')' href='/Message/deleteById?id="+map["list"][i].id+"'>删除</a>"
						lala += "</div></td>"
					}else{
						lala += "<td class='operation'><div class='ifshow'>"
						lala += "	<a href='/Message/selectById?id="+map["list"][i].id+"' class='examine'>审核</a>"
						lala += "</div></td>"
					}
					lala += "</tr>";
				}
				$(".cus-info").append(lala);
				//分页
				var page = ""
					//首页
					page += "<ul>"
						page += "	<li class='im-indexpage'><a data-id='' onclick='a(this.id)' id ='1'  title=''>首页</a></li>"
					//上一页
				if(map.pageNum>1){
					page += "	<li class='im-nextpage'><a data-id='' onclick='a(this.id)' id ='"+(parseInt(map.pageNum)-1)+"' title=''>上一页</a></li>"
				}else{
					page += "	<li class='im-nextpage'><a data-id='' onclick='a(this.id)' id ='1'  title=''>上一页</a></li>"
				}	
					//下一页
				if(map.pageNum<map.pageSize){
					page += "	<li class='im-nextpage'><a data-id='' onclick='a(this.id)' id ='"+(parseInt(map.pageNum)+1)+"' title=''>下一页</a></li>"
				}else{
					page += "	<li class='im-nextpage'><a data-id='' onclick='a(this.id)' id ='"+parseInt(map.pageSize)+"' title=''>下一页</a></li>"
				}	
					//尾页
				page += "	<li class='im-indexpage'><a data-id='' onclick='a(this.id)' id ='"+parseInt(map.pageSize)+"' title=''>尾页</a></li>"
				page += "</ul>"
				$(".im-page").append(page);	
			}
		})
	}
	//模糊查询
	function fuzzyselect() {
		$.ajax({
			url:"/Message/fuzzyselect",
			type:"post",
			dateType:"json",
			success: function(map){
				/* 清空页面 */
				$(".im-page").html("");
				$(".info-item").remove()
				/* 查所有 */
				var checkStatus = ""
				var state = ""
				var isdel = ""
				var lala = ""
				for(var i = 0; i<map["list"].length; i++ ){
					//判断字符串
					if(map["list"][i].checkStatus==0){
						checkStatus = "未审核"
					}else if(map["list"][i].checkStatus==1){
						checkStatus = "通过"
					}else if(map["list"][i].checkStatus==2){
						checkStatus = "驳回"}
					//判断字符串
					if(map["list"][i].state==0){state = "未启用"
					}else{state = "启用"}
					//拼接表单
					lala += "<tr class='info-item' id='info-item'><td>"+map["list"][i].id+"</td><td>"+map["list"][i].loginName+
					"</td><td>"+map["list"][i].username+"</td><td>"+map["list"][i].idcard+
					"</td><td>"+map["list"][i].company+"</td><td>"+map["list"][i].email+
					"</td><td>"+map["list"][i].phone+"</td><td>"+map["list"][i].applicationTime+
					"</td><td>"+checkStatus+"</td><td>"+state+"</td>";
					//判断字符串
					if(map["list"][i].checkStatus!=0){
						lala += "<td class='operation'><div class='ifshow'>"
						lala += "<a class='modify' href='/Message/selectById2?id="+i+"'>修改</a>"
						lala += "<a class='delete' onclick='return confirm('是否删除')' href='/Message/deleteById?id="+map["list"][i].id+"'>删除</a>"
						lala += "</div></td>"
					}else{
						lala += "<td class='operation'><div class='ifshow'>"
						lala += "	<a href='/Message/selectById?id="+map["list"][i].id+"' class='examine'>审核</a>"
						lala += "</div></td>"
					}
					lala += "</tr>";
				}
				$(".cus-info").append(lala);
				//分页
				var page = ""
					//首页
					page += "<ul>"
						page += "	<li class='im-indexpage'><a data-id='' onclick='a(this.id)' id ='1'  title=''>首页</a></li>"
					//上一页
				if(map.pageNum>1){
					page += "	<li class='im-nextpage'><a data-id='' onclick='a(this.id)' id ='"+(parseInt(map.pageNum)-1)+"' title=''>上一页</a></li>"
				}else{
					page += "	<li class='im-nextpage'><a data-id='' onclick='a(this.id)' id ='1'  title=''>上一页</a></li>"
				}	
					//下一页
				if(map.pageNum<map.pageSize){
					page += "	<li class='im-nextpage'><a data-id='' onclick='a(this.id)' id ='"+(parseInt(map.pageNum)+1)+"' title=''>下一页</a></li>"
				}else{
					page += "	<li class='im-nextpage'><a data-id='' onclick='a(this.id)' id ='"+parseInt(map.pageSize)+"' title=''>下一页</a></li>"
				}	
					//尾页
				page += "	<li class='im-indexpage'><a data-id='' onclick='a(this.id)' id ='"+parseInt(map.pageSize)+"' title=''>尾页</a></li>"
				page += "</ul>"
				$(".im-page").append(page);	
			}
		})
	}
	
	function a(id){
		all(id);
	}
	
	$(function() {
		all()
	})
	
	</script>
</head>

<style>
	html, body (
		height: 100%;
	}
</style>

<body>
	<div class="xtgl1">
		<a class="xtgl1_kh" href="<%=basePath%>jsp/customerList.jsp" style="color: color: #58a0fd">客户管理</a>
		<a class="xtgl1_xx" href="<%=basePath%>jsp/examine-x.jsp" >信息管理员管理</a>
	</div> 
	
	<div class="cus-content">
		<p class="cus-admin">
			<span>当前页面 : </span> <a class="active" href="<%=basePath%>jsp/examine-x.jsp">审核管理</a>
		</p>
		
		<div class="cus-search">
			<label>真实姓名</label> 
			<input type="text" id="searchName" value="" maxlength="10"
				onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"
				onpaste="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"
				oncontextmenu="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" />
			<label>客户单位</label> 
			<input type="text" id="searchCompany" value="" maxlength="20"
				onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"
				onpaste="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"
				oncontextmenu="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" />
			<label>审核状态</label> 
			<select class="cus-examine" id="searchStatus">
				<option value="">请选择</option>
				<option value="0">未审核</option>
				<option value="1">审核通过</option>
				<option value="2">驳回</option>
			</select> 
			<a href="<%-- <%=basePath%>fuzzyselect?realname="+   +" &company= & --%>" onclick="searchByName()" class="search-btn">搜索</a>
		</div>
		
		<table class="cus-info">
			<tr id ="info-first" class="info-first ">
			      <td>序号</td>
			      <td>账号</td>
			      <td>真实姓名</td>
			      <td>身份证号</td>
			      <td>客户单位</td>
			      <td>客户邮箱</td>
			      <td>客户手机号码</td>
			      <td>申请时间</td>
			      <td>审核状态</td>
			      <td>客户状态</td>
			      <td>操作</td>
   			</tr>
			
		</table>
	<!-- 	<div class="im-page">
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
		</div> -->
		
		<div class="im-page">


		</div>
		
	</div>
</body>
<script type="text/javascript" src="<%=basePath%>js/jquery.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/customer-management-index.js" ></script>
<script type="text/javascript">
		function searchByName(){
			var name = $("#searchName").val();
			var company = $("#searchCompany").val();
			var state = $("#searchStatus").val();

			location.href="searchByName?param1="+name+"&param2="+state+"&param3="+company;
		}
	</script>
</html>
