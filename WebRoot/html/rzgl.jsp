
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"content="width=device-width, initial-scale=1, maximum-scale=1">
<title>知识平台</title>
<link rel="stylesheet" href="/ZSPT/jc/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="/ZSPT/jc/js/vue.min.js"></script>
<script type="text/javascript" src="/ZSPT/jc/js/layui.js"></script>

</head>
<script type="text/javascript">
function checkForm(form) {
	//var begintime = document.getElementById("begintime");
	//var endtime = document.getElementById("endtime");
	if(form.begintime.value == ""){
		alert("请输入开始时间");
		form.begintime.focus();
		return false;
	}
	if(form.endtime.value == "") {
		alert("请输入结束时间!");
		form.endtime.focus();
		return false;
	}
	return true;
}

</script>
<body>
	<blockquote class="layui-elem-quote layui-quote-nm">
		<i class="layui-icon layui-icon-right"></i>  主页 
		<i class="layui-icon layui-icon-right"></i> 日志管理
	</blockquote>
	<span style="font-size: 16px; color: gray;">开始时间：</span><input
					type="text" id="begintime" name="begintime" value="${begintime}" />&nbsp;
				<span style="font-size: 16px; color: gray;">结束时间：</span><input
					type="text" id="endtime" name="endtime" value="${endtime }" /> <input
					type="hidden" value="${ip}" name="ip"> <span
	<input type="text" class="" value="" id="selectname" name="selectname"style="width: 200px;height: 26px;" />
	<buton class="layui-btn" id="btn">查询</buton>
	<table class="layui-table" lay-filter="demo" id="demo" >
		<colgroup>
			<col>
			<col >
			<col >
		</colgroup>
		<thead>
			<tr>
				 <th lay-data="{field:'bh',width:70}">编号</th>
     			 <th lay-data="{field:'sj'，width:70}">时间</th>
     			 <th lay-data="{field:'nr'}">日志内容</th>
     			 <th >操作</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>2019/1/1</td>
				<td>日志内容</td>
				<td>查看</td>
				
			</tr>
			<tr>
				<td>2</td>
				<td>2019/1/1</td>
				<td>日志内容</td>
				<td>查看</td>
			</tr>
		</tbody>
	</table>
</body>
<script type="text/javascript">
	layui.use(['table','jquery' ],function(){
		var table = layui.table;
		$ = layui.jquery;
	});
</script>
</html>