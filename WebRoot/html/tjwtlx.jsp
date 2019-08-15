<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"content="width=device-width, initial-scale=1, maximum-scale=1">
<title>知识平台</title>
<link rel="stylesheet" href="../jc/css/layui.css" type="text/css"></link>
<script type="text/javascript" src="../jc/js/vue.min.js"></script>
<script type="text/javascript" src="../jc/js/layui.js"></script>
</head>
<body>
	<blockquote class="layui-elem-quote layui-quote-nm">
		<i class="layui-icon layui-icon-right"></i>  主页 
		<i class="layui-icon layui-icon-right"></i> 问题分类
	</blockquote>
	 <div class="layui-form-item">
    <label class="layui-form-label">问题类型</label>
    <div class="layui-input-block">
      <input type="text" name="title" required  lay-verify="required" placeholder="请输入问题类型" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</body>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
   // layer.msg(JSON.stringify(data.field));
   window.location.href="../html/wtfl.html";   
    return false;
  });
});
</script>
</html>