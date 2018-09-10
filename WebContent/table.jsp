<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
<title>table表格</title>
<link rel="stylesheet" href="style/weui.min.css" />
<link rel="stylesheet" href="style/mStyle.css" />
<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.1.4/weui.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<style>
	table.hovertable {
	    font-family: verdana,arial,sans-serif;
	    font-size:11px;
	    color:#333333;
	    border-width: 1px;
	    border-color: #999999;
	    border-collapse: collapse;
	}
	table.hovertable th {
	    background-color:#c3dde0;
	    border-width: 1px;
	    padding: 8px;
	    border-style: solid;
	    border-color: #a9c6c9;
	}
	table.hovertable tr {
	    background-color:#d4e3e5;
	}
	table.hovertable td {
	    border-width: 1px;
	    padding: 8px;
	    border-style: solid;
	    border-color: #a9c6c9;
	}
</style>
</head>
<body>
    <table class="hovertable" width="100%">
		<tr>
		    <th style="width: 40%">Info Header 1</th><th style="width: 40%">Info Header 2</th><th style="width: 20%">Info Header 3</th>
		</tr>
		<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
		    <td>Item 1A</td><td>Item 1B</td><td>Item 1C</td>
		</tr>
		<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
		    <td>Item 2A</td><td>Item 2B</td><td>Item 2C</td>
		</tr>
		<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
		    <td>Item 3A</td><td>Item 3B</td><td>Item 3C</td>
		</tr>
		<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
		    <td>Item 4A</td><td>Item 4B</td><td>Item 4C</td>
		</tr>
		<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
		    <td>Item 5A</td><td>Item 5B</td><td>Item 5C</td>
		</tr>
	</table>
	
	<script type="text/javascript">
		
   	
	</script>
</body>
</html>