

// JavaScript Document
$(function(){
	imgLazyloadLib();
	//setScroll();
	setEventListen();
})
$(window).load(function(){
	diyAutoHeight();
	imgLazyloadLib();
});
$(window).resize(function(){
	if(window.resizeTimeout)window.clearTimeout(window.resizeTimeout);
	window.resizeTimeout=setTimeout(function(){
		diyAutoHeight();
	},350);
});
function imgLazyloadLib(obj){
	if(obj){
		obj.lazyload({event:'scroll mouseover',effect: "fadeIn",threshold:0,failure_limit:80,skip_invisible:false,load:function(){
			var father=$(this).parents('.view').first();
			if(father.length>0){
				setTimeout(function(){diyAutoHeight(father);},500);
			}else{
				father=$(this).parents('.layout').first();
				if(father.length>0){
					setTimeout(function(){diyAutoHeight(father);},500);
				}
			}
		}});
	}else{
		$("img").lazyload({event:'scroll mouseover',effect: "fadeIn",threshold:0,failure_limit:80,skip_invisible:false,load:function(){
			var father=$(this).parents('.view').first();
			if(father.length>0){
				setTimeout(function(){diyAutoHeight(father);},500);
			}else{
				father=$(this).parents('.layout').first();
				if(father.length>0){
					setTimeout(function(){diyAutoHeight(father);},500);
				}
			}
		}});
	}
}
var scrollTime=300;
function setEventListen(){
	$(".ev_c_scrollTop").click(function(){
		//滚动到顶部
		//$("html").getNiceScroll().resize();
		//$("html").getNiceScroll(0).doScrollTop(0);
		$("html,body").stop().animate({scrollTop:"0px"},window.scrollTime);
		//$("html").stop().animate({scrollTop:"0px"},window.scrollTime);
	});
	$(".ev_c_scrollView").click(function(){
		//鼠标点击：滚动到模块位置
		var settings=settingsLib($(this));
		var viewid=settings.getSetting('eventSet.scrollView');
		if($("#"+viewid).length>0){
			//$("html").getNiceScroll().resize();
			//$("html").getNiceScroll(0).doScrollTop($("#"+viewid).offset().top);
			$("html,body").stop().animate({scrollTop:$("#"+viewid).offset().top+"px"},window.scrollTime);
		}
	});
	$(".ev_c_showView").click(function(){
		//鼠标点击：显示模块
		showEventView($(this));
	});
	$(".ev_c_hidView").click(function(){
		//鼠标点击：隐藏模块
		hidEventView($(this));
	});
	$(".ev_c_tabView").click(function(){
		//鼠标点击：显示与隐藏模块
		showHidEventView($(this));
	});
	$(".ev_m_tabView").hover(function(){
		//鼠标经过：显示与隐藏模块
		showHidEventView($(this));
	});
	$(".view").click(function(){
		$(this).children(".view_contents").addClass("diyCurTab");
		var settings=settingsLib($(this));
		var unitViewSet=settings.getSetting('unitViewSet');
		if(unitViewSet&&unitViewSet.length>0){
			for(key in unitViewSet){
				$("#"+unitViewSet[key]).children(".view_contents").removeClass("diyCurTab");
			}
		}
	});
}
function showHidEventView(obj){
	var settings=settingsLib(obj);
	var showViews=settings.getSetting('eventSet.showViews');
	var hidViews=settings.getSetting('eventSet.hidViews');
	if(!showViews)showViews=new Array();
	if(!hidViews)hidViews=new Array();
	var doubleKey=new Array();
	//获取重复值
	if(showViews.length>0){
		for(s_key in showViews){
			if(hidViews.length>0){
				for(h_key in hidViews){
					if(showViews[s_key]==hidViews[h_key]){
						doubleKey.push(showViews[s_key]);
					}
				}
			}
		}
	}
	//隐藏
	if(hidViews.length>0){
		for(key in hidViews){
			if($.inArray(hidViews[key],doubleKey)<0){
				$("#"+hidViews[key]).css({"display":"none"});
				diyAutoHeight($("#"+hidViews[key]));
			}
		}
	}
	//显示
	if(showViews.length>0){
		for(key in showViews){
			if($.inArray(showViews[key],doubleKey)<0){
				$("#"+showViews[key]).css({"display":"block"});
				diyAutoHeight($("#"+showViews[key]));
			}
		}
	}
	//双向显示
	if(doubleKey.length>0){
		for(key in doubleKey){
			if($("#"+doubleKey[key]).length>0){
				if($("#"+doubleKey[key]).is(":hidden")){
					$("#"+doubleKey[key]).css({"display":"block"});
					diyAutoHeight($("#"+doubleKey[key]));
				}else{
					$("#"+doubleKey[key]).css({"display":"none"});
					diyAutoHeight($("#"+doubleKey[key]));
				}
			}
		}
	}
}
function showEventView(obj){
	var settings=settingsLib(obj);
	var showViews=settings.getSetting('eventSet.showViews');
	if(!showViews)showViews=new Array();
	if(showViews.length>0){
		for(key in showViews){
			$("#"+showViews[key]).css({"display":"block"});
			diyAutoHeight($("#"+showViews[key]));
		}
	}
}
function hidEventView(obj){
	var settings=settingsLib(obj);
	var hidViews=settings.getSetting('eventSet.hidViews');
	if(!hidViews)hidViews=new Array();
	if(hidViews.length>0){
		for(key in hidViews){
			$("#"+hidViews[key]).css({"display":"none"});
			diyAutoHeight($("#"+hidViews[key]));
		}
	}
}
function getPageScrollTop(){
	var scrollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
	return scrollTop;
}
function getNowPage(){
	var width=$(window).width();
	var max_width=window.DIY_PAGE_SIZE;
	max_width=parseFloat(max_width);
	if(isNaN(max_width))max_width=1200;
	if(width>=max_width){
		return 'pc';
	}else if(width>=640){
		return 'pad';
	}else{
		return 'mobile';
	}
}
$(window).scroll(function(){
    var scrollTop=getPageScrollTop();
    var nowPage=getNowPage();
    if($(".scrollToTop_"+nowPage).length>0){
    	$(".scrollToTop_"+nowPage).each(function(){
    		var old_top=$(this).attr("old_top_"+nowPage);
    		var old_left=$(this).attr("old_left_"+nowPage);
    		var old_width=$(this).attr("old_width_"+nowPage);
    		if(!old_top||old_top==""){
    			old_top=$(this).offset().top;
    			$(this).attr("old_top_"+nowPage,old_top);
    		}
    		if(!old_left||old_left==""){
    			old_left=$(this).offset().left;
    			$(this).attr("old_left_"+nowPage,old_left);
    		}
    		if(!old_width||old_width==""){
    			old_width=$(this).width();
    			$(this).attr("old_width_"+nowPage,old_width);
    		}
    		old_top=parseFloat(old_top);
    		old_left=parseFloat(old_left);
    		old_width=parseFloat(old_width);
    		if(scrollTop>=old_top){
                let objId = $(this).attr('id');
                let true_width = objId.includes('layout_')?'100%':old_width+"px"; //共享区域+区域布局固定100%,解决客户老喜欢缩放浏览器比例问题
    			$(this).css({"position":"fixed","z-index":9999999,"top":"0px","width":true_width,"left":old_left+"px"});
    			$(this).parents(".view").css({"z-index":9999999});
    			//$(this).parents(".view").children(".view_contents").css({"overflow":"visible"});
    			$(this).parents(".layout").css({"z-index":9999999});
    			//$(this).parents(".layout").children(".view_contents").css({"overflow":"visible"});
    			// 通过设置边距，清除悬浮对下一个元素的影响
    			if ($(this).hasClass('layout')) {
    			    $(this).next().css('margin-top', (Number($(this).css('margin-top').replace('px', '')) + $(this).height()) + 'px');
    			}
    		}else{
    			$(this).css({"position":"","z-index":"","top":"","width":"","left":""});
    			$(this).parents(".view").css({"z-index":""});
    			//$(this).parents(".view").children(".view_contents").css({"overflow":""});
    			$(this).parents(".layout").css({"z-index":""});
    			//$(this).parents(".layout").children(".view_contents").css({"overflow":""});
    			$(this).attr("old_top_"+nowPage,null);
    			$(this).attr("old_left_"+nowPage,null);
    			$(this).attr("old_width_"+nowPage,null);
    			// 通过设置边距，清除悬浮对下一个元素的影响
    			if ($(this).hasClass('layout')) {
    			    $(this).next().css('margin-top', '');
    			}
    		}
    	});
    }
});
function diyAutoHeight(obj){
	if(obj&&obj.length>0){
		//针对选项卡做特殊处理
		if(obj.children(".view_contents").children("form").length>0 && obj.children(".view_contents").children("form").children(".view").length>0){
			/*if(obj.children(".view_contents").children("form").children(".view").length>0){*/
				obj.children(".view_contents").children("form").children(".view").each(function(){
					if($(this).is(":visible")){
						diyAutoHeightDo($(this));
						return false;
					}
				});
			/*}else{
				diyAutoHeightDo(obj);
			}*/
		}else if(obj.children(".view_contents").children(".niceTab").find(".niceTabShow").length>0 && obj.children(".view_contents").children(".niceTab").find(".niceTabShow").children(".view").length>0){
			/*if(obj.children(".view_contents").children(".niceTab").find(".niceTabShow").children(".view").length>0){*/

				obj.children(".view_contents").children(".niceTab").find(".niceTabShow").children(".view").each(function(){
					if($(this).is(":visible")){
						diyAutoHeightDo($(this));
						return false;
					}
				});
			/*}else{
				diyAutoHeightDo(obj);
			}*/
		}else{
			diyAutoHeightDo(obj);
		}
	}else{
		setTimeout(function(){
			$(".view").each(function(){
				if(!$(this).hasClass("includeBlock")){
					diyAutoHeightDo($(this));
				}
			});
		},500);
	}
}
function diyAutoHeightFatherDo(father,obj){
	var settings=settingsLib(father);
	var autoHeight=settings.getSetting('autoHeight');

	if(autoHeight&&autoHeight=="true"){
		//开启了允许自动高度
		var minHeight=obj.offset().top+obj.height()-father.offset().top;
		if(obj.siblings(".view").length>0){
			obj.siblings(".view").each(function(){
				if($(this).is(":visible")){
					var tempHeight=$(this).offset().top+$(this).height()-father.offset().top;
					if(tempHeight>minHeight){
						minHeight=tempHeight;
					}
				}
			});
		}
		//2019-5-20  选项卡添加选项高度计算
		var kind=settings.getSetting('kind');
		var name=settings.getSetting('name');
		var data=settings.getSetting('data');
		if (kind=="选项卡" && name=="tab") {
			var tab_nav_obj = father.children().children().children().eq(0);
			var tab_nav_height = tab_nav_obj.css('height');
			if ( tab_nav_height != undefined && tab_nav_height != undefined && typeof(data) != 'undefined' && data &&  data.hasOwnProperty('showtype') &&  data.showtype == "bottom") {
				minHeight = parseFloat(tab_nav_height) + Number(minHeight);
			}
		}
		father.css({"height":minHeight+"px"});
		//console.log('diyAutoHeightFatherDo set father height', father.height());
		diyAutoHeightDo(father);
	}
}
function diyAutoHeightDo(obj){
	if(obj.is(":visible")){
		var father=obj.parents(".view").first();
		if(father.length<=0)father=obj.parents(".layout").first();
		if(father.length>0){
			var settings=settingsLib(father);
			var autoHeight=settings.getSetting('autoHeight');
			if(autoHeight&&autoHeight=="true"){
				if(father.offset().top+father.height()<obj.offset().top+obj.height()){
					father.css({"height":(obj.offset().top+obj.height()-father.offset().top)+"px"});
					diyAutoHeightDo(father);
				}else{
					diyAutoHeightFatherDo(father,obj);
				}
			}
		}
	}
}
function setScroll(){
	if(typeof($("html").niceScroll)=="function"){
		//scrollspeed 滚动速度 mousescrollstep高速滚动鼠标滚轮 hidecursordelay设置在微秒淡出滚动条的延迟时间 smoothscroll平滑滚动
		$("html").niceScroll({zindex:99999,cursoropacitymax:0.8,cursoropacitymin:0.3,horizrailenabled:false,mousescrollstep:60,smoothscroll:true});
	}else{
		setTimeout(setScroll,500);
	}
}
var settingsLib=function(view){
	var main={
		view:null,
		setup:function(obj){
			if(window.viewsSettings&&window.viewsSettings[obj.attr("id")]){
				this.init(window.viewsSettings[obj.attr("id")]);
				this.view=obj;
			}else{
				this.init({});
			}
		},
		init:function(obj){
			if(typeof(obj)=='object'){
				this.settings=obj;
			}else if(obj!="" && typeof obj == 'string'){
				eval('if(typeof('+obj+')=="object"){this.settings='+obj+';}else{this.settings={};}');
			}else{
				this.settings={};
			}
		},
		setSetting:function(k,v){
			if(!this.settings){
				this.settings={};
			}
			var keyArray=k.split(".");
      		var val='this.settings';
			for (key in keyArray){
				if(keyArray[key]&&keyArray[key]!=''){
					if(eval(val+'["'+keyArray[key]+'"]')){
						val=val+'["'+keyArray[key]+'"]';
					}else{
						eval(val+'["'+keyArray[key]+'"]={}');
						val=val+'["'+keyArray[key]+'"]';
					}
				}
			}
			if(v==null){
				eval("delete "+val);
			}else{
				eval(val+"=v");
			}
		},
		getSetting:function(key){
			if(!this.settings){
				this.settings={};
			}
			if(key){
				var keyArray=key.split(".");
				var val='this.settings';
				for (key in keyArray){
					if(keyArray[key]&&keyArray[key]!=''){
						if(eval(val+'["'+keyArray[key]+'"]')){
							val=val+'["'+keyArray[key]+'"]';
							continue;
						}else{
							val=null;
							break;
						}
					}
				}
				return eval(val);
			}else{
				return this.settings;
			}
		},
		saveSettings:function(obj){
			if(typeof(obj)=="object"&&this.settings&&obj.hasClass("view")){
				window.viewsSettings[obj.attr("id")]=this.settings;
			}else if(this.view&&typeof(this.view)=="object"&&this.settings&&this.view.hasClass("view")){
				window.viewsSettings[this.view.attr("id")]=this.settings;
			}
		}
	};
	if(view){
		main.view=view;
		main.setup(view);
	}
	return main;
}

