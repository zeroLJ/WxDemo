<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试</title>
<link rel="stylesheet" href="style/weui.min.css" />
<link rel="stylesheet" href="style/mStyle.css" />
</head>
<!-- <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script> -->
<script src="js/jquery.js"></script>
<script src="js/jweixin.js"></script>
<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.1.4/weui.min.js"></script>
<script>
	var a = {
		name : "sss",
		sex : "男",
	}
	function show() {
		console.log('1111' + a.n)
	}
	function myFunction()
	{
		$("#h01").html("Hello jQuery")
		//weui.alert('alert');
	}
	
</script>

<body>
	<!-- <button onClick = "show()">绿色按钮</button>  -->
	<button class="weui-btn weui-btn_primary"
		onclick="myFunction()">绿色按钮</button>
	<h1 id="h01" onclick="myFunction()"></h1>
	<script type="text/javascript">
		$("#h01").html("Hello jQuer")
	</script>
	<button onclick="myFunction()">绿色按钮</button>
</body>
</html>

