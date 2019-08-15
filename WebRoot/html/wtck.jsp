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
<script type="text/javascript" src="/ZSPT/jc/js/layui.js"></script>
</head>
<body>
	<blockquote class="layui-elem-quote layui-quote-nm">
		<i class="layui-icon layui-icon-right"></i>  主页 
		<i class="layui-icon layui-icon-right"></i> 问题查询
	</blockquote>
<div id="tt">
  <div class="layui-form-item">
    <label class="layui-form-label">问题：</label>
    <div class="layui-input-block"><br>
<p>如何修改OA密码？</p>    
</div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">问题类型：</label>
    <div class="layui-input-block">
  <label class="layui-form-label">日常维护</label>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">解决方案：</label>
    <div class="layui-input-block">
    	<img src="../img/1.jpg"style="width:1497px;hegit:3000px;"></img>
    </div>
    	<label class="layui-form-label">
    	1..........;<br>
    	2..........;<br>
    	3..........;
    	</label>
  </div>
  
  
  <div class="layui-form-item">
    <div class="layui-input-block">
     <a href="../html/wtcx.html"> <button  class="layui-btn layui-btn-primary">返回</button></a>
    </div>
  </div>
</div>
	
	
</body>
<script type="text/javascript">
	layui.use(['table','jquery' ],function(){
		var table = layui.table;
		$ = layui.jquery;
		$("#sdsr").click(function(){
			$("#rr").hide();
			$("#tt").show();
		});
		$("#sjkdj").click(function(){
			$("#tt").hide();
			$("#rr").show();
		});
		
	});
	 
</script>
</html>