function checkInputV(obj,type){
	console.log($(obj).val());
	console.log('类型：'+type);
}

function GetUrlPara(){
	var url = document.location.toString();
	var arrUrl = url.split("?");
	var paras='';
	if(arrUrl.length>1){
		var para = arrUrl[1];
		var arrUrl2=para.split("&");
		arrUrl2.forEach(function(e){
			if(e.indexOf("mod=")>=0||e.indexOf("act=")>=0){
                return;
            } else if (e.indexOf("#")>=0) {
                paras+=e.substr(0, e.indexOf("#"))+"&";
			}else{
				paras+=e+"&";
			}
		})
	}
	return paras;
}

function RequestURL(viewid, sys_url, moreParams){
	var serverUrl = '//'+DIY_JS_SERVER+'/sysTools.php?mod=viewsConn&rtype=json&idweb='+DIY_WEBSITE_ID+'&'+sys_url;
	var settings = settingsLib($("#"+viewid));
	if($("#"+viewid+" .productorder").length > 0){
		let po = $("#"+viewid+" .productorder").attr('po');
		let po_type = $("#"+viewid+" .productorder").attr('po_type');
		moreParams = moreParams?moreParams + "po="+po + "&po_type="+po_type+"&":"";
	}
	var params = "";
	if(settings && settings.getSetting("data") && viewid.indexOf('download') == -1 ){
		$.each(settings.getSetting("data"), function(key, val){
			if($.isArray(val)){
				$.each(val, function(key2, val2){
					params += "&"+key+"[]="+val2;
				});
			}else{
				params += "&"+key+"="+val;
			}
		});
		if(params) serverUrl += params;
	}
	var params2 = GetUrlPara();
	if(params2) serverUrl += "&" + params2;
	if(moreParams) serverUrl += "&" + moreParams;
	var scriptString = "<scr"+"ipt type='text/javascript' src="+serverUrl+"></scr"+"ipt>";
	//$.ajaxSettings.async = false;
	$.ajax({
	  dataType: 'jsonp',
	  crossDomain: true,
	  url: serverUrl,
	  xhrFields:{withCredentials:true},
	  success: function(result){
		if(result.error) alert(result.error);
		else{
			if(typeof(history.replaceState) != 'undefined'){
				var obj={};
				var hstate=JSON.stringify(history.state);
				if(hstate!='null'&& hstate!=null){
					eval('var hjson = ' + hstate);
					obj=hjson;
				}
				var key="moreParams"+viewid;
				obj[key]=moreParams;
				//var strparam=viewid+":"+moreParams;
				//history.replaceState({("moreParams"+viewid):moreParams},"","");
				history.replaceState(obj,"","");
			}
			$("#"+viewid).children(".view_contents").html(result.html);
			$("#"+viewid).children(".view_contents").show();
			setTimeout(function(){
				diyAutoHeight($("#"+viewid));
			},500);

		}
	}});
	/*
	$.getJSON(serverUrl, function(result){
		if(result.error) alert(result.error);
		else{
			$("#"+viewid).children(".view_contents").html(result.html);
			$("#"+viewid).show();
			setTimeout(function(){
				diyAutoHeight($("#"+viewid));
			},500);
		}
	});*/
	//$("#"+viewid).append(scriptString);
}
/*
 * 将一个数组分成几个同等长度的数组
 * array[分割的原数组]
 * size[每个子数组的长度]
 * author zhaobin
 */
 function sliceArray(array, size) {
    var result = [];
    for (var x = 0; x < Math.ceil(array.length / size); x++) {
        var start = x * size;
        var end = start + size;
        result.push(array.slice(start, end));
    }
    return result;
}
//导航公共监听函数
function setDhListen(style,obj,params){
	var father=$(obj).parents(".dh").first();
	if(father.length>0){
		switch(style){
			case 'style_01':
				father.find(".miniMenu").toggleClass("Mslide");
				father.find(".miniMenu").toggleClass("dhAreaSet");
	            if($("body").css("position")=="relative"){
	                $("body").css({"position":"fixed","width":"100%"});
	            }else{
	                $("body").css({"position":"relative","width":"100%"});
	            }
				break;
			case 'style_02':
				if(params=="open"){
					father.find(".Style_02_miniMenu .menuMain").css("display","block");
				}else{
					father.find(".Style_02_miniMenu .menuMain").css("display","none");
				}
				break;
			case 'style_03':
				if(params=="mobi_more"){
					$(obj).parent().siblings(".mobi_menuUl02").toggle();
				}else if(params=="m_icoFont"){
					$(obj).parents(".mobi_main").hide();
				}else if(params=="mobi_top"){
					$(obj).siblings(".mobi_main").show();
				}
				break;
			case 'style_04':
				var width = $(window).width();
                var newW = width+18;
                father.find(".newWidth").css("width",newW);
                father.find(".miniMenu").toggleClass("Mslide");
                if($("body").css("position")=="relative"){
                    $("body").css({"position":"fixed","width":"100%"});
                }else{
                    $("body").css({"position":"relative","width":"100%"});
                }
				break;
			case 'type05':
						father.find(".mobileCon").show();
						father.find(".mobileCon").animate({left:'0'},600,function(){
							father.find(".mobileIcon").hide();
						})
						if($("body").css("position")=="relative"){
								$("body").css({"position":"fixed","width":"100%"});
						}else{
								$("body").css({"position":"relative","width":"100%"});
						}
				break;
			case 'type06':
						father.find(".mobileCon").animate({left:'-100%'},600,function(){
							father.find(".mobileCon").hide();
							father.find(".mobileIcon").show();
						});
						if($("body").css("position")=="relative"){
								$("body").css({"position":"fixed","width":"100%"});
						}else{
								$("body").css({"position":"relative","width":"100%"});
						}
				break;
		}
        //手机上，导航的遮盖不能盖住视频功能修改
        if($("body").css("position")=="relative"){
            $('video').show();
        }else{
            $('video').hide();
        }
	}
}
//-------------选项卡-----------------------------------------------
//鼠标左右拖拽事件
function setScroll_Choice(tabId){
	if(navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i)) return;
	if(typeof($(".tab_nav .tab_scroll", $("#"+tabId)).niceScroll)=="function"){
		$(".tab_nav .tab_scroll", $("#"+tabId)).niceScroll({zIndex:99999,cursoropacitymax:0,cursoropacitymin:0,horizrailenabled:true,autohidemode:true,touchbehavior:true});
	}else{
		setTimeout(setScroll_Choice,500);
	}
}

