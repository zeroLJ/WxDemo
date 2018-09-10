<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
<title>table表格(动态加载数据)</title>
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
    <table class="hovertable" width="100%"  id="tbody">
		<tr>
		    <th style="width: 40%" id="th1">姓名</th><th style="width: 40%" id="th2">性别</th><th style="width: 20%">年龄</th>
		</tr>
	</table>
	
	<script type="text/javascript">
		function doPost(url){
	        var val1 = document.getElementById("th1").innerHTML;
	        var val2 = document.getElementById("th2").innerHTML;
			$.post(url, {'key1':val1, 'key2':val2}, function(result){
				console.log("result");
				console.log(result);
				//var jsonObject=eval('('+result+')');
				var jsonObject=JSON.parse(result);
				for(var i=0;i<jsonObject.length;i++){
				      var tr=document.createElement('tr');
				      var tdname=document.createElement('td')
				      var tdsex=document.createElement('td')
				      var tdage=document.createElement('td')
				      tdname.innerHTML=jsonObject[i].name;
				      tdsex.innerHTML=jsonObject[i].sex;
				      tdage.innerHTML=jsonObject[i].age;
				 
				      tr.appendChild(tdname);
				      tr.appendChild(tdsex);
				      tr.appendChild(tdage);
				      var tbody=document.getElementById('tbody');
				      tbody.appendChild(tr);
				      //$("#tbody").appendChild(tr);
		        }
			});
	    }
		//doPost("http://localhost:8081/WxDemo/TestData");
		doPost("./TestData");
	</script>
</body>
</html>