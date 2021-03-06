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
<title>客户审核</title>
<link rel="stylesheet" href="<%=basePath%>css/reset.css" />
<link rel="stylesheet" href="<%=basePath%>css/customer-management-examine.css" />
<link rel="stylesheet" href="<%=basePath%>css/calendar.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/calendar.js"></script>
<script type="text/javascript" src="<%=basePath%>js/checkUserUpdateForm.js" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/examine.css"/>
<style>
.cus-content .cus-examine-infolist .examine-list .list-item .list-box {
	width: 15px;
	height: 14px;
	vertical-align: middle;
}
</style>
</head>
<body>
<div class="xtgl1"> <a class="xtgl1_kh" href="<%=basePath%>jsp/customerList.jsp" style="color: color: #58a0fd">客户管理</a><a class="xtgl1_xx" href="<%=basePath%>jsp/examine-x.jsp">信息管理员管理</a> </div>
<div class="cus-content">
  <p class="cus-admin"><span>当前页面 : </span><a>客户管理/</a><a class="active" href="selectAll">客户审核</a></p>
  
  <form action="insert" method="post" id="formCustomer">
    <div class="cus-examine-infolist">
      <p class="cus-examine-title">审核</p>
      <ul class="examine-list">
        <li class="list-item">
          <label>审核方向</label>
          <select id="application_direction" name="application_direction">
              <option>1</option>
              <option>2</option>
              <option>3</option>
          </select>
        </li>
        <li class="list-item">
          <label>真实姓名</label>
          <input type="text" value="${user.username }" name="username"/>
          <input type="hidden" value="" name="id"/>
        </li>
        <li class="list-item">
          <label>身份证号码</label>
          <input type="text" value="${user.idcard }" name="idcard" />

        </li>
        <li class="list-item">
          <label>客户单位</label>
          <input type="text" value="${user.company }" name="company" />
          
        </li>
        <li class="list-item">
          <label>单位地址</label>
          <input type="text" value="${user.address }" name="address" />
        </li>
        <li class="list-item">
          <label>邮箱号码</label>
          <input type="text" value="${user.email }" name="email" />
        </li>
        <li class="list-item">
          <label>手机号码</label>
          <input type="text" value="${user.phone }" name="phone" />
        </li>
        <li class="list-item">
          <label>客户权限</label>
          
          
          <select name="customer_power" onblur="checkrole()" id="roleSelect">
			<option value="">请选择</option>
			<option value="1">查看水果类</option>
			<option value="2">查看谷物类</option>
			<option value="3">查看油料类</option>
			<option value="4">查看坚果类</option>
			<option value="5">查看香辛类</option>
			<option value="6">查看饲料类</option>
			<option value="7">可查看全部</option>
			</select> 
          <span id="role_exam"></span> </li>
        <li class="list-item">
          <label>客户状态</label>
          <input type="radio" name="state" value="1" checked="checked" />
          启用
          <input type="radio" name="state" value="0" />
          禁用 </li>
        <li>
          <lable>开始时间</lable>
          <input onblur="checkharvest_time()" type="text" name="starttime" value="${user.starttime }"  id="dt" placeholder="选择日期"  >
          <div id="dd"></div>
          <span id="harvest_time" ></span> </li>
        <li>
          <lable>结束时间</lable>
          <input onblur="checksampling_time()" type="text" name="endtime" value="${user.endtime }" id="dt-b" placeholder="选择日期" >
          <div id="dd-b"></div>
          <span id="sampling_time" class="err"></span> </li>
      </ul>
      	<%-- <c:if test="${user.checkStatus=1 }">
			<div class="examine-option">
				<a href="audit?id=${user.id}&checkstatus=1"
					class="examine-pass" onclick="passForm()">通过</a>
				<a class="examine-reject" href="javascript:void(0)"
					onclick="rejectForm()">驳回</a>
				<a class="examine-back" href="javascript:void(0)" 
					onclick="window.history.go(-1)">返回</a>
			</div>
		</c:if> --%>
    	
		<div class="examine-option">
			<a href="audit?id=${user.id}&checkStatus=1" class="examine-pass">通过</a>
			<a href="audit?id=${user.id}&checkStatus=2" class="examine-reject">驳回</a>
			<a class="examine-back" href="<%=basePath%>jsp/customerList.jsp" onclick="window.history.go(-1)">返回</a>
		</div>

    </div>
  </form>
</div>
</body>
<script type="text/javascript">
		ok1 = false;
		function passForm(){
			$("select").trigger("blur");
			checkrole();
			if(ok1==true)
				$("#formCustomer").submit();
		}
		
		function returnForm(){
			history.go(-1);
		}
		function checkrole(){
			var a=document.getElementsByName("customer_powers");
			for(var i=0;i<a.length;i++){
				if(a[i].checked){
					ok1=true;
				}
			}
		};
		$(function(){
			var date = new Date();
			year = date.getFullYear();
			months = date.getMonth()+1;
			days = date.getDate();
			 $("#dt").val(year+"-"+months+"-"+days); 
			$("#dt-b").val(year+"-"+months+"-"+(days+1));

			$('#dd-b').on('click','.days',function(){
				var x = $('#dt').val();
				setTimeout(function(){
					var y =  $('#dt-b').val();
					var begin = x.split('-');
					var end = y.split('-');
					if(begin[1]<10){
						begin[1]='0'+begin[1];
					};
					if(begin[2]<10){
						begin[2]='0'+begin[2];
					};
					if(end[1]<10){
						end[1]='0'+end[1];
					};
					if(end[2]<10){
						end[2]='0'+end[2];
					};
					if((end[0]+end[1]+end[2])-(begin[0]+begin[1]+begin[2])<=0){
						$('#dt-b').val('');
						alert('请选择正确的结束时间');
					}
				},100)
			})
			
			
			
			//日历
				$('#dd').calendar({
			        trigger: '#dt',
			        zIndex: 999,
					format: 'yyyy-mm-dd',
			        onSelected: function (view, date, data) {
			           
			        },
			        onClose: function (view, date, data) {
			         
			        }
			    });
			    $('#dd-b').calendar({
			        trigger: '#dt-b',
			        zIndex: 999,
					format: 'yyyy-mm-dd',
			        onSelected: function (view, date, data) {
			            
			        },
			        onClose: function (view, date, data) {
			       
			        }
			    });
		})
	</script>
</html>

