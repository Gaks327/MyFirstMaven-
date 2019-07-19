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
<title>�ͻ����</title>
<link rel="stylesheet" href="<%=basePath%>css/reset.css" />
<link rel="stylesheet" href="<%=basePath%>ss/customer-management-examine.css" />
<link rel="stylesheet" href="<%=basePath%>css/calendar.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/calendar.js"></script>
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
<div class="xtgl1"> <a class="xtgl1_kh" href="<%=basePath%>jsp/customerList.jsp" style="color: #4f6aa8">�ͻ�����</a><a class="xtgl1_xx" href="<%=basePath%>jsp/examine-x.jsp" style="color:#58a0fd">��Ϣ����Ա����</a> </div>
<div class="cus-content">
  <p class="cus-admin"><span>��ǰҳ�� : </span><a>�ͻ�����/</a><a class="active" href="selectAll">����Ա���</a></p>
  <form action="updateCustomer" method="get" id="formCustomer">
    <div class="cus-examine-infolist">
      <p class="cus-examine-title">���</p>
      <ul class="examine-list">
        <li class="list-item">
          <label>��˷���</label>
          <select id="application_direction" name="application_direction">
            
              <option >1</option>
              <option >2</option>
              <option>3</option>
            
          </select>
        </li>
        <li class="list-item">
          <label>��ʵ����</label>
          <input type="text" value="����" name="username" readonly/>
          <input type="hidden" value="${user.id}" name="id"/>
        </li>
        <li class="list-item">
          <label>���֤����</label>
          <input type="text" value="11111111111" name="idcard" readonly/>

        </li>
        <li class="list-item">
          <label>�ͻ���λ</label>
          <input type="text" value="111111" name="company" readonly/>
          
        </li>
        <li class="list-item">
          <label>��λ��ַ</label>
          <input type="text" value="2222222" name="address" readonly/>
        </li>
        <li class="list-item">
          <label>�������</label>
          <input type="text" value="33333333" name="email" readonly/>
        </li>
        <li class="list-item">
          <label>�ֻ�����</label>
          <input type="text" value="4444444444" name="phone" readonly/>
        </li>
        <li class="list-item">
          <label>�ͻ�Ȩ��</label>
          
          
          <select name="customer_power" onblur="checkrole()" id="roleSelect">
		    				<option value="">��ѡ��</option>
		    				<option value="1">�鿴ˮ����</option>
		    				<option value="2">�鿴������</option>
		    				<option value="3">�鿴������</option>
		    				<option value="4">�鿴�����</option>
		    				<option value="5">�鿴������</option>
		    				<option value="6">�鿴������</option>
		    				<option value="7">�ɲ鿴ȫ��</option>
		    			</select> 
          <span id="role_exam"></span> </li>
        <li class="list-item">
          <label>�ͻ�״̬</label>
          <input type="radio" name="state" value="1" checked="checked" />
          ����
          <input type="radio" name="state" value="0" />
          ���� </li>
        <li>
          <lable>��ʼʱ��</lable>
          <input onblur="checkharvest_time()" type="text" name="starttime" value=""  id="dt" placeholder="ѡ������" readonly >
          <div id="dd"></div>
          <span id="harvest_time" ></span> </li>
        <li>
          <lable>����ʱ��</lable>
          <input onblur="checksampling_time()" type="text" name="endtime" value="" id="dt-b" placeholder="ѡ������" readonly>
          <div id="dd-b"></div>
          <span id="sampling_time" class="err"></span> </li>
      </ul>
      <div class="examine-option"> <a class="examine-pass" onclick="passForm()">ͨ��</a><a class="examine-reject" href="javascript:void(0)" onclick="rejectForm()">����</a><a class="examine-back" href="javascript:void(0)" onclick="window.history.go(-1)">����</a> </div>
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
		function rejectForm(){
			location.href="rejectCustomer?id="+${user.id};
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
						alert('��ѡ����ȷ�Ľ���ʱ��');
					}
				},100)
			})
			
			
			
			//����
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
