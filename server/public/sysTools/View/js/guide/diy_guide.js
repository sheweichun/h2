$.guide = function (options) {
	var defaults = {
		selector: '', // 页面提示元素选择器物，会使用匹配的第一个元素
		content: '',// 提示内容可是是字符串，也可以是jQuery包装器对象
		align: 'center',// center, right,
		offset: {
			x: 0,
			y: 0
		}
	};


    // options格式
    /* [{
     selector: '',
     content: '',
     align: 'left',
     offset: {
     x: 0,
     y: 0
     }
     }]

     */


	var urlRoot = location.href.split('#')[0].replace(/\W/g, '') + 'Guide';

	// 如果要调试，最后的== '1'改成'2'就好了
	if (!window.localStorage || !options || !$.isArray(options) || localStorage[urlRoot] == '2') {
		return;
	}

	// 创建层
	var elGuideOverlay = $('#guideOverlay');
	var elGuideShut = $('#guideShut');
	var elGuide = $('#guideOverlap');
	

	var start = 0;

	var index=0;

	var remove = function () {
		elGuideOverlay.remove();
		elGuideShut.remove();
		elGuide.remove();
		// 键盘事件移除
		$(document).off('keydown.guide');
		$(window).off('resize.guide');
	};
	var goto = function (change) {
		start = start + change;
		if (start < 0) {
			start = 0;
		}
		if (!options[start]) {
			remove();
			return;
		}

		var data = $.extend({}, defaults, options[start]);

		// 获取元素
		var elTrigger = $(data.selector).eq(0);
		if (elTrigger.length == 0 && change) {
			goto(change);
			return;
		}

		// 装载对应提示内容
		elGuide.empty();

		var elGuideContent = $('<div></div>').css({
			display: 'none',
			position: 'absolute'
		}).append(data.content);

		elGuide.append(elGuideContent);

		//添加下一步
		var elnextStep = $('<a class="nextStep">下一步</a>').css({
			width:123,
			height:36,
			textAlign:'center',
			textDecoration:'none',
			color:'#FFFFFF',
			cursor:'pointer',
			display:'block',
			position:'absolute',
			backgroundColor:'#0063FF',
			fontSize:16
		});

		$(elGuideContent).append(elnextStep);

		if(index==0){
			$(".nextStep").css({"bottom":17,"right":299});
		}else if(index==1){
			$(".nextStep").css({"bottom":17,"right":20});
		}else if(index==2){
			$(".nextStep").css({"bottom":0,"left":5});
		}else if(index==3){
			$(".nextStep").css({"bottom":28,"right":195});
		}else if(index==4){
			$(".nextStep").css({"bottom":0,"right":313});
		}

		// 定位
		if(index==1){
			elGuide.css({
				width: elTrigger.outerWidth() + 20,
				height: elTrigger.outerHeight() + 5,
				left: elTrigger.offset().left - 10,
				top: elTrigger.offset().top - 10
			});
		}else if(index==2){
			elGuide.css({"width": 0,"height": 0,"top":-1,"left":-1});
		}else if(index==4){
			elGuide.css({
				width: elTrigger.outerWidth() + 204,
				height: elTrigger.outerHeight(),
				left: elTrigger.offset().left,
				top: elTrigger.offset().top
			});
		}else{
			elGuide.css({
				width: elTrigger.outerWidth(),
				height: elTrigger.outerHeight(),
				left: elTrigger.offset().left,
				top: elTrigger.offset().top
			});
		}

		// 提示内容定位
		elGuideContent.css({
			top: elTrigger.outerHeight() + data.offset.y
		});

		if (data.align == 'left') {
			elGuideContent.css({
				left: data.offset.x
			});
		} else if (data.align == 'right') {
			elGuideContent.css({
				right: data.offset.x
			});
		} else if (data.align == 'step3') {
			elGuideContent.css({"position":"fixed","top":"50%","left":"50%","margin-left":-267,"margin-top":-240.5});
		} else {
			elGuideContent.css({
				left: (elTrigger.outerWidth() - elGuideContent.width()) / 2 + data.offset.x
			});
		}
		
		setTimeout(function () {
			elGuideContent.show();
		}, history.pushState? 100: 0);
	};

	if (!elGuideOverlay.length) {
		elGuideOverlay = $('<a id="guideOverlay" href="javascript:" role="button"></a>').css({
			position: 'fixed',
			left: 0,
			top: 45,
			right: 0,
			bottom: 0,
			background: 'url(about:blank)',
			zIndex: 99,
			outline: 'none'
		});
		
		if (history.pushState) {
			elGuideOverlay.css('background', 'linear-gradient(to top, transparent, transparent)');	
		}

		elGuideShut = $('<a href="javascript:" id="guideShut" role="button"></a>').css({
			position: 'fixed',
			top: 45,
			right: 0,
			color: '#fff',
			zIndex: 999999999,
			background: 'url(../../images/guide/close_step.png)',
			height: 64,
			width: 64
		});

			elGuide = $('<div id="guideOverlap"></div>').css({
				position: 'absolute',
				transition: 'all .3s',
				borderColor:'#FFFFFF',
				borderStyle:'dashed',
				boxSizing:'border-box',
				borderWidth:1,
				boxShadow: '0 0 0 9999px rgba(0,0,0,.75)',
				// 如果想支持圆角，下面的注释
				// borderRadius: '50%',
				zIndex: 999999999
			});
		
		if (![].map) {
			// IE8浏览器
			elGuide.css('outline', '9999px solid #000').css('filter', 'alpha(opacity=75)');
		}

		$(document.body).append(elGuideOverlay).append(elGuide).append(elGuideShut);

		// 事件
		elGuideShut.on('click', function () {
			remove();
			$(".tools").removeClass("tools_guide");
		});

		
		// 翻页
        elGuide.on({
            click: function () {
				if(index==0){
					$(".userSetBtn").removeClass("userSetBtn_guide");
				}
				index++;
                goto(1);
            }
        });
		
		$(window).on('resize.guide', function () {
			goto(0);
		});
	}

	goto(0);
	
	elGuideOverlay[0].focus();

	localStorage[urlRoot] = '1';
};