/*选项卡切换效果*/
function changeTabFunc(tabId,index){
	$(".tab_nav .tab_li", $("#"+tabId)).eq(index).addClass("tabCurItem").siblings().removeClass("tabCurItem");
	$(".tab_box .tab_div", $("#"+tabId)).eq(index).addClass("niceTabShow").siblings().removeClass("niceTabShow");
	/*↓↓↓↓选项卡下的特殊模块处理↓↓↓↓*/
	if(typeof changeBannerHeight != 'undefined' && changeBannerHeight instanceof Function){
		changeBannerHeight(tabId);		//轮播图宽高度适应
	}
	/*↑↑↑↑选项卡下的特殊模块处理↑↑↑↑*/
	diyAutoHeight($("#"+tabId.substr(4)));
}

/*鼠标悬浮效果*/
function setHover_Choice(tabId){
	$(".tab_nav .tab_li", $("#"+tabId)).unbind('hover');
	$(".tab_nav .tab_li", $("#"+tabId)).hover(function(){
		var index = $(this).index();
		changeTabFunc(tabId,index);
	});
}
/*鼠标点击效果*/
function setClick_Choice(tabId){
	$(".tab_nav .tab_li", $("#"+tabId)).unbind('click');
	$(".tab_nav .tab_li", $("#"+tabId)).click(function(){
		var index = $(this).index();
		changeTabFunc(tabId,index);
	});
}
/*自动播放*/
function setAnimat_int(tabId,time){
	if(!time)time=5;
	time=time*1000;
	var viewid=tabId.substr(4);

	if(!window.tabConfigAnimat)window.tabConfigAnimat={};
	//初始化
	window.tabConfigAnimat[viewid]=setTimeout(doAnimat,time);

	$("#"+viewid).mousemove(function(){
		if(window.tabConfigAnimat[viewid])window.clearTimeout(window.tabConfigAnimat[viewid]);
	});
	$("#"+viewid).mouseover(function(){
		if(window.tabConfigAnimat[viewid])window.clearTimeout(window.tabConfigAnimat[viewid]);
	});
	$("#"+viewid).mouseout(function(){
		window.tabConfigAnimat[viewid]=setTimeout(doAnimat,time);
	});

	function doAnimat(){
		if(window.tabConfigAnimat[viewid])window.clearTimeout(window.tabConfigAnimat[viewid]);
		var index=$(".tab_nav .tabCurItem", $("#"+tabId)).index();
		index=index+1;
		if(index>=$(".tab_nav .tab_li", $("#"+tabId)).length){
			index=0;
		}
		changeTabFunc(tabId,index);
		window.tabConfigAnimat[viewid]=setTimeout(doAnimat,time);
	}
}
//获取鼠标拖拽区域的总宽度
function tab_style03_init(tabId){
	var total=0;
	var obj=$(".tab_li", $("#"+tabId));
	$(".tab_li", $("#"+tabId)).each(function(){
		total+=$(this).width();
	});
	$(".tab_ul_top", $("#"+tabId)).css("width",total+"px");
	$(".tab_ul_bottom", $("#"+tabId)).css("width",total+"px");

	//向左滚动图标事件
	$(".tab_left_arrow", $("#"+tabId)).unbind('click');
	$(".tab_left_arrow", $("#"+tabId)).click(function(){
		var index = $(".tab_nav .tabCurItem", $("#"+tabId)).index();
		index = index-1;
		changeTabFunc(tabId,index);
	});

	//向右滚动图标事件
	$(".tab_right_arrow", $("#"+tabId)).unbind('click');
	$(".tab_right_arrow", $("#"+tabId)).click(function(){
		var index = $(".tab_nav .tabCurItem", $("#"+tabId)).index();
		var len = $(".tab_nav .tab_li", $("#"+tabId)).length;
		index = index+1;
		if(index >= len){
			index = 0;
		}
		changeTabFunc(tabId,index);
	});
	setScroll_Choice(tabId);
}
//手机预览下页面权限弹框
function goBackHistory(num){
	if(typeof(num) == 'undefined'){
		num = 0;
	}
	if(num == '0'){
		if(history.go(-1)){
			location.href = history.go(-1);
		}
	}else{
		var indexPage = location.href;
		indexPage1 = indexPage.split('&pageid=');
		location.href = indexPage.replace(indexPage1[1],num);
	}
}

