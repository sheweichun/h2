var pageSizeOperate = function(){
		/* 
		 *  三端分离设置简化 用于callback_
		 * 	传入值 obj 、 settingName（需要三端分离的attr-name）、minVal（数字最小值）、maxVul（数字最大值）
		 */
		this.pageSizeSettings = function (obj,settingName,minVal=0,maxVul=0){
			var nowSize = canvas.window.webConfig.web_settings.pageSize;
			var attrName = obj.attr("attr-name");
            var element = "input[attr-name='"+attrName+"']";
			if(attrName == settingName){
                if($(element).attr('type') != 'radio'){
                    if (obj.val() > maxVul && maxVul>0) {
                    	$(element).attr('value', maxVul);
                    }else if (obj.val() > minVal) {
                    	$(element).attr('value', obj.val());
                    } else {
                    	$(element).attr('value', minVal);
                    }
                }
				var settings = settingsLib(canvas.window.editView.obj);
				settings.setSetting('data.' + attrName + nowSize, obj.val());
				settings.saveSettings();
			}
		}

		/* 
		 *  三端分离读取简化
		 * 	传入值 obj 、 gettingName（需要获取的三端分离的attr-name）
		 */
		this.pageSizeGettings = function (obj,gettingName){
			var nowSize = canvas.window.webConfig.web_settings.pageSize;
			var settings = settingsLib(canvas.window.editView.obj);
			var value = settings.getSetting('data.'+gettingName+nowSize);
			value = value ? value:settings.getSetting('data.'+gettingName+'pc');
            var element = "[attr-name='"+gettingName+"']";
            var tagName = $(element).prop("tagName");
            if(tagName){
                tagName = tagName.toUpperCase();
                if(tagName == 'INPUT'){
                    if($(element).attr('type') == 'radio'){
                        $(element).eq(value).attr("checked",true);
                    }else{
                        $(element).val(value); 
                    }
                }else if(tagName == 'SELECT'){
                    $(element).val(value);
                }
            }
		}
}
