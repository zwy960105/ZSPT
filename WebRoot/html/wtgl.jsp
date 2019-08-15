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
<body>
<!-- 	<blockquote class="layui-elem-quote layui-quote-nm">
		<i class="layui-icon layui-icon-right"></i>  主页 
		<i class="layui-icon layui-icon-right"></i> 问题管理
	</blockquote> -->
	<br>
	<center>
	<span style="margin-left: 10px;">查询条件：</span>
	<select name="select" id="select" lay-verify="required"	style="width: 150px;height: 30px;">
		<option value="">请选择</option>
		<option value="1">问题</option>
		<option value="2">问题内容</option>
		<option value="3">问题类型</option>
	</select>
	<input type="text" class="" value="" id="selectname" name="selectname"style="width: 200px;height: 26px;" />
	<buton class="layui-btn" id="btn">查询</buton>
	</center>
	<table class="layui-table" lay-filter="demo" id="demo" >
		<colgroup>
			<col>
			<col >
			<col >
		</colgroup>
		<thead>
			<tr>
				 <th lay-data="{field:'bh',width:70}">编号</th>
     			 <th lay-data="{field:'wtlx'，width:70}">问题类型</th>
     			 <th lay-data="{field:'wt'}">问题</th>
     			 <th lay-data="{field:'wtnr'}">问题内容</th>
     			 <th >操作</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>OA</td>
				<td>问题</td>
				<td>问题内容</td>
				<td>删除/编辑</td>
				
			</tr>
			<tr>
				<td>2</td>
				<td>OA</td>
				<td>问题</td>
				<td>问题内容</td>
				<td>删除/编辑</td>
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