function detailHeightAuto(obj, loadingText) {
	var t_img;
	var isLoad = true;
	var settings=settingsLib($("#"+obj).parents('.layout'));
	var autoHeight=settings.getSetting('autoHeight');
    if (!loadingText) loadingText = '详情加载中';
	$("#"+obj+" .content_load").remove();
	$("#"+obj+" .detailContentView").append('<div class="content_load"><svg t="1644369357314" class="icon fa-spin" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2771" xmlns:xlink="http://www.w3.org/1999/xlink" width="12" height="12"><defs><style type="text/css"></style></defs><path d="M512 0c282.8 0 512 229.2 512 512 0 49.5-40.1 89.6-89.6 89.6-48.5 0-87.9-38.5-89.5-86.5l-0.1-3.1c0-183.8-149-332.8-332.8-332.8S179.2 328.2 179.2 512c0 182 146 329.8 327.3 332.8h5.5c49.5 0 89.6 40.1 89.6 89.6 0 49.5-40.1 89.6-89.6 89.6C229.2 1024 0 794.8 0 512S229.2 0 512 0z" p-id="2772" fill="#999999"></path></svg><span>' + loadingText + '</span></div>');
	$("#"+obj+" .detailContent").css('height',0).css('opacity',0);
	
	checkImgLoad(obj,t_img,isLoad,autoHeight);
	
	$(window).on('load',function(){
		isLoad = false;
		clearTimeout(t_img);
		t_img = null;
		$("#"+obj+" .detailContent").css('height','auto').css('opacity',1);
		$("#"+obj+" .content_load").remove();
	});
}
function checkImgLoad(obj,t_img,isLoad,autoHeight) {
	t_img = setTimeout(function(){
		if(isLoad) {
			$("#"+obj+" .detailContent img").each(function() {
				if($(this).attr("src") && $(this).height() === 0) {
					isLoad = false;
					return false;
				}
			});
			
			if(isLoad) {
				isLoad = false;
				clearTimeout(t_img);
				t_img = null;
				
				if(autoHeight&&autoHeight=="true"){
					var aboutHeight = $("#"+obj+" .detailContent").height();
					$("#"+obj).parents('.layout').height($("#"+obj).parents('.layout').height() + aboutHeight);
				}
				setTimeout(function(){
					$("#"+obj+" .detailContent").css('height','auto').css('opacity',1);
					$("#"+obj+" .content_load").remove();
					diyAutoHeight();
				},500);
				
			}else{
				isLoad = true;
				checkImgLoad(obj,t_img,isLoad,autoHeight);
			}
		}
	},500);
}



