<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% String path = request.getContextPath();  
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
 %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
		<head>
		<meta charset="UTF-8">
		<title>信息管理员管理</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/reset.css"/>
		
		<link rel="stylesheet" href="<%=basePath%>css/customer-management-index.css" />
		<link rel="stylesheet" href="<%=basePath%>css/page-con.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/IM-index.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/examine.css"/>
		<script src="<%=basePath%>js/jquery.js"></script>
		<script src="<%=basePath%>js/super.js"></script>
		
		</head>
		<body>

<div class="xtgl1"> <a class="xtgl1_kh" href="<%=basePath%>jsp/customerList.jsp" style="color: #6983b9">客户管理</a><a class="xtgl1_xx" href="<%=basePath%>jsp/examine-x.jsp" style="color: #58a0fd">信息管理员管理</a> </div>
<div class="cus-quit">

			</div>
	
		<div class="cus-content">
			<p class="cus-admin">
				<span>当前页面 : <span>
				<a href="selectAll" style="background-size:70%">信息管理员管理</a>
			</p>
			<div class="cus-search">
				<label>真实姓名</label>
				<input type="text" id="searchName" value="" maxlength="10" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" onpaste="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" oncontextmenu = "value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"/>
				<label>客户单位</label>
				<input type="text" id="searchCompany" value="" maxlength="20" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" onpaste="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" oncontextmenu = "value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')"/>
				<label>审核状态</label>
				<select class="cus-examine" id="searchStatus">
					<option value="">请选择</option>
					<option value="0">未审核</option>
					<option value="1" >审核通过</option>
					<option value="2" >驳回</option>
				</select>
				<a href="javascript:void(0)" onclick="searchByName()" class="search-btn">搜索</a>
			</div>
			<table class = "cus-info">
				<tr class="info-first info-item">
					<td>序号</td>
					<td>账号</td>
					<td>真实姓名</td>
					<td>身份证号</td>
					<td>客户单位</td>
					<td>客户邮箱</td>
					<td>客户手机号码</td>
					<td>申请时间</td>
					<!-- <td>申请方向</td> -->
					<td>审核状态</td>
					<td>客户状态</td>
					<td>操作</td>
				</tr>

				<tr class="info-item">
					<td>1</td>
					<td>hhh555</td>
					<td>sdfsd</td>
					<td>211382199201203915</td>
					<td>sdfdsdf</td>
					<td>2503085431@qq.com</td>
					<td>15896498635</td>
					<td>2018-03-12</td>

					<td class="ifexamine">通过</td>
					<td>启用</td>
					<td class="operation">


						<div class="ifshow"><a href="<%=basePath%>jsp/customerExamine-x.jsp" class="examine">审核</a></div>
					</td>
				</tr>
				
				<tr class="info-item">
					<td>1</td>
					<td>hhh555</td>
					<td>sdfsd</td>
					<td>211382199201203915</td>
					<td>sdfdsdf</td>
					<td>2503085431@qq.com</td>
					<td>15896498635</td>
					<td>2018-03-12</td>

					<td class="ifexamine">待审核 </td>
					<td>启用</td>
					<td class="operation">
						
						<div class="ifshow"><a class="modify" href="<%=basePath%>jsp/customerModify-k.jsp">修改</a><a class="delete" onclick="return confirm('是否删除')" href="deleteById?id=69">删除</a></div>
						
					</td>
					
				</tr>
				<tr class="info-item">
					<td>1</td>
					<td>hhh555</td>
					<td>sdfsd</td>
					<td>211382199201203915</td>
					<td>sdfdsdf</td>
					<td>2503085431@qq.com</td>
					<td>15896498635</td>
					<td>2018-03-12</td>

					<td class="ifexamine">驳回 </td>
					<td>启用</td>
					<td class="operation">


						<div class="ifshow"><a href="<%=basePath%>jsp/customerExamine.jsp" class="examine">审核</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>1</td>
					<td>hhh555</td>
					<td>sdfsd</td>
					<td>211382199201203915</td>
					<td>sdfdsdf</td>
					<td>2503085431@qq.com</td>
					<td>15896498635</td>
					<td>2018-03-12</td>

					<td class="ifexamine">驳回 </td>
					<td>启用</td>
					<td class="operation">


						<div class="ifshow"><a href="<%=basePath%>jsp/customerExamine.jsp" class="examine">审核</a></div>
					</td>
				</tr>
				

				
			</table>
		    <div class="page">
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
		</div>
</body>
		<script type="text/javascript">

			function reinitIframe(){

			var iframe = document.getElementById("mainiframe");

			try{

				var bHeight = iframe.contentWindow.document.body.scrollHeight;

				var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;

				var height = Math.max(bHeight, dHeight);

				iframe.height =  height;

			}catch (ex){

			}

			}

			window.setInterval("reinitIframe()", 200);
			$(function(){
		        //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失
		        $(function () {
		            $(window).scroll(function(){
		                if ($(window).scrollTop()>100){
		                    $(".top").fadeIn(1500);
		                }
		                else
		                {
		                    $(".top").fadeOut(1500);
		                }
		            });

		            //当点击跳转链接后，回到页面顶部位置
		            $(".top").click(function(){
		                //$('body,html').animate({scrollTop:0},1000);
		        if ($('html').scrollTop()) {
		                $('html').animate({ scrollTop: 0 }, 1000);
		                return false;
		            }
		            $('body').animate({ scrollTop: 0 }, 1000);
		                 return false;
		           });
		     });
		});

	</script>
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
