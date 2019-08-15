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
	<!-- <blockquote class="layui-elem-quote layui-quote-nm">
		<i class="layui-icon layui-icon-right"></i>  主页 
		<i class="layui-icon layui-icon-right"></i> 问题分类
	</blockquote> -->
<!-- 	<buton class="layui-btn" id="btn1" >添加</buton>
	<buton class="layui-btn" id="btn2">删除</buton> -->
	<script type="text/html" id="toolbarDemo">
  		<div class="layui-btn-container">
  	  		<button class="layui-btn layui-btn-sm" lay-event="add">添加</button>
   	 		<button class="layui-btn layui-btn-sm" lay-event="delete">删除</button>
 	 	</div>
	</script>
	
	<table class="layui-table" lay-filter="demo" id="demo" >
		<colgroup>
			<col>
			<col >
			<col >
		</colgroup>
		<thead>
			<tr>
				 <th lay-data="{type: 'checkbox', fixed: 'left'}"></th>
				 <th lay-data="{field:'bh',width:70}">编号</th>
     			 <th lay-data="{field:'wtlx'}">问题类型</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${wtfl}</td>
				<td>1</td>
				<td>OA</td>
				
			</tr>
			<tr>
				<td></td>
				<td>2</td>
				<td>OA</td>
			
			</tr>
		</tbody>
	</table>
</body>
<script type="text/javascript">
	layui.use(['table','jquery' ],function(){
		var table = layui.table;
		$ = layui.jquery;
		table.init('demo', {
			toolbar: '#toolbarDemo'
		});
		table.on('toolbar(demo)', function(obj){
    		var checkStatus = table.checkStatus(obj.config.id);
   			switch(obj.event){
    			case 'add':
        			window.location.href="../html/tjwtlx.html";        			
      				break;
      			case 'delete':
        			var data = checkStatus.data;
        			alert(JSON.stringify(data));
      				break;
   			};
  		});
	});
</script>
</html>