/*document.write("<div id=\"idBox\" class=\"lightbox\" style=\"display:none;border-radius:5px;box-shadow:none;background: rgba(255,255,255,0.4);filter:progid:dximagetransform.microsoft.gradient(startcolorstr=#7Fffffff, endcolorstr=#7Fffffff,gradienttype=0);padding:8px;\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"IdBoxTable\" style=\"background:#fff;border-radius:5px 5px;width:100%;\"><tr><td ><div id='boxTopTitle' style=\"border-bottom:1px solid #ccc;margin:10px 20px 0;color:#666;font-size:18px;font-weight:normal;text-align:left;height:45px;line-height:36px;position:relative;font-family:'Microsoft YaHei','verdana'\"><span id=\"boxName\">显示框</span><a href=\"javascript:void(0)\" onclick=\"box.Close();\" style=\"color:#fff;background:#666;height:24px;width:24px;display:block;border:3px solid #fff;border-radius:100%;display:block;text-decoration:none;text-align:center;line-height:24px;position:absolute;right:-30px;top:-21px;\"><span id=\"boxClose\" title=\"关闭\" style=\"cursor:pointer;color:#fff;font:18px/20px verdana,arial;font-weight:normal;height:36px;line-height:21px;\">×</span></a></div></td></tr><tr><td><iframe id=\"showiframe\" src=\"\" frameborder=\"0\" width=\"100%\" height=\"500\"></iframe></td></tr></table></div>");*/

document.write("<div id=\"idBox\" class=\"lightbox\" style=\"display:none;\">");
document.write("	<div id=\"boxMain\">");
document.write("		<div id=\"boxTopTitle\">");
document.write("			<span id=\"boxName\">显示框</span>");
document.write("			<span id=\"boxClose\" title=\"关闭\" onclick=\"box.Close();\">×</span>");
document.write("		</div>");
document.write("		<div id=\"boxContent\">");
document.write("			<iframe id=\"showiframe\" src=\"\" frameborder=\"0\" style=\"width:100%;\" name=\"bookConfirm\"></iframe>");
document.write("		</div>");
document.write("	</div>");
document.write("</div>");

loadCss("/sysTools/View/css/diy/box.css");

      function loadCss(url) {
        var link = document.createElement("link");
         link.type = "text/css";
          link.rel = "stylesheet";
         link.href = url;
          document.getElementsByTagName("head")[0].appendChild(link);
      }


var isIE = (document.all) ? true : false;

var isIE6 = isIE && ([/MSIE (\d+)\.0/i.exec(navigator.userAgent)][0][1] == 6);

var $G = function (id) {
	return "string" == typeof id ? document.getElementById(id) : id;
};

var Class = {
	create: function() {
		return function() { this.initialize.apply(this, arguments); }
	}
}

var Extend = function(destination, source) {
	for (var property in source) {
		destination[property] = source[property];
	}
}

var Bind = function(object, fun) {
	return function() {
		return fun.apply(object, arguments);
	}
}

var Each = function(list, fun){
	for (var i = 0, len = list.length; i < len; i++) { fun(list[i], i); }
};

var Contains = function(a, b){
	return a.contains ? a != b && a.contains(b) : !!(a.compareDocumentPosition(b) & 16);
}


var OverLay = Class.create();
OverLay.prototype = {
  initialize: function(options) {

	this.SetOptions(options);
	
	this.Lay = $G(this.options.Lay) || document.body.insertBefore(document.createElement("div"), document.body.childNodes[0]);
	
	this.Color = this.options.Color;
	this.Opacity = parseInt(this.options.Opacity);
	this.zIndex = parseInt(this.options.zIndex);
	
	with(this.Lay.style){ display = "none"; zIndex = this.zIndex; left = top = 0; position = "fixed"; width = height = "100%"; }
	
	if(isIE6){
		this.Lay.style.position = "absolute";
		//ie6设置覆盖层大小程序
		this._resize = Bind(this, function(){
			this.Lay.style.width = Math.max(document.documentElement.scrollWidth, document.documentElement.clientWidth) + "px";
			this.Lay.style.height = Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight) + "px";
		});
		//遮盖select
		this.Lay.innerHTML = '<iframe style="position:absolute;top:0;left:0;width:100%;height:100%;filter:alpha(opacity=0);"></iframe>'
	}
  },
  //设置默认属性
  SetOptions: function(options) {
    this.options = {//默认值
		Lay:		null,//覆盖层对象
		Color:		"#000",//背景色
		Opacity:	50,//透明度(0-100)
		zIndex:		2147483640//层叠顺序
    };
    Extend(this.options, options || {});
  },
  //显示
  Show: function() {
	//兼容ie6
	if(isIE6){ this._resize(); window.attachEvent("onresize", this._resize); }
	//设置样式
	with(this.Lay.style){
		//设置透明度
		filter = "alpha(opacity:" + this.Opacity + ")"; 
		opacity = this.Opacity / 100;
		backgroundColor = this.Color; display = "block";
	}
  },
  //关闭
  Close: function() {
	this.Lay.style.display = "none";
	if(isIE6){ window.detachEvent("onresize", this._resize); }
  }
};



