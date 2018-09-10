<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
<title>weui JS调用</title>
<link rel="stylesheet" href="style/weui.min.css" />
<link rel="stylesheet" href="style/mStyle.css" />
<script type="text/javascript" src="https://res.wx.qq.com/open/libs/weuijs/1.1.4/weui.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<style>
	div.hidden {display:none;}
	div.visible {display:block;}
</style>
</head>
<body>
	<!-- <button class="weui-btn weui-btn_primary"
		onclick="alert()">提示框</button> -->
		
	
	<div id="main" style="display: block">
		<div class="weui-tab" id="tab" style="position: absolute; width:100%; height: 100%">
		    <div class="weui-tab__panel" style="position: absolute;height: 90%; top:0px; left: 0px;right:0px;bottom:0px;">
				<div class="weui-tab__content">
					<object type="text/html" data="index.jsp" width="100%" style="position: absolute; height: 100%"></object> 
				</div>
		        <div class="weui-tab__content">
		         	<div style="background-color: white; position: absolute;width:100%; min-height: 100%">
			         	<button class="weui-btn weui-btn_primary" draggable="true"
				           onclick="goToPage('index.jsp')">跳转页面一</button>
		            	<button class="weui-btn weui-btn_primary"
				           onclick="goToPage('A.html')">跳转页面二</button>
			           <button class="weui-btn weui-btn_primary"
				           onclick="goToPage('tableOnLine.jsp')">table表格(动态加载数据)</button>
		            </div>	
		        </div>
		        <div class="weui-tab__content">
		            <div style="background-color: white; position: absolute;width:100%">
		            	<p style="display: table; margin: 0 auto;height:470px;">长页面</p> 
		            	<p style="display: table; margin: 0 auto; height: 500px">长页面</p> 
		            </div>
		        	<!-- <p style="display: table; margin: 0 auto;">表单页</p> -->
		        </div>
		        <div class="weui-tab__content">
					<div style="background-color: #eee; position: absolute;width:100%; min-height: 100%">
		            	<div class="page__bd">
					        <div class="weui-cells__title">带说明的列表项</div>
					        <div class="weui-cells">
					            <div class="weui-cell">
					                <div class="weui-cell__bd">
					                    <p>标题文字</p>
					                </div>
					                <div class="weui-cell__ft">说明文字</div>
					            </div>
					            <div class="weui-cell weui-cell_swiped" id="scrollBtnLayout">
					                <div class="weui-cell__bd" style="transform: translateX(-68px)" id="scrollBtn">
					                    <div class="weui-cell">
					                        <div class="weui-cell__bd">
					                            <p>标题文字</p>
					                        </div>
					                        <div class="weui-cell__ft">说明文字</div>
					                    </div>
					                </div>
					                <div class="weui-cell__ft">
					                    <a class="weui-swiped-btn weui-swiped-btn_warn" href="javascript:">删除</a>
					                </div>
					            </div>
					        </div>
					
					        <div class="weui-cells__title">带图标、说明的列表项</div>
					        <div class="weui-cells">
					            <div class="weui-cell">
					                <div class="weui-cell__hd"><img src="images/p_b.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
					                <div class="weui-cell__bd">
					                    <p>标题文字</p>
					                </div>
					                <div class="weui-cell__ft">说明文字</div>
					            </div>
					            <div class="weui-cell">
					                <div class="weui-cell__hd"><img src="images/p_b.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
					                <div class="weui-cell__bd">
					                    <p>标题文字</p>
					                </div>
					                <div class="weui-cell__ft">说明文字</div>
					            </div>
					        </div>
					
					        <div class="weui-cells__title">带跳转的列表项</div>
					        <div class="weui-cells">
					            <a class="weui-cell weui-cell_access" href="javascript:;">
					                <div class="weui-cell__bd">
					                    <p>cell standard</p>
					                </div>
					                <div class="weui-cell__ft">
					                </div>
					            </a>
					            <a class="weui-cell weui-cell_access" href="javascript:;">
					                <div class="weui-cell__bd">
					                    <p>cell standard</p>
					                </div>
					                <div class="weui-cell__ft">
					                </div>
					            </a>
					        </div>
					
					        <div class="weui-cells__title">带说明、跳转的列表项</div>
					        <div class="weui-cells">
					            <a class="weui-cell weui-cell_access" href="javascript:;">
					                <div class="weui-cell__bd">
					                    <p>cell standard</p>
					                </div>
					                <div class="weui-cell__ft">说明文字</div>
					            </a>
					            <a class="weui-cell weui-cell_access" href="javascript:;">
					                <div class="weui-cell__bd">
					                    <p>cell standard</p>
					                </div>
					                <div class="weui-cell__ft">说明文字</div>
					            </a>
					
					        </div>
					
					        <div class="weui-cells__title">带图标、说明、跳转的列表项</div>
					        <div class="weui-cells">
					
					            <a class="weui-cell weui-cell_access" href="javascript:;">
					                <div class="weui-cell__hd"><img src="images/p_b.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
					                <div class="weui-cell__bd">
					                    <p>cell standard</p>
					                </div>
					                <div class="weui-cell__ft">说明文字</div>
					            </a>
					            <a class="weui-cell weui-cell_access" href="javascript:;">
					                <div class="weui-cell__hd"><img src="images/p_b.png" alt="" style="width:20px;margin-right:5px;display:block"></div>
					                <div class="weui-cell__bd">
					                    <p>cell standard</p>
					                </div>
					                <div class="weui-cell__ft">说明文字</div>
					            </a>
				        	</div>
					    </div>
		            </div>
				</div>
				
				<div class="weui-tab__content">
					<object type="text/html" data="table.jsp" width="100%" style="position: absolute; height: 100%"></object> 
				</div>
				
				
		        <div class="weui-tab__content">其它页</div>
		    </div>
		    <div class="weui-tabbar"style="top:90%; left: 0px; right: 0px; bottom: 0px; height:10%">
		        <div class="weui-tabbar__item weui-bar__item_on">
		            <img src="./images/p_b.png" alt="" class="weui-tabbar__icon">
		            <p class="weui-tabbar__label">WeUi调用</p>
		        </div>
		        <div class="weui-tabbar__item">
		            <img src="./images/p_b.png" alt="" class="weui-tabbar__icon">
		            <p class="weui-tabbar__label">页面跳转</p>
		        </div>
		        <div class="weui-tabbar__item">
		            <img src="./images/p_b.png" alt="" class="weui-tabbar__icon">
		            <p class="weui-tabbar__label">长页面</p>
		        </div>
		        <div class="weui-tabbar__item">
		            <img src="./images/p_b.png" alt="" class="weui-tabbar__icon">
		            <p class="weui-tabbar__label">信息列表</p>
		        </div>
			  	<div class="weui-tabbar__item">
		            <img src="./images/p_b.png" alt="" class="weui-tabbar__icon">
		            <p class="weui-tabbar__label">表格</p>
			    </div>
		    </div>
		</div>	
	</div>
	
	<div id="container" style="position: absolute; width:100%; height: 100%; display: none;"></div>
	
	

	
	<script type="text/javascript">
		
		function goToPage(page) {
			var hidden = 'hidden';
			var visible = 'visible';
			if (page == '' || page == null || typeof(page) == "undefined") {
				document.getElementById('container').innerHTML = '';
				/* $('#main').removeClass(hidden);
				$('#main').addClass(visible)
				$('#container').removeClass(visible);
				$('#container').addClass(hidden) */
				$('#main').fadeIn();
				$('#container').fadeOut();
			}else {
				document.getElementById('container').innerHTML = '<object type="text/html" data="'+ page +'" width="100%" height="100%"></object>';
				/* $('#main').removeClass(visible);
				$('#main').addClass(hidden)
				$('#container').removeClass(hidden);
				$('#container').addClass(visible) */
				$('#main').fadeOut(300);
				$('#container').fadeIn(300);
				//history.pushState({}, "title", "tab.jsp#page1");
				if (window.location.href.split("#")[1] != page) {
					history.pushState({}, "title", "tab.jsp#" + page);
				}
			}
		}
		//监听导航栏tab
		weui.tab('#tab',{
		    defaultIndex: 0,
		    onChange: function(index){
		        console.log(index);
		    }
		});
		
		//监听刷新&关闭
        window.onbeforeunload=function (event){
            if(event.clientX>document.body.clientWidth && event.clientY < 0 || event.altKey){
            	console.log("关闭浏览器");
                //alert("关闭浏览器");
                return "关闭浏览器"
             }else{
            	 console.log("刷新页面");
                 return "刷新页面";
             }
        }  
        
		//监听返回
        //window.addEventListener("popstate", choosePage, false)
        window.onpopstate = choosePage();
        function choosePage() {
      		console.log(window.location.href)
            var page = window.location.href.split("#")[1];
       		console.log(page);
       		goToPage(page);
		}
        choosePage();
        
        
   		var startx, starty;
	   	//手指接触屏幕
	    	document.getElementById('scrollBtnLayout').addEventListener("touchstart", function(e){
	   	    startx = e.touches[0].pageX;
	   	    starty = e.touches[0].pageY;
	   	    console.log("start:"+startx + "," +starty);
	   	}, false); 
	   	//手指离开屏幕
	   	document.getElementById('scrollBtnLayout').addEventListener("touchend", function(e) {
	   	    var endx, endy;
	   	    endx = e.changedTouches[0].pageX;
	   	    endy = e.changedTouches[0].pageY;
	   	    console.log("end:"+endx + "," +endy);
	   	 	if (translateX > -34) {
	   	    	translateX = 0;
			}else{
				translateX = -68;
			}
	   	    document.getElementById('scrollBtn').style.transform = "translateX("+ translateX + "px)"
	   	}, false);
		//手指在屏幕滑动
		var translateX = -68;
	   	document.getElementById('scrollBtnLayout').addEventListener("touchmove", function(e){
	   	    var movex, movey;
	   	    movex = e.touches[0].pageX - startx;
	   	    movey = e.touches[0].pageY - starty;
	   	    console.log("move:"+movex + "," +movey);
	   	    var $scrollBtn = $('#scrollBtn');
	   	    translateX = translateX + movex/4;
	   	    if (translateX > 0) {
	   	    	translateX = 0;
			}else if (translateX < -68) {
				translateX = -68;
			}
	   	    document.getElementById('scrollBtn').style.transform = "translateX("+ translateX + "px)"
	   	}, false);	 
   		
   		
	</script>
</body>
</html>