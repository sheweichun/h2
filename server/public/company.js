webpackJsonp([3],{299:function(e,t,n){!function(t,n){e.exports=n()}(0,function(){"use strict";var e="millisecond",t="second",n="minute",r="hour",a="day",i="week",o="month",u="quarter",l="year",c="date",s="Invalid Date",f=/^(\d{4})[-/]?(\d{1,2})?[-/]?(\d{0,2})[Tt\s]*(\d{1,2})?:?(\d{1,2})?:?(\d{1,2})?[.:]?(\d+)?$/,d=/\[([^\]]+)]|Y{1,4}|M{1,4}|D{1,2}|d{1,4}|H{1,2}|h{1,2}|a|A|m{1,2}|s{1,2}|Z{1,2}|SSS/g,m={name:"en",weekdays:"Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),months:"January_February_March_April_May_June_July_August_September_October_November_December".split("_"),ordinal:function(e){var t=["th","st","nd","rd"],n=e%100;return"["+e+(t[(n-20)%10]||t[n]||t[0])+"]"}},h=function(e,t,n){var r=String(e);return!r||r.length>=t?e:""+Array(t+1-r.length).join(n)+e},p={s:h,z:function(e){var t=-e.utcOffset(),n=Math.abs(t),r=Math.floor(n/60),a=n%60;return(t<=0?"+":"-")+h(r,2,"0")+":"+h(a,2,"0")},m:function e(t,n){if(t.date()<n.date())return-e(n,t);var r=12*(n.year()-t.year())+(n.month()-t.month()),a=t.clone().add(r,o),i=n-a<0,u=t.clone().add(r+(i?-1:1),o);return+(-(r+(n-a)/(i?a-u:u-a))||0)},a:function(e){return e<0?Math.ceil(e)||0:Math.floor(e)},p:function(s){return{M:o,y:l,w:i,d:a,D:c,h:r,m:n,s:t,ms:e,Q:u}[s]||String(s||"").toLowerCase().replace(/s$/,"")},u:function(e){return void 0===e}},y="en",v={};v[y]=m;var g="$isDayjsObject",b=function(e){return e instanceof E||!(!e||!e[g])},_=function e(t,n,r){var a;if(!t)return y;if("string"==typeof t){var i=t.toLowerCase();v[i]&&(a=i),n&&(v[i]=n,a=i);var o=t.split("-");if(!a&&o.length>1)return e(o[0])}else{var u=t.name;v[u]=t,a=u}return!r&&a&&(y=a),a||!r&&y},w=function(e,t){if(b(e))return e.clone();var n="object"==typeof t?t:{};return n.date=e,n.args=arguments,new E(n)},$=p;$.l=_,$.i=b,$.w=function(e,t){return w(e,{locale:t.$L,utc:t.$u,x:t.$x,$offset:t.$offset})};var E=function(){function m(e){this.$L=_(e.locale,null,!0),this.parse(e),this.$x=this.$x||e.x||{},this[g]=!0}var h=m.prototype;return h.parse=function(e){this.$d=function(e){var t=e.date,n=e.utc;if(null===t)return new Date(NaN);if($.u(t))return new Date;if(t instanceof Date)return new Date(t);if("string"==typeof t&&!/Z$/i.test(t)){var r=t.match(f);if(r){var a=r[2]-1||0,i=(r[7]||"0").substring(0,3);return n?new Date(Date.UTC(r[1],a,r[3]||1,r[4]||0,r[5]||0,r[6]||0,i)):new Date(r[1],a,r[3]||1,r[4]||0,r[5]||0,r[6]||0,i)}}return new Date(t)}(e),this.init()},h.init=function(){var e=this.$d;this.$y=e.getFullYear(),this.$M=e.getMonth(),this.$D=e.getDate(),this.$W=e.getDay(),this.$H=e.getHours(),this.$m=e.getMinutes(),this.$s=e.getSeconds(),this.$ms=e.getMilliseconds()},h.$utils=function(){return $},h.isValid=function(){return!(this.$d.toString()===s)},h.isSame=function(e,t){var n=w(e);return this.startOf(t)<=n&&n<=this.endOf(t)},h.isAfter=function(e,t){return w(e)<this.startOf(t)},h.isBefore=function(e,t){return this.endOf(t)<w(e)},h.$g=function(e,t,n){return $.u(e)?this[t]:this.set(n,e)},h.unix=function(){return Math.floor(this.valueOf()/1e3)},h.valueOf=function(){return this.$d.getTime()},h.startOf=function(e,u){var s=this,f=!!$.u(u)||u,d=$.p(e),m=function(e,t){var n=$.w(s.$u?Date.UTC(s.$y,t,e):new Date(s.$y,t,e),s);return f?n:n.endOf(a)},h=function(e,t){return $.w(s.toDate()[e].apply(s.toDate("s"),(f?[0,0,0,0]:[23,59,59,999]).slice(t)),s)},p=this.$W,y=this.$M,v=this.$D,g="set"+(this.$u?"UTC":"");switch(d){case l:return f?m(1,0):m(31,11);case o:return f?m(1,y):m(0,y+1);case i:var b=this.$locale().weekStart||0,_=(p<b?p+7:p)-b;return m(f?v-_:v+(6-_),y);case a:case c:return h(g+"Hours",0);case r:return h(g+"Minutes",1);case n:return h(g+"Seconds",2);case t:return h(g+"Milliseconds",3);default:return this.clone()}},h.endOf=function(e){return this.startOf(e,!1)},h.$set=function(i,u){var s,f=$.p(i),d="set"+(this.$u?"UTC":""),m=(s={},s[a]=d+"Date",s[c]=d+"Date",s[o]=d+"Month",s[l]=d+"FullYear",s[r]=d+"Hours",s[n]=d+"Minutes",s[t]=d+"Seconds",s[e]=d+"Milliseconds",s)[f],h=f===a?this.$D+(u-this.$W):u;if(f===o||f===l){var p=this.clone().set(c,1);p.$d[m](h),p.init(),this.$d=p.set(c,Math.min(this.$D,p.daysInMonth())).$d}else m&&this.$d[m](h);return this.init(),this},h.set=function(e,t){return this.clone().$set(e,t)},h.get=function(e){return this[$.p(e)]()},h.add=function(e,u){var c,s=this;e=Number(e);var f=$.p(u),d=function(t){var n=w(s);return $.w(n.date(n.date()+Math.round(t*e)),s)};if(f===o)return this.set(o,this.$M+e);if(f===l)return this.set(l,this.$y+e);if(f===a)return d(1);if(f===i)return d(7);var m=(c={},c[n]=6e4,c[r]=36e5,c[t]=1e3,c)[f]||1,h=this.$d.getTime()+e*m;return $.w(h,this)},h.subtract=function(e,t){return this.add(-1*e,t)},h.format=function(e){var t=this,n=this.$locale();if(!this.isValid())return n.invalidDate||s;var r=e||"YYYY-MM-DDTHH:mm:ssZ",a=$.z(this),i=this.$H,o=this.$m,u=this.$M,l=n.weekdays,c=n.months,f=n.meridiem,m=function(e,n,a,i){return e&&(e[n]||e(t,r))||a[n].slice(0,i)},h=function(e){return $.s(i%12||12,e,"0")},p=f||function(e,t,n){var r=e<12?"AM":"PM";return n?r.toLowerCase():r};return r.replace(d,function(e,r){return r||function(e){switch(e){case"YY":return String(t.$y).slice(-2);case"YYYY":return $.s(t.$y,4,"0");case"M":return u+1;case"MM":return $.s(u+1,2,"0");case"MMM":return m(n.monthsShort,u,c,3);case"MMMM":return m(c,u);case"D":return t.$D;case"DD":return $.s(t.$D,2,"0");case"d":return String(t.$W);case"dd":return m(n.weekdaysMin,t.$W,l,2);case"ddd":return m(n.weekdaysShort,t.$W,l,3);case"dddd":return l[t.$W];case"H":return String(i);case"HH":return $.s(i,2,"0");case"h":return h(1);case"hh":return h(2);case"a":return p(i,o,!0);case"A":return p(i,o,!1);case"m":return String(o);case"mm":return $.s(o,2,"0");case"s":return String(t.$s);case"ss":return $.s(t.$s,2,"0");case"SSS":return $.s(t.$ms,3,"0");case"Z":return a}return null}(e)||a.replace(":","")})},h.utcOffset=function(){return 15*-Math.round(this.$d.getTimezoneOffset()/15)},h.diff=function(e,c,s){var f,d=this,m=$.p(c),h=w(e),p=6e4*(h.utcOffset()-this.utcOffset()),y=this-h,v=function(){return $.m(d,h)};switch(m){case l:f=v()/12;break;case o:f=v();break;case u:f=v()/3;break;case i:f=(y-p)/6048e5;break;case a:f=(y-p)/864e5;break;case r:f=y/36e5;break;case n:f=y/6e4;break;case t:f=y/1e3;break;default:f=y}return s?f:$.a(f)},h.daysInMonth=function(){return this.endOf(o).$D},h.$locale=function(){return v[this.$L]},h.locale=function(e,t){if(!e)return this.$L;var n=this.clone(),r=_(e,t,!0);return r&&(n.$L=r),n},h.clone=function(){return $.w(this.$d,this)},h.toDate=function(){return new Date(this.valueOf())},h.toJSON=function(){return this.isValid()?this.toISOString():null},h.toISOString=function(){return this.$d.toISOString()},h.toString=function(){return this.$d.toUTCString()},m}(),M=E.prototype;return w.prototype=M,[["$ms",e],["$s",t],["$m",n],["$H",r],["$W",a],["$M",o],["$y",l],["$D",c]].forEach(function(e){M[e[1]]=function(t){return this.$g(t,e[0],e[1])}}),w.extend=function(e,t){return e.$i||(e(t,E,w),e.$i=!0),w},w.locale=_,w.isDayjs=b,w.unix=function(e){return w(1e3*e)},w.en=v[y],w.Ls=v,w.p={},w})},628:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e){return function(){var t=e.apply(this,arguments);return new Promise(function(e,n){function r(a,i){try{var o=t[a](i),u=o.value}catch(e){return void n(e)}if(!o.done)return Promise.resolve(u).then(function(e){r("next",e)},function(e){r("throw",e)});e(u)}return r("next")})}}function i(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function o(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function u(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var l=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),c=n(2),s=r(c),f=n(47),d=n(94),m=n(300),h=r(m),p=n(652),y=r(p),v=n(653),g=r(v),b=n(36),_=n(299),w=r(_),$=function(e){function t(e){var n=this;i(this,t);var r=o(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return r.resetBonus=function(e){f.Dialog.confirm({title:"【"+e.name+"】积分清零",content:"确定要将该公司下所有员工积分清零?",onOk:function(){(0,d.Fetch)("resetBonusByCid",{cid:e.cid}).then(function(){r.loadList(),f.Message.success("积分清零成功")})}})},r.onManageActivity=function(e){var t=f.Dialog.show({title:"活动管理",content:s.default.createElement(g.default,{onClose:function(){t.hide()},data:e,onSubmit:function(){var i=a(regeneratorRuntime.mark(function a(i){return regeneratorRuntime.wrap(function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,(0,d.Fetch)("editCompany",Object.assign({},i,{cid:e.cid,name:e.name,code:e.code}));case 2:return n.next=4,r.loadList();case 4:t.hide();case 5:case"end":return n.stop()}},a,n)}));return function(e){return i.apply(this,arguments)}}()}),footer:!1})},r.addCode=function(){var e=f.Dialog.show({title:"新增邀请码",content:s.default.createElement(y.default,{onClose:function(){e.hide()},adminSource:r.state.adminSource,onSubmit:function(){var t=a(regeneratorRuntime.mark(function t(a){return regeneratorRuntime.wrap(function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,(0,d.Fetch)("addCompany",a);case 2:return t.next=4,r.loadList();case 4:e.hide();case 5:case"end":return t.stop()}},t,n)}));return function(e){return t.apply(this,arguments)}}()}),footer:!1})},r.state={data:[],adminMap:{},adminSource:[]},r.COLUMNS=[{title:"id",dataIndex:"cid"},{title:"邀请码",dataIndex:"code"},{title:"公司名",dataIndex:"name"},{title:"HR",dataIndex:"hr"},{title:"HR联系方式",dataIndex:"hr_phone"},{title:"活动信息",dataIndex:"enable_activity",cell:function(e,t,n){return e?"【"+(n.activity_name||"")+"活动】已开启，邀请码是【"+n.activity_code+"】":"未开启活动"}},{dataIndex:"update_time",title:"对接人员信息",cell:function(e,t,n){return s.default.createElement("div",{style:{display:"inline-flex",flexDirection:"row"}},s.default.createElement("div",{style:{marginRight:"12px"}},s.default.createElement("img",{style:{height:"40px",width:"40px",marginBottom:"8px",borderRadius:"50%"},src:n.manage_logo}),s.default.createElement("div",null,n.manage_name)),s.default.createElement("div",null,s.default.createElement("img",{style:{height:"60px"},src:n.manage_mask})))}},{title:"是否开启个人健康告知问卷",dataIndex:"need_qus",cell:function(e){return e?"已开启":"未开启"}},{title:"创建时间",dataIndex:"create_time",cell:function(e){return(0,w.default)(new Date(e)).format("YYYY-MM-DD HH:mm")}},{title:"管理员信息",dataIndex:"aid",cell:function(e){var t=r.state.adminMap,n=t[e];return n?n.name:"--"}},{title:"最近一次清零时间",dataIndex:"reset_time",cell:function(e){return null==e?"- -":(0,w.default)(new Date(e)).format("YYYY-MM-DD HH:mm")}},{title:"操作",dataIndex:"",cell:function(e,t,n){return s.default.createElement("div",null,s.default.createElement(f.Button,{onClick:r.editCompany.bind(r,n)},"修改"),s.default.createElement("a",{target:"_blank",href:h.default.exportHealthCustomersByCid.param.url+"?qid=2&cid="+n.cid,style:{marginLeft:"8px"}},"导出健康信息告知问卷"),s.default.createElement(f.Button,{style:{marginLeft:"8px"},type:"primary",warning:!0,onClick:r.resetBonus.bind(r,n)},"积分清零"),s.default.createElement(b.Link,{style:{marginLeft:"8px"},to:{pathname:"/companybonustype",search:"cid="+n.cid+"&name="+n.name}},"积分规则"),s.default.createElement(b.Link,{style:{marginLeft:"8px"},to:{pathname:"/exchange",search:"cid="+n.cid+"&name="+n.name}},"积分兑换"),s.default.createElement(f.Button,{style:{marginLeft:"8px"},type:"primary"},s.default.createElement(b.Link,{style:{color:"white"},to:{pathname:"/exchange",search:"cid="+n.cid+"&name="+n.name}},"用户兑换记录")),s.default.createElement(f.Button,{style:{marginLeft:"8px"},type:"primary",onClick:r.onManageActivity.bind(r,n)},"活动管理"))}}],r}return u(t,e),l(t,[{key:"componentDidMount",value:function(){var e=this;this.loadAdmins().then(function(){e.loadList()})}},{key:"goExchange",value:function(e){}},{key:"editCompany",value:function(e){var t=this,n=f.Dialog.show({title:"修改邀请码",content:s.default.createElement(y.default,{onClose:function(){n.hide()},data:e,adminSource:this.state.adminSource,onSubmit:function(){var e=a(regeneratorRuntime.mark(function e(r){return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return e.next=2,(0,d.Fetch)("editCompany",r);case 2:return e.next=4,t.loadList();case 4:n.hide();case 5:case"end":return e.stop()}},e,t)}));return function(t){return e.apply(this,arguments)}}()}),footer:!1})}},{key:"loadAdmins",value:function(){var e=this;return(0,d.Fetch)("getAllAdmins").then(function(t){var n=t.data||[];e.setState({adminMap:n.reduce(function(e,t){return e[t.aid]=t,e},{}),adminSource:n.map(function(e){return{label:e.name,value:e.aid}})})})}},{key:"loadList",value:function(){var e=this;return(0,d.Fetch)("getAllCompany").then(function(t){e.setState({data:t.data})})}},{key:"render",value:function(){var e=this.state.data;return s.default.createElement("div",{style:{padding:"16px"}},s.default.createElement("div",{style:{margin:"4px 0 8px"}},s.default.createElement(f.Button,{type:"primary",onClick:this.addCode},"新增邀请码")),s.default.createElement(f.Table,{dataSource:e},this.COLUMNS.map(function(e,t){return s.default.createElement(f.Table.Column,{key:t,title:e.title,cell:e.cell,dataIndex:e.dataIndex})})))}}]),t}(c.Component);t.default=$},649:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function i(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function o(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}function u(e){return e&&"string"!=typeof e?e:1}Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var l=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},c=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),s=n(2),f=r(s),d=n(47),m=n(300),h=r(m),p=n(650),y=(r(p),function(e){function t(e){a(this,t);var n=i(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.beforeUpload=n.beforeUpload.bind(n),n.onChange=n.onChange.bind(n),n.onSuccess=n.onSuccess.bind(n),n.onError=n.onError.bind(n),n.state={value:e.value},n}return o(t,e),c(t,[{key:"beforeUpload",value:function(e){var t=u(this.props.fsize);if(e.size>1024*t*1024)return d.Message.warning("文件超过"+t+"M，请调整大小再上传"),!1}},{key:"onChange",value:function(e){if(e&&e[0]){var t=e[0],n=t.response||{};if(n.error)d.Message.error("上传失败 "+(n.error||"网络错误")),this.setState({value:[]});else if(n.data){var r=n.data.imgUrl,a=this.props.onChange,i=[{name:t.name,url:r}];this.setState({value:i}),a&&a(i)}}else this.setState({value:e||[]})}},{key:"componentWillReceiveProps",value:function(e){var t=e.value;this.setState({value:t})}},{key:"onSuccess",value:function(e){var t=this.props,n=t.onSuccess,r=t.onError,a=e.response.error;a?(e.error=a,r&&r(e)):(n&&n(e),d.Message.success("上传成功"))}},{key:"onError",value:function(e){var t=this.props.onError;t&&t(e),this.setState({value:this.state.value})}},{key:"render",value:function(){var e=this.state.value,t=this.props,n=t.children,r=t.fsize,a=t.otherProps,i=t.accept,o=void 0===i?"image/png, image/jpg":i,c=t.url;return f.default.createElement(d.Upload,l({},a,{action:c||h.default.upload.param.url,accept:o,limit:1,beforeUpload:this.beforeUpload,name:"file",size:u(r),listType:"image",onChange:this.onChange,onSuccess:this.onSuccess,onError:this.onError,value:e}),n||f.default.createElement(d.Button,{type:"primary",style:{padding:"0 12px"}},"上传文件"))}}]),t}(s.Component));t.default=y},650:function(e,t,n){var r=n(651);"string"==typeof r&&(r=[[e.i,r,""]]);var a={};a.transform=void 0;n(626)(r,a);r.locals&&(e.exports=r.locals)},651:function(e,t,n){t=e.exports=n(625)(!1),t.push([e.i,"",""])},652:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function i(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function o(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}function u(e){return e?[{url:e}]:[]}function l(e){return e&&e[0]?e[0].url:""}Object.defineProperty(t,"__esModule",{value:!0});var c=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},s=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),f=n(2),d=r(f),m=n(47),h=n(649),p=r(h),y=m.Form.Item,v={labelCol:{span:5},wrapperCol:{span:19}},g=function(e){function t(e){a(this,t);var n=i(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={size:"medium"},n}return o(t,e),s(t,[{key:"render",value:function(){var e=this.props,t=e.onSubmit,n=e.onClose,r=e.data,a=void 0===r?{}:r,i=e.adminSource;return d.default.createElement("div",null,d.default.createElement(m.Form,c({},v,{size:this.state.size,style:{minWidth:"660px"}}),d.default.createElement(y,{label:"邀请码："},d.default.createElement(m.Input,{defaultValue:a.code,placeholder:"输入邀请码",id:"code",name:"code"}),d.default.createElement(m.Input,{defaultValue:a.cid,htmlType:"hidden",id:"cid",name:"cid"})),d.default.createElement(y,{label:"公司名："},d.default.createElement(m.Input,{defaultValue:a.name,placeholder:"输入公司名",id:"name",name:"name"})),d.default.createElement(y,{label:"HR："},d.default.createElement(m.Input,{defaultValue:a.hr,placeholder:"请输入HR姓名",id:"hr",name:"hr"})),d.default.createElement(y,{label:"HR联系方式："},d.default.createElement(m.Input,{defaultValue:a.hr_phone,placeholder:"请输入HR联系方式",id:"hr_phone",name:"hr_phone"})),d.default.createElement(y,{label:"管理员"},d.default.createElement(m.Select,{defaultValue:a.aid,dataSource:i,id:"aid",name:"aid"})),d.default.createElement(y,{label:"对接人员昵称"},d.default.createElement(m.Input,{defaultValue:a.manage_name,placeholder:"请输入对接人员昵称",id:"manage_name",name:"manage_name"})),d.default.createElement(y,{label:"对接人员头像"},d.default.createElement(p.default,{defaultValue:u(a.manage_logo),name:"manage_logo",id:"manage_logo"})),d.default.createElement(y,{label:"对接人员微信二维码"},d.default.createElement(p.default,{defaultValue:u(a.manage_mask),name:"manage_mask",id:"manage_mask"})),d.default.createElement(y,{label:"开启个人健康告知问卷"},d.default.createElement(m.Switch,{defaultChecked:a.need_qus,id:"need_qus",name:"need_qus",autoWidth:!0})),d.default.createElement(y,{wrapperCol:{offset:5}},d.default.createElement(m.Form.Submit,{validate:!0,type:"primary",onClick:function(e,n){return e.code&&e.name?e.manage_name?e.manage_logo&&0!==e.manage_logo.length?e.manage_mask&&0!==e.manage_mask.length?(e.manage_logo=l(e.manage_logo),e.manage_mask=l(e.manage_mask),e.need_qus=e.need_qus?1:0,void(t&&t(e))):m.Message.warning("客服人员微信二维码不能为空"):m.Message.warning("客服人员头像不能为空"):m.Message.warning("客服人员昵称不能为空"):m.Message.warning("邀请码或者公司名不能为空")},style:{marginRight:10}},"提交"),d.default.createElement(m.Form.Reset,{onClick:n},"取消"))))}}]),t}(f.Component);t.default=g},653:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function i(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function o(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var u=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},l=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),c=n(2),s=r(c),f=n(47),d=n(649),m=(r(d),f.Form.Item),h={labelCol:{span:5},wrapperCol:{span:19}},p=function(e){function t(e){a(this,t);var n=i(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={size:"medium"},n}return o(t,e),l(t,[{key:"render",value:function(){var e=this.props,t=e.onSubmit,n=e.onClose,r=e.data,a=void 0===r?{}:r;return s.default.createElement("div",null,s.default.createElement(f.Form,u({},h,{size:this.state.size,style:{minWidth:"660px"}}),s.default.createElement(m,{label:"活动名称："},s.default.createElement(f.Input,{defaultValue:a.activity_name,placeholder:"请输入活动名称",id:"activity_name",name:"activity_name"})),s.default.createElement(m,{label:"开启活动"},s.default.createElement(f.Switch,{defaultChecked:a.enable_activity,id:"enable_activity",name:"enable_activity",autoWidth:!0})),s.default.createElement(m,{label:"活动邀请码："},s.default.createElement(f.Input,{defaultValue:a.activity_code,placeholder:"请输入活动邀请码",id:"activity_code",name:"activity_code"})),s.default.createElement(m,{wrapperCol:{offset:5}},s.default.createElement(f.Form.Submit,{validate:!0,type:"primary",onClick:function(e,n){if(e.enable_activity&&!e.activity_name)return f.Message.warning("活动名不能为空");e.enable_activity=e.enable_activity?1:0,t&&t(e)},style:{marginRight:10}},"提交"),s.default.createElement(f.Form.Reset,{onClick:n},"取消"))))}}]),t}(c.Component);t.default=p}});
//# sourceMappingURL=company.js.map