var LightBox = Class.create();
LightBox.prototype = {
  initialize: function(box, options) {
	
	this.Box = $G(box);//显示层
	
	this.OverLay = new OverLay(options);//覆盖层
	
	this.SetOptions(options);
	
	this.Fixed = !!this.options.Fixed;
	this.Over = !!this.options.Over;
	this.Center = !!this.options.Center;
	this.onShow = this.options.onShow;
	
	this.Box.style.zIndex = this.OverLay.zIndex + 99990;
	//this.Box.style.display = "none";
	//兼容ie6用的属性
	if(isIE6){
		this._top = this._left = 0; this._select = [];
		this._fixed = Bind(this, function(){ this.Center ? this.SetCenter() : this.SetFixed(); });
	}
  },
  //设置默认属性
  SetOptions: function(options) {
    this.options = {//默认值
		Over:	true,//是否显示覆盖层
		Fixed:	true,//是否固定定位
		Center:	true,//是否居中
		onShow:	function(){}//显示时执行
	};
    Extend(this.options, options || {});
  },
  //兼容ie6的固定定位程序
  SetFixed: function(){
	this.Box.style.top = document.documentElement.scrollTop - this._top + this.Box.offsetTop + "px";
	this.Box.style.left = document.documentElement.scrollLeft - this._left + this.Box.offsetLeft + "px";
	
	this._top = document.documentElement.scrollTop; this._left = document.documentElement.scrollLeft;
  },
  //兼容ie6的居中定位程序
  SetCenter: function(){
	this.Box.style.marginTop = document.documentElement.scrollTop - this.Box.offsetHeight / 2 + "px";
	this.Box.style.marginLeft = document.documentElement.scrollLeft - this.Box.offsetWidth / 2 + "px";
  },
  //显示
  Show: function(options) {
	if(typeof options == 'undefined') options = {width:'800px', height:'500px'};

	if(typeof options != 'undefined' && options.height){
		var height = parseInt(options.height);
		if(height >= $(window).height() - 130) {
			height = $(window).height() - 130;
		}
		document.getElementById('showiframe').height = height;
	}
  	if(typeof options != 'undefined' && options.width){
		$("#idBox").css("max-width", options.width);//document.getElementById('showiframe').width = options.width;
		var idBoxWidth = $("#idBox").width();
		var idBoxHeight = $("#idBox").height();
		$("#idBox").css("margin-left",-idBoxWidth/2);
		$("#idBox").css("margin-top",-idBoxHeight/2);
	}

    //刷新验证码
    //getObject('img').src='/has_client/include/code.asp?'+(new Date().getTime());

	//固定定位
	//this.Box.style.position = this.Fixed && !isIE6 ? "fixed" : "absolute";

	//覆盖层
	this.Over && this.OverLay.Show();
	
	this.Box.style.display = "";
	//document.login_club.username.focus();
	
	//居中
	/*
	if(this.Center){
		this.Box.style.top = this.Box.style.left = "50%";
		//设置margin
		if(this.Fixed){
			this.Box.style.marginTop = - this.Box.offsetHeight / 2 + "px";
			this.Box.style.marginLeft = - this.Box.offsetWidth / 2 + "px";
		}else{
			this.SetCenter();
		}
	}*/
	
	//兼容ie6
	if(isIE6){
		if(!this.Over){
			//没有覆盖层ie6需要把不在Box上的select隐藏
			this._select.length = 0;
			Each(document.getElementsByTagName("select"), Bind(this, function(o){
				if(!Contains(this.Box, o)){ o.style.visibility = "hidden"; this._select.push(o); }
			}))
		}
		//设置显示位置
		this.Center ? this.SetCenter() : this.Fixed && this.SetFixed();
		//设置定位
		this.Fixed && window.attachEvent("onscroll", this._fixed);
	}
	
	this.onShow();
  },
  //关闭
  Close: function() {
	document.getElementById('showiframe').src = '';		// 2017-05-26 清空页面内容
	this.Box.style.display = "none";
	this.OverLay.Close();
	document.getElementById("idBox").style.height = '';
	if(isIE6){
		window.detachEvent("onscroll", this._fixed);
		Each(this._select, function(o){ o.style.visibility = "visible"; });
	}
  }
};


if(typeof loadExtendFileCache==='undefined'){
	var loadExtendFileCache = {'css':[],'js':[]};
}

if(typeof loadExtendFile==='undefined'){
	function loadExtentFile(filePath, fileType){
		if(fileType == "js"){
			if(loadExtendFileExists(filePath,fileType))return false;
	        var oJs = document.createElement('script');        
		    oJs.setAttribute("type","text/javascript");
			oJs.setAttribute("src", filePath);//文件的地址 ,可为绝对及相对路径
	        document.getElementsByTagName("head")[0].appendChild(oJs);//绑定
			loadExtendFileCache['js'].push(filePath);
	    }else if(fileType == "css"){
			if(loadExtendFileExists(filePath,fileType))return false;
			var oCss = document.createElement("link"); 
	        oCss.setAttribute("rel", "stylesheet"); 
		    oCss.setAttribute("type", "text/css");  
			oCss.setAttribute("href", filePath);
	        document.getElementsByTagName("head")[0].appendChild(oCss);//绑定
			loadExtendFileCache['css'].push(filePath);
	    }
	}
}

if(typeof loadExtendFileExists==='undefined'){
	function loadExtendFileExists(filePath,fileType){
		if(typeof loadExtendFileCache[fileType]=='undefined')return false;
		for(var i=0;i<loadExtendFileCache[fileType].length;i++){
			if(loadExtendFileCache[fileType][i]==filePath)return true;
		}
		return false;
	}
}

/*function GetUrlPara(){
	var url = document.location.toString();
	var arrUrl = url.split("?");
	console.log(arrUrl);
	var paras='';
	if(arrUrl.length>1){
		var para = arrUrl[1];
		var arrUrl2=para.split("&");
		arrUrl2.forEach(function(e){
			if(e.indexOf("mod=")>=0||e.indexOf("act=")>=0||e.indexOf("#")>=0){
				 return;  
			}else{
				paras+=e+"&"; 
			}
		})
	}

	return paras;
}*/

function goserverurl(sys_url,DIY_JS_SERVER,DIY_WEBSITE_ID){
	var params = GetUrlPara();
	var serverUrl='//'+DIY_JS_SERVER+'/sysTools.php?mod=viewsConn&idweb='+DIY_WEBSITE_ID+'&'+params+sys_url;
	var newserverUrl="<scr"+"ipt type='text/javascript' src="+serverUrl+"></scr"+"ipt>";
	$("body").append(newserverUrl);
}



function price_format(s,n){
	n = n > 0 && n <= 20 ? n : 2; 
	s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + ""; 
	var l = s.split(".")[0].split("").reverse(), r = s.split(".")[1]; 
	t = ""; 
	for (i = 0; i < l.length; i++) { 
		t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "," : ""); 
	} 
	return t.split("").reverse().join("") + "." + r; 
}

function _RequestParamsStr(){
	var strHref = window.document.location.href;
	var intPos = strHref.indexOf('?');
	var strRight = strHref.substr(intPos+1);
	return strRight;
}

/*得到Html参数,Code By Nicenic.com, IceFire*/
function Request(strName){
	var arrTmp = _RequestParamsStr().split("&");
	for(var i=0,len=arrTmp.length; i<len; i++){ 
		var arrTemp = arrTmp[i].split("=");
		if(arrTemp[0].toUpperCase() == strName.toUpperCase()){
		if(arrTemp[1].indexOf("#")!=-1) arrTemp[1] = arrTemp[1].substr(0, arrTemp[1].indexOf("#"));
			return arrTemp[1]; 
		}
	}
	return "";
}

function ReqquestArray(strName){
	var arr_Return = [];
	var arrTmp = _RequestParamsStr().split("&");

	var s_Find = strName+"[";
	for(var i=0,len=arrTmp.length; i<len; i++){
		var arr_Temp = arrTmp[i].split("=");

		var posistion = arr_Temp[0].indexOf(s_Find);
		if(posistion==0){
			arr_Return.push(arr_Temp[1]);
		}
	}
	return arr_Return;
}

