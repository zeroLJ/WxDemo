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
</head>
<body>
	<button class="weui-btn weui-btn_primary"
		onclick="alert()">提示框</button>
	<button class="weui-btn weui-btn_primary"
		onclick="actionSheet()">选项列表</button>
	<button class="weui-btn weui-btn_primary"
		onclick="confirm_()">普通确认框</button>
	<button class="weui-btn weui-btn_primary"
		onclick="confirm2()">自定义标题确认框</button>
	<button class="weui-btn weui-btn_primary"
		onclick="confirm3()">带回调确认框</button>
	<button class="weui-btn weui-btn_primary"
		onclick="confirm4()">带回调的自定义标题确认框</button>
	<button class="weui-btn weui-btn_primary"
		onclick="confirm5()">自定义按钮的确认框</button>
	<button class="weui-btn weui-btn_primary"
		onclick="loading()">loading弹窗</button>	
	<button class="weui-btn weui-btn_primary"
		onclick="gallery()">图片浏览(gallery)</button>	
	<button class="weui-btn weui-btn_primary"
		onclick="picker1()">单列选择器(picker)</button>
	<button class="weui-btn weui-btn_primary"
		onclick="picker2()">多列选择器(picker)</button>	
	<button class="weui-btn weui-btn_primary"
		onclick="picker3()">级联选择器(picker)</button>	
	<button class="weui-btn weui-btn_primary"
		onclick="datePicker()">时间选择器(datePicker)</button>
	<button class="weui-btn weui-btn_primary"
		onclick="toast('你好')">toast</button>
	<button class="weui-btn weui-btn_primary"
		onclick="topTips('错误提示内容')">toptips 顶部报错提示</button>
		
		
		
	<p class="page__desc">搜索框(searchbar)</p>
	<div class="weui-search-bar" id="searchBar">
	    <form class="weui-search-bar__form">
	        <div class="weui-search-bar__box">
	            <i class="weui-icon-search"></i>
	            <input type="search" class="weui-search-bar__input" placeholder="搜索" required="" onchange="s()">
	            <a href="javascript:" class="weui-icon-clear"></a>
	        </div>
	        <label class="weui-search-bar__label">
	            <i class="weui-icon-search"></i>
	            <span>搜索</span>
	        </label>
	    </form>
	    <a href="javascript:" class="weui-search-bar__cancel-btn">取消</a>
	</div>
	<p class="page__desc">滑动条(slider)</p>
	<div class="weui-slider-box">
	    <div id="slider" class="weui-slider">
	        <div class="weui-slider__inner">
	            <div class="weui-slider__track"></div>
	            <div class="weui-slider__handler"></div>
	        </div>
	    </div>
	    <div id="sliderValue" class="weui-slider-box__value"></div>
	</div>
	
	<p class="page__desc">tab导航栏(tab在上方)</p>
	<div class="weui-tab" id="tab">
	    <div class="weui-navbar">
	        <div class="weui-navbar__item">反馈</div>
	        <div class="weui-navbar__item">按钮</div>
	        <div class="weui-navbar__item">上传</div>
	        <div class="weui-navbar__item">其它</div>
	    </div>
	    <div class="weui-tab__panel">
	        <div class="weui-tab__content">反馈页</div>
	        <div class="weui-tab__content">
	        	<button class="weui-btn weui-btn_primary"
		           onclick="picker2()">多列选择器(picker)</button>	
	        </div>
	        <div class="weui-tab__content">上传页</div>
	        <div class="weui-tab__content">其它页</div>
	    </div>
	</div>
	
	<p class="page__desc" style="margin-top: 10px">tab导航栏(tab在下方)</p>
	<div class="weui-tab" id="tab">
		<div class="weui-tab__panel">
	        <div class="weui-tab__content">反馈页</div>
	        <div class="weui-tab__content">
	        	<button class="weui-btn weui-btn_primary"
		           onclick="picker2()">多列选择器(picker)</button>	
	        </div>
	        <div class="weui-tab__content">上传页</div>
	        <div class="weui-tab__content">其它页</div>
	    </div>
	    
	    <div class="weui-tabbar">
	        <div class="weui-navbar__item">反馈</div>
	        <div class="weui-navbar__item">按钮</div>
	        <div class="weui-navbar__item">上传</div>
	        <div class="weui-navbar__item">其它</div>
	    </div>
	    
	</div>
	
	
	<div class="page actionsheet js_show">
    <div class="page__hd">
        <h1 class="page__title">ActionSheet</h1>
        <p class="page__desc">弹出式菜单</p>
    </div>
    <div class="page__bd page__bd_spacing">
        <a href="javascript:;" class="weui-btn weui-btn_default" id="showIOSActionSheet" onclick="">iOS ActionSheet</a>
        <a href="javascript:;" class="weui-btn weui-btn_default" id="showAndroidActionSheet">Android ActionSheet</a>
    </div>
    <!--BEGIN actionSheet-->
    <div>
        <div class="weui-mask" id="iosMask" style="opacity: 0; display: none;"></div>
        <div class="weui-actionsheet" id="iosActionsheet">
            <div class="weui-actionsheet__title">
                <p class="weui-actionsheet__title-text">这是一个标题，可以为一行或者两行。</p>
            </div>
            <div class="weui-actionsheet__menu">
                <div class="weui-actionsheet__cell">示例菜单</div>
                <div class="weui-actionsheet__cell">示例菜单</div>
                <div class="weui-actionsheet__cell">示例菜单</div>
                <div class="weui-actionsheet__cell">示例菜单</div>
            </div>
            <div class="weui-actionsheet__action">
                <div class="weui-actionsheet__cell" id="iosActionsheetCancel">取消</div>
            </div>
        </div>
    </div>

    <div class="weui-skin_android" id="androidActionsheet" style="display: none">
        <div class="weui-mask"></div>
        <div class="weui-actionsheet">
            <div class="weui-actionsheet__menu">
                <div class="weui-actionsheet__cell">示例菜单</div>
                <div class="weui-actionsheet__cell">示例菜单</div>
                <div class="weui-actionsheet__cell">示例菜单</div>
            </div>
        </div>
    </div>
  
	</div>

	<script type="text/javascript" class="actionsheet js_show">
	    // ios
	    $(function(){
	        var $iosActionsheet = $('#iosActionsheet');
	        var $iosMask = $('#iosMask');

	        function hideActionSheet() {
	            $iosActionsheet.removeClass('weui-actionsheet_toggle');
	            $iosMask.fadeOut(200);
	        }

	        //document.getElementById("iosActionsheetCancel").fadeOut;
	        $iosMask.on('click', hideActionSheet);
	        $('#iosActionsheetCancel').on('click', hideActionSheet);
	        $("#showIOSActionSheet").on("click", function(){
	            $iosActionsheet.addClass('weui-actionsheet_toggle');
	            $iosMask.fadeIn(200);
	        });
	    });

	    // android
	    $(function(){
	        var $androidActionSheet = $('#androidActionsheet');
	        var $androidMask = $androidActionSheet.find('.weui-mask');

	        $("#showAndroidActionSheet").on('click', function(){
	            $androidActionSheet.fadeIn(200);
	            $androidMask.on('click',function () {
	                $androidActionSheet.fadeOut(200);
	            });
	        });
	    });
	 </script>
	
	<script type="text/javascript">
		//官方文档https://github.com/Tencent/weui.js/blob/master/docs/README.md
		function alert() {
			weui.alert('alert');
		}
	
		function actionSheet() {
			weui.actionSheet([
			    {
			        label: '拍照',
			        onClick: function () {
			            console.log('拍照');
			        }
			    }, {
			        label: '从相册选择',
			        onClick: function () {
			            console.log('从相册选择');
			        }
			    }, {
			        label: '其他',
			        onClick: function () {
			            console.log('其他');
			        }
			    }
			], [
			    {
			        label: '取消',
			        onClick: function () {
			            console.log('取消');
			        }
			    }
			], {
			    className: 'custom-classname',
			    onClose: function(){
			        console.log('关闭');
			    }
			});
		}
		
		function confirm_() {
			weui.confirm('普通的confirm');
		}
		
		function confirm2() {
			weui.confirm('自定义标题的confirm', { title: '自定义标题' });
		}
		
		function confirm3() {
			weui.confirm('带回调的confirm', function(){ console.log('yes') }, function(){ console.log('no') });
		}
		
		function confirm4() {
			weui.confirm('带回调的自定义标题的confirm', function(){ console.log('yes') }, function(){ console.log('no') }, {
			    title: '自定义标题'
			});
		}
		
		function confirm5() {
			weui.confirm('自定义按钮的confirm', {
			    title: '自定义按钮的confirm',
			    buttons: [{
			        label: 'NO',
			        type: 'default',
			        onClick: function(){ console.log('no') }
			    }, {
			        label: 'YES',
			        type: 'primary',
			        onClick: function(){ console.log('yes') }
			    }]
			});
		}
		
		function loading() {
			var loading = weui.loading('loading', {
			    className: 'custom-classname'
			});
			setTimeout(function () {
			    loading.hide(function() {
			         console.log('`loading` has been hidden');
			     });
			}, 3000);
		}
		
		function gallery () {
			var gallery = weui.gallery('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535538004708&di=5dc69a378b01c9a9567751132875b240&imgtype=0&src=http%3A%2F%2Fs1.knowsky.com%2F20160703%2Fouq4yxwmkqm30.jpg', {
			    className: 'custom-classname',
			    onDelete: function(){
			        if(confirm('确定删除该图片？')){
			        	console.log('删除'); 
			        	gallery.hide(function() {
				             console.log('`gallery` has been hidden');
				         });	
			        }else{
			        	  console.log('`gallery` cancel delete');
			        }
				} 
			})
		}
		
		function picker1() {
			// 单列picker
		 	weui.picker([
			{
			    label: '飞机票',
			    value: 0,
			    disabled: true // 不可用
			},
			{
			    label: '火车票',
			    value: 1
			},
			{
			    label: '汽车票',
			    value: 3
			},
			{
			    label: '公车票',
			    value: 4,
			}
			], {
			   className: 'custom-classname',
			   container: 'body',
			   defaultValue: [3],
			   onChange: function (result) {
				   console.log(result[0].label);
			   },
			   onConfirm: function (result) {
			       console.log(result[0].label);
			   },
			   id: 'singleLinePicker'
			}); 
			
		}
		
		function picker2() {
			// 多列picker
			 weui.picker([
			    {
			        label: '1',
			        value: '1'
			    }, {
			        label: '2',
			        value: '2'
			    }, {
			        label: '3',
			        value: '3'
			    }
			], [
			    {
			        label: 'A',
			        value: 'A'
			    }, {
			        label: 'B',
			        value: 'B'
			    }, {
			        label: 'C',
			        value: 'C'
			    }
			], {
			    defaultValue: ['3', 'A'],
			    onChange: function (result) {
			        console.log("第一列："+result[0].label+"\n第二列："+result[1].label);
			    },
			    onConfirm: function (result) {
			    	 console.log("第一列："+result[0].label+"\n第二列："+result[1].label);
			    },
			    id: 'multiPickerBtn'
			});
		}
		
		function picker3() {
			// 级联picker
			weui.picker([
			{
			    label: '飞机票',
			    value: 0,
			    children: [
			        {
			            label: '经济舱',
			            value: 1
			        },
			        {
			            label: '商务舱',
			            value: 2
			        }
			    ]
			},
			{
			    label: '火车票',
			    value: 1,
			    children: [
			        {
			            label: '卧铺',
			            value: 1,
			            disabled: true // 不可用
			        },
			        {
			            label: '坐票',
			            value: 2
			        },
			        {
			            label: '站票',
			            value: 3
			        }
			    ]
			},
			{
			    label: '汽车票',
			    value: 3,
			    children: [
			        {
			            label: '快班',
			            value: 1
			        },
			        {
			            label: '普通',
			            value: 2
			        }
			    ]
			}
			], {
			   className: 'custom-classname',
			   container: 'body',
			   defaultValue: [1, 3],
			   onChange: function (result) {
				   console.log("第一列："+result[0].label+"\n第二列："+result[1].label);
			   },
			   onConfirm: function (result) {
				   console.log("第一列："+result[0].label+"\n第二列："+result[1].label);
			   },
			   id: 'doubleLinePicker'
			});
		}
		
		function datePicker() {
			 weui.datePicker({
			     start: new Date(), // 从今天开始
			     end: 2030,
			     defaultValue: [2020, 6, 9],
			     onChange: function(result){
			         console.log(result);
			     },
			     onConfirm: function(result){
			         console.log(result);
			     },
			     id: 'datePicker'
			 }); 

			/*  weui.datePicker({
			     start: new Date(), // 从今天开始
			     end: 2030,
			     cron: '* * 0,6',  // 每逢周日、周六
			     onChange: function(result){
			         console.log(result);
			     },
			     onConfirm: function(result){
			         console.log(result);
			     },
			     id: 'datePicker'
			 }); */
		}
		
		function toast(string) {
			//weui.toast(string,3000);
			
			weui.toast('操作成功', {
			    duration: 3000,
			    className: 'custom-classname',
			    callback: function(){ console.log('close') }
			});
		}
		
		function topTips(string) {
			//weui.topTips(string);
			weui.topTips(string, function(){ console.log('close') });
		}
		
		//启动搜索框
		weui.searchBar('#searchBar');
		function s() {
			console.log("sdsds");
		}
		//启动滑动条
		weui.slider('#slider', {
		    step: 10,
		    defaultValue: 40,
		    onChange: function(percent){
		        console.log(percent);
		    }
		});
		
		//监听导航栏tab
		weui.tab('#tab',{
		    defaultIndex: 0,
		    onChange: function(index){
		        console.log(index);
		    }
		});
	
	
	</script>
</body>
</html>