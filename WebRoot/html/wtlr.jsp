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
<script type="text/javascript" src="/ZSPT/jc/js/jquery-1.7.2.js"></script></head>
<body>
<!-- 	<blockquote class="layui-elem-quote layui-quote-nm">
		<i class="layui-icon layui-icon-right"></i>  主页 
		<i class="layui-icon layui-icon-right"></i> 问题录入
	</blockquote> -->
<div class="layui-form-item">
    <div class="layui-input-block">
    <!--   <button class="layui-btn  layui-btn-primary" id="sjkdj">数据库对接</button> -->
     <!--  <button class="layui-btn  layui-btn-primary"  id="sdsr">   手动输入    </button> -->
    </div>
  </div>
<div id="tt">
  <div class="layui-form-item">
    <label class="layui-form-label">问题：</label>
    <div class="layui-input-block">
      <input type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">问题类型：</label>
    <div class="layui-input-block">
      <select name="select" id="select" lay-verify="required"	style="width: 150px;height: 30px;">
		<option value="">请选择</option>
		<option value="1">日常维护</option>
		<option value="2">信息维护申请</option>
		<option value="3">权限申请</option>
		<option value="4">IE配置</option>
	</select>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">问题图片：</label>
    <div class="layui-input-block">
    	 <input type=file name="myfiles" id="doc"onchange="showImage();">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">问题内容</label>
    <div class="layui-input-inline">
		<textarea rows="20" cols="100"></textarea>
    </div>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn  layui-btn-primary" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</div>
<div id = "rr" style="display: none;margin-left: 50px;">
请选择对接流程:
	<select name="select" id="select" lay-verify="required"	style="width: 150px;height: 30px;margin-left: 20px;">
		<option value="">请选择</option>
		<option value="1">日常维护申请</option>
		<option value="2">信息维护申请</option>
		<option value="3">问题类型</option>
	</select>
 	<button class="layui-btn" lay-submit lay-filter="formDemo" style="margin-left: 20px;">确定</button>
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
		function showImage() {
		var docObj = document.getElementById("doc");
		var imgObjPreview = document.getElementById("preview");
		if (docObj.files && docObj.files[0]) {
			//火狐下，直接设img属性  
			imgObjPreview.style.display = 'block';
			imgObjPreview.style.width = '300px';
			imgObjPreview.style.height = '120px';
			//imgObjPreview.src = docObj.files[0].getAsDataURL();  
			//火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式  
			imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
		} else {
			//IE下，使用滤镜  
			docObj.select();
			var imgSrc = document.selection.createRange().text;
			var localImagId = document.getElementById("localImag");
			//必须设置初始大小  
			localImagId.style.width = "250px";
			localImagId.style.height = "200px";
			//图片异常的捕捉，防止用户修改后缀来伪造图片 
			try {
				localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
				localImagId.filters
						.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
			} catch (e) {
				alert("您上传的图片格式不正确，请重新选择!");
				return false;
			}
			imgObjPreview.style.display = 'none';
			document.selection.empty();
		}
		return true;
	}
	 
</script>
<!
</html>