function RequestDict(strName){
	var arr_Return = {};
	var arrTmp = _RequestParamsStr().split("&");

	var s_Find = strName+"[";
	for(var i=0,len=arrTmp.length;i<len;i++){
		var arr_Temp = arrTmp[i].split("=");

		var posistion = arr_Temp[0].indexOf(s_Find);
		if(posistion==0){
			var s_Key = arr_Temp[0].substr(s_Find.length);
			s_Key = s_Key.substr(0,s_Key.length-1);
			arr_Return[s_Key] = arr_Temp[1];
		}
	}
	return arr_Return;

}

function btnTop(){$("html,body").animate({scrollTop:"0px"},1000);}

function btnBottom(){var bodyH = $("html,body").height();$("html,body").animate({scrollTop:bodyH},1000);}

var box = new LightBox("idBox");

/*! WOW - v1.0.1 - 2014-09-03
* Copyright (c) 2014 Matthieu Aussaguel; Licensed MIT */(function(){var a,b,c,d,e,f=function(a,b){return function(){return a.apply(b,arguments)}},g=[].indexOf||function(a){for(var b=0,c=this.length;c>b;b++)if(b in this&&this[b]===a)return b;return-1};b=function(){function a(){}return a.prototype.extend=function(a,b){var c,d;for(c in b)d=b[c],null==a[c]&&(a[c]=d);return a},a.prototype.isMobile=function(a){return/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(a)},a.prototype.addEvent=function(a,b,c){return null!=a.addEventListener?a.addEventListener(b,c,!1):null!=a.attachEvent?a.attachEvent("on"+b,c):a[b]=c},a.prototype.removeEvent=function(a,b,c){return null!=a.removeEventListener?a.removeEventListener(b,c,!1):null!=a.detachEvent?a.detachEvent("on"+b,c):delete a[b]},a.prototype.innerHeight=function(){return"innerHeight"in window?window.innerHeight:document.documentElement.clientHeight},a}(),c=this.WeakMap||this.MozWeakMap||(c=function(){function a(){this.keys=[],this.values=[]}return a.prototype.get=function(a){var b,c,d,e,f;for(f=this.keys,b=d=0,e=f.length;e>d;b=++d)if(c=f[b],c===a)return this.values[b]},a.prototype.set=function(a,b){var c,d,e,f,g;for(g=this.keys,c=e=0,f=g.length;f>e;c=++e)if(d=g[c],d===a)return void(this.values[c]=b);return this.keys.push(a),this.values.push(b)},a}()),a=this.MutationObserver||this.WebkitMutationObserver||this.MozMutationObserver||(a=function(){function a(){"undefined"!=typeof console&&null!==console&&console.warn("MutationObserver is not supported by your browser."),"undefined"!=typeof console&&null!==console&&console.warn("WOW.js cannot detect dom mutations, please call .sync() after loading new content.")}return a.notSupported=!0,a.prototype.observe=function(){},a}()),d=this.getComputedStyle||function(a){return this.getPropertyValue=function(b){var c;return"float"===b&&(b="styleFloat"),e.test(b)&&b.replace(e,function(a,b){return b.toUpperCase()}),(null!=(c=a.currentStyle)?c[b]:void 0)||null},this},e=/(\-([a-z]){1})/g,this.WOW=function(){function e(a){null==a&&(a={}),this.scrollCallback=f(this.scrollCallback,this),this.scrollHandler=f(this.scrollHandler,this),this.start=f(this.start,this),this.scrolled=!0,this.config=this.util().extend(a,this.defaults),this.animationNameCache=new c}return e.prototype.defaults={boxClass:"wow",animateClass:"animated",offset:0,mobile:!0,live:!0},e.prototype.init=function(){var a;return this.element=window.document.documentElement,"interactive"===(a=document.readyState)||"complete"===a?this.start():this.util().addEvent(document,"DOMContentLoaded",this.start),this.finished=[]},e.prototype.start=function(){var b,c,d,e;if(this.stopped=!1,this.boxes=function(){var a,c,d,e;for(d=this.element.querySelectorAll("."+this.config.boxClass),e=[],a=0,c=d.length;c>a;a++)b=d[a],e.push(b);return e}.call(this),this.all=function(){var a,c,d,e;for(d=this.boxes,e=[],a=0,c=d.length;c>a;a++)b=d[a],e.push(b);return e}.call(this),this.boxes.length)if(this.disabled())this.resetStyle();else{for(e=this.boxes,c=0,d=e.length;d>c;c++)b=e[c],this.applyStyle(b,!0);this.util().addEvent(window,"scroll",this.scrollHandler),this.util().addEvent(window,"resize",this.scrollHandler),this.interval=setInterval(this.scrollCallback,50)}return this.config.live?new a(function(a){return function(b){var c,d,e,f,g;for(g=[],e=0,f=b.length;f>e;e++)d=b[e],g.push(function(){var a,b,e,f;for(e=d.addedNodes||[],f=[],a=0,b=e.length;b>a;a++)c=e[a],f.push(this.doSync(c));return f}.call(a));return g}}(this)).observe(document.body,{childList:!0,subtree:!0}):void 0},e.prototype.stop=function(){return this.stopped=!0,this.util().removeEvent(window,"scroll",this.scrollHandler),this.util().removeEvent(window,"resize",this.scrollHandler),null!=this.interval?clearInterval(this.interval):void 0},e.prototype.sync=function(){return a.notSupported?this.doSync(this.element):void 0},e.prototype.doSync=function(a){var b,c,d,e,f;if(!this.stopped){if(null==a&&(a=this.element),1!==a.nodeType)return;for(a=a.parentNode||a,e=a.querySelectorAll("."+this.config.boxClass),f=[],c=0,d=e.length;d>c;c++)b=e[c],g.call(this.all,b)<0?(this.applyStyle(b,!0),this.boxes.push(b),this.all.push(b),f.push(this.scrolled=!0)):f.push(void 0);return f}},e.prototype.show=function(a){return this.applyStyle(a),a.className=""+a.className+" "+this.config.animateClass},e.prototype.applyStyle=function(a,b){var c,d,e;return d=a.getAttribute("data-wow-duration"),c=a.getAttribute("data-wow-delay"),e=a.getAttribute("data-wow-iteration"),this.animate(function(f){return function(){return f.customStyle(a,b,d,c,e)}}(this))},e.prototype.animate=function(){return"requestAnimationFrame"in window?function(a){return window.requestAnimationFrame(a)}:function(a){return a()}}(),e.prototype.resetStyle=function(){var a,b,c,d,e;for(d=this.boxes,e=[],b=0,c=d.length;c>b;b++)a=d[b],e.push(a.setAttribute("style","visibility: visible;"));return e},e.prototype.customStyle=function(a,b,c,d,e){return b&&this.cacheAnimationName(a),a.style.visibility=b?"hidden":"visible",c&&this.vendorSet(a.style,{animationDuration:c}),d&&this.vendorSet(a.style,{animationDelay:d}),e&&this.vendorSet(a.style,{animationIterationCount:e}),this.vendorSet(a.style,{animationName:b?"none":this.cachedAnimationName(a)}),a},e.prototype.vendors=["moz","webkit"],e.prototype.vendorSet=function(a,b){var c,d,e,f;f=[];for(c in b)d=b[c],a[""+c]=d,f.push(function(){var b,f,g,h;for(g=this.vendors,h=[],b=0,f=g.length;f>b;b++)e=g[b],h.push(a[""+e+c.charAt(0).toUpperCase()+c.substr(1)]=d);return h}.call(this));return f},e.prototype.vendorCSS=function(a,b){var c,e,f,g,h,i;for(e=d(a),c=e.getPropertyCSSValue(b),i=this.vendors,g=0,h=i.length;h>g;g++)f=i[g],c=c||e.getPropertyCSSValue("-"+f+"-"+b);return c},e.prototype.animationName=function(a){var b;try{b=this.vendorCSS(a,"animation-name").cssText}catch(c){b=d(a).getPropertyValue("animation-name")}return"none"===b?"":b},e.prototype.cacheAnimationName=function(a){return this.animationNameCache.set(a,this.animationName(a))},e.prototype.cachedAnimationName=function(a){return this.animationNameCache.get(a)},e.prototype.scrollHandler=function(){return this.scrolled=!0},e.prototype.scrollCallback=function(){var a;return!this.scrolled||(this.scrolled=!1,this.boxes=function(){var b,c,d,e;for(d=this.boxes,e=[],b=0,c=d.length;c>b;b++)a=d[b],a&&(this.isVisible(a)?this.show(a):e.push(a));return e}.call(this),this.boxes.length||this.config.live)?void 0:this.stop()},e.prototype.offsetTop=function(a){for(var b;void 0===a.offsetTop;)a=a.parentNode;for(b=a.offsetTop;a=a.offsetParent;)b+=a.offsetTop;return b},e.prototype.isVisible=function(a){var b,c,d,e,f;return c=a.getAttribute("data-wow-offset")||this.config.offset,f=window.pageYOffset,e=f+Math.min(this.element.clientHeight,this.util().innerHeight())-c,d=this.offsetTop(a),b=d+a.clientHeight,a.parentNode.className.includes('tab_div')&&e>=d||e>=d&&b>=f},e.prototype.util=function(){return null!=this._util?this._util:this._util=new b},e.prototype.disabled=function(){return!this.config.mobile&&this.util().isMobile(navigator.userAgent)},e}()}).call(this);


