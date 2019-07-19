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
<title>客户修改</title>
<link rel="stylesheet" href="<%=basePath%>css/reset.css" />
<link rel="stylesheet" href="<%=basePath%>css/customer-management-modify.css" />
<link rel="stylesheet" href="<%=basePath%>css/calendar.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/examine.css"/>
<script type="text/javascript" src="<%=basePath%>js/jquery1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/calendar.js"></script>
<style>
.cus-content .cus-modify-infolist .modify-list .list-item .list-box {
	width: 15px;
	height: 14px;
	vertical-align: middle;
}
#dt {
	margin-left: 31px;
	margin-bottom: 10px;
	width: 310px;
	height: 32px;
	background: transparent;
	border: 1px solid #4f6aa8;
	border-radius: 3px;
}
#dt-b {
	margin-left: 31px;
	margin-bottom: 10px;
	width: 310px;
	height: 32px;
	background: transparent;
	border: 1px solid #4f6aa8;
	border-radius: 3px;
}
</style>
</head>
<body>
<div class="xtgl1"> <a class="xtgl1_kh" href="<%=basePath%>jsp/customerList.jsp" style="color: color: #58a0fd">客户管理</a><a class="xtgl1_xx" href="<%=basePath%>jsp/examine-x.jsp">信息管理员管理</a> </div>
<div class="cus-content">
  <p class="cus-admin"><span>当前页面 : </span><a href="selectAll">客户管理/</a><a class="active" href="selectAll">客户修改</a></p>
  <form  method="post" id="formUpdate" action="updateById">
  <input type="hidden" value="${user.id }" name = "id"/>
  
    <div class="cus-modify-infolist">
      <p class="cus-modify-title">客户修改</p>
      <ul class="modify-list">
        <li class="list-item">
          <label>真实姓名</label>
          <input type="text" value="${user.username }" name="username" >
        </li>
        <li class="list-item">
          <label>身份证号码</label>
          <input type="text" value="${user.idcard }" name="idcard" >
        </li>
        <li class="list-item">
          <label>客户单位</label>
          <input type="text" value="${user.company }" name="company">
        </li>
        <li class="list-item">
          <label>单位地址</label>
          <input type="text" value="${user.address }" name="address">
        </li>
        <li class="list-item">
          <label>邮箱号码</label>
          <input type="text" value="${user.email }" name="email" >
        </li>
        <li class="list-item">
          <label>手机号码</label>
          <input type="text" value="${user.phone }" name="phone" >
        </li>
        <li class="list-item">
          <label>客户权限</label>
          <input class="list-box" type="checkbox"  name="customer_powers" value="1">
          水果类
          &nbsp;&nbsp;&nbsp;&nbsp;
          <input class="list-box" type="checkbox"  name="customer_powers" value="2">
          谷物类
          &nbsp;&nbsp;&nbsp;&nbsp;
          <input class="list-box" type="checkbox" name="customer_powers" value="3">
          油料类
          &nbsp;&nbsp;&nbsp;&nbsp;
          <input class="list-box" type="checkbox" name="customer_powers" value="4">
          坚果类
          &nbsp;&nbsp;&nbsp;&nbsp;
          <input class="list-box" type="checkbox" name="customer_powers" value="5">
          香辛类
          &nbsp;&nbsp;&nbsp;&nbsp;
          <input class="list-box" type="checkbox" name="customer_powers" value="6">
          饲料类
          &nbsp;&nbsp;&nbsp;&nbsp; <span id="role_modi"></span> </li>
        <li class="list-item">
          <label>客户状态</label>
          <input type="radio" name="state" value="1" >
          启用
          <input type="radio" name="state" value="0">
          禁用 </li>
        <li>
          <lable>开始时间</lable>
          <input onblur="checkharvest_time()" type="text" name="starttime" value="${user.starttime }" id="dt" placeholder="选择日期" >
          <div id="dd" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 493.641px; top: 477px; z-index: 999; display: none;">
            <div class="calendar-inner" style="width: 280px;">
              <div class="calendar-views">
                <div class="view view-date" style="width: 280px;">
                  <div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">3</span></a>
                    <div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div>
                  </div>
                  <div class="calendar-ct" style="width: 280px; height: 280px;">
                    <ol class="week">
                      <li style="width:40px;height:40px;line-height:40px">日</li>
                      <li style="width:40px;height:40px;line-height:40px">一</li>
                      <li style="width:40px;height:40px;line-height:40px">二</li>
                      <li style="width:40px;height:40px;line-height:40px">三</li>
                      <li style="width:40px;height:40px;line-height:40px">四</li>
                      <li style="width:40px;height:40px;line-height:40px">五</li>
                      <li style="width:40px;height:40px;line-height:40px">六</li>
                    </ol>
                    <ul class="date-items">
                      <li style="width: 280px;">
                        <ol class="days">
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">10</li>
                        </ol>
                      </li>
                      <li style="width: 280px;">
                        <ol class="days">
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li>
                          <li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">16</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li>
                        </ol>
                      </li>
                      <li style="width: 280px;">
                        <ol class="days">
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li>
                        </ol>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="view view-month" style="width: 280px;">
                  <div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a>
                    <div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div>
                  </div>
                  <ol class="calendar-ct month-items" style="width: 280px; height: 280px;">
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">3月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">4月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li>
                  </ol>
                </div>
              </div>
            </div>
            <div class="calendar-label">
              <p>HelloWorld</p>
              <i></i></div>
          </div>
          <span id="harvest_time"></span> </li>
        <li>
          <lable>结束时间</lable>
          <input onblur="checksampling_time()" type="text" name="endtime" value="${user.endtime }" id="dt-b" placeholder="选择日期" >
          <div id="dd-b" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 493.641px; top: 521px; z-index: 999; display: none;">
            <div class="calendar-inner" style="width: 280px;">
              <div class="calendar-views">
                <div class="view view-date" style="width: 280px;">
                  <div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">3</span></a>
                    <div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div>
                  </div>
                  <div class="calendar-ct" style="width: 280px; height: 280px;">
                    <ol class="week">
                      <li style="width:40px;height:40px;line-height:40px">日</li>
                      <li style="width:40px;height:40px;line-height:40px">一</li>
                      <li style="width:40px;height:40px;line-height:40px">二</li>
                      <li style="width:40px;height:40px;line-height:40px">三</li>
                      <li style="width:40px;height:40px;line-height:40px">四</li>
                      <li style="width:40px;height:40px;line-height:40px">五</li>
                      <li style="width:40px;height:40px;line-height:40px">六</li>
                    </ol>
                    <ul class="date-items">
                      <li style="width: 280px;">
                        <ol class="days">
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">10</li>
                        </ol>
                      </li>
                      <li style="width: 280px;">
                        <ol class="days">
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li>
                          <li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">16</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li>
                        </ol>
                      </li>
                      <li style="width: 280px;">
                        <ol class="days">
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li>
                          <li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li>
                          <li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li>
                          <li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li>
                        </ol>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="view view-month" style="width: 280px;">
                  <div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a>
                    <div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div>
                  </div>
                  <ol class="calendar-ct month-items" style="width: 280px; height: 280px;">
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">3月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">4月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li>
                    <li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li>
                  </ol>
                </div>
              </div>
            </div>
            <div class="calendar-label">
              <p>HelloWorld</p>
              <i></i></div>
          </div>
          <span id="sampling_time" class="err"></span> </li>
      </ul>
      <div class="modify-option"> <a class="cus-modify" onclick="sub()">修改</a><a class="modify-back" href="<%=basePath%>jsp/customerList.jsp">返回</a> </div>
    </div>
  </form>
</div>
<script type="text/javascript">
			ok1 = false;
			function sub(){
					$("#formUpdate").submit();
			}
			function checkrole(){
				var a=document.getElementsByName("customer_powers");
				for(var i=0;i<a.length;i++){
					if(a[i].checked){
						ok1=true;
					}
				}
			}
			function ret(){
				history.go(-1);
			};
			$(function(){
				var date = new Date();
				year = date.getFullYear();
				months = date.getMonth()+1;
				days = date.getDate();
				/*  $("#dt").val(year+"-"+months+"-"+days); 
				$("#dt-b").val(year+"-"+months+"-"+(days+1)); */
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
</body>
</html>