var showAlert = function(msg){
	jAlert(msg, "温馨提示");
}
window.alert=showAlert;
window.counterTimer={};
$.alerts={
	verticalOffset:-75,horizontalOffset:0,repositionOnResize:true,overlayOpacity:0.5,overlayColor:'#fff',draggable:true,okButton:' 确定 ',cancelButton:' 取消 ',dialogClass:null,alert:function(message,title,callback){
		if(title==null)title='Alert';
		if(callback){
		$.alerts._show(title,message,null,'confirm',function(result){
			if(callback)callback(result);
		});
		}else{
		$.alerts._show(title,message,null,'alert',function(result){
			if(callback)callback(result);
		});
		}
	}
	,_show:function(title,msg,value,type,callback){
		$.alerts._hide();
		$.alerts._overlay('show');
		$("BODY").append('<div id="popup_container">'+'<h1 id="popup_title"></h1>'+'<div id="popup_content">'+'<div id="popup_message"></div>'+'</div>'+'</div>');
		if($.alerts.dialogClass)$("#popup_container").addClass($.alerts.dialogClass);
		var pos=($.browser.msie&&parseInt($.browser.version)<=6)?'absolute':'fixed';
		$("#popup_container").css({
			//position:pos,zIndex:99999,padding:0,margin:0
		});
		$("#popup_title").text(title);
		$("#popup_content").addClass(type);
		$("#popup_message").text(msg);
		$("#popup_message").html($("#popup_message").text().replace(/\n/g,'<br />'));
		$("#popup_container").css({
			//minWidth:$("#popup_container").outerWidth(),maxWidth:$("#popup_container").outerWidth(),
			//minWidth:'290px',maxWidth:'290px',
		});
		$.alerts._reposition();
		$.alerts._maintainPosition(true);
		switch(type){
			case'alert':$("#popup_message").after('<div id="popup_panel"><input type="button" value="'+$.alerts.okButton+'" id="popup_ok" /></div>');
				$("#popup_ok").click(function(){
					$.alerts._hide();
					callback(true)
				});
				$("#popup_ok").focus().keypress(function(e){
					if(e.keyCode==13||e.keyCode==27)$("#popup_ok").trigger('click')
				});				
				break
			case'confirm':$("#popup_message").after('<div id="popup_panel"><input type="button" value="'+$.alerts.okButton+'" id="popup_ok" /><input type="button" value="'+$.alerts.cancelButton+'" id="popup_cancel" /></div>');
				$("#popup_ok").click(function(){
					$.alerts._hide();
					callback(true)
				});
				$("#popup_cancel").click(function(){
					$.alerts._hide();
					callback(false)
				});
				$("#popup_ok").focus().keypress(function(e){
					if(e.keyCode==13||e.keyCode==27)$("#popup_ok").trigger('click')
				});
				break
		};
		if($.alerts.draggable){
			try{
				$("#popup_container").draggable({
					handle:$("#popup_title")
				});
				$("#popup_title").css({
					cursor:'move'
				})
			}
			catch(e){}
		}
	}
	,_hide:function(){
		$("#popup_container").remove();
		$.alerts._overlay('hide');
		$.alerts._maintainPosition(false)
	}
	,_overlay:function(status){
		switch(status){
			case'show':$.alerts._overlay('hide');
			$("BODY").append('<div id="popup_overlay"></div>');
			$("#popup_overlay").css({
				position:'absolute',zIndex:99998,top:'0px',left:'0px',width:'100%',height:$(document).height(),background:$.alerts.overlayColor,opacity:$.alerts.overlayOpacity
			});
			break;
			case'hide':$("#popup_overlay").remove();
			break
		}
	}
	,_reposition:function(){
		var top=(($(window).height()/ 2) - ($("#popup_container").outerHeight() /2))+$.alerts.verticalOffset;
		var left=(($(window).width()/ 2) - ($("#popup_container").outerWidth() /2))+$.alerts.horizontalOffset;
		if(top<0)top=0;
		if(left<0)left=0;
		if($.browser.msie&&parseInt($.browser.version)<=6)top=top+$(window).scrollTop();
		$("#popup_container").css({
			//top:top+'px',left:left+'px'
			//top:'50px',left:left+'px'
		});
		$("#popup_overlay").height($(document).height())
	}
	,_maintainPosition:function(status){
		if($.alerts.repositionOnResize){
			switch(status){
				case true:$(window).bind('resize',function(){
					$.alerts._reposition()
				});
				break;
				case false:$(window).unbind('resize');
				break
			}
		} 
	}
};
jAlert=function(message,title,callback){
	$.alerts.alert(message,title,callback)
}

