webpackJsonp([10],{299:function(e,t,n){!function(t,n){e.exports=n()}(0,function(){"use strict";var e="millisecond",t="second",n="minute",r="hour",a="day",i="week",u="month",o="quarter",s="year",c="date",l="Invalid Date",f=/^(\d{4})[-/]?(\d{1,2})?[-/]?(\d{0,2})[Tt\s]*(\d{1,2})?:?(\d{1,2})?:?(\d{1,2})?[.:]?(\d+)?$/,d=/\[([^\]]+)]|Y{1,4}|M{1,4}|D{1,2}|d{1,4}|H{1,2}|h{1,2}|a|A|m{1,2}|s{1,2}|Z{1,2}|SSS/g,h={name:"en",weekdays:"Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),months:"January_February_March_April_May_June_July_August_September_October_November_December".split("_"),ordinal:function(e){var t=["th","st","nd","rd"],n=e%100;return"["+e+(t[(n-20)%10]||t[n]||t[0])+"]"}},p=function(e,t,n){var r=String(e);return!r||r.length>=t?e:""+Array(t+1-r.length).join(n)+e},m={s:p,z:function(e){var t=-e.utcOffset(),n=Math.abs(t),r=Math.floor(n/60),a=n%60;return(t<=0?"+":"-")+p(r,2,"0")+":"+p(a,2,"0")},m:function e(t,n){if(t.date()<n.date())return-e(n,t);var r=12*(n.year()-t.year())+(n.month()-t.month()),a=t.clone().add(r,u),i=n-a<0,o=t.clone().add(r+(i?-1:1),u);return+(-(r+(n-a)/(i?a-o:o-a))||0)},a:function(e){return e<0?Math.ceil(e)||0:Math.floor(e)},p:function(l){return{M:u,y:s,w:i,d:a,D:c,h:r,m:n,s:t,ms:e,Q:o}[l]||String(l||"").toLowerCase().replace(/s$/,"")},u:function(e){return void 0===e}},y="en",v={};v[y]=h;var b="$isDayjsObject",$=function(e){return e instanceof O||!(!e||!e[b])},g=function e(t,n,r){var a;if(!t)return y;if("string"==typeof t){var i=t.toLowerCase();v[i]&&(a=i),n&&(v[i]=n,a=i);var u=t.split("-");if(!a&&u.length>1)return e(u[0])}else{var o=t.name;v[o]=t,a=o}return!r&&a&&(y=a),a||!r&&y},w=function(e,t){if($(e))return e.clone();var n="object"==typeof t?t:{};return n.date=e,n.args=arguments,new O(n)},M=m;M.l=g,M.i=$,M.w=function(e,t){return w(e,{locale:t.$L,utc:t.$u,x:t.$x,$offset:t.$offset})};var O=function(){function h(e){this.$L=g(e.locale,null,!0),this.parse(e),this.$x=this.$x||e.x||{},this[b]=!0}var p=h.prototype;return p.parse=function(e){this.$d=function(e){var t=e.date,n=e.utc;if(null===t)return new Date(NaN);if(M.u(t))return new Date;if(t instanceof Date)return new Date(t);if("string"==typeof t&&!/Z$/i.test(t)){var r=t.match(f);if(r){var a=r[2]-1||0,i=(r[7]||"0").substring(0,3);return n?new Date(Date.UTC(r[1],a,r[3]||1,r[4]||0,r[5]||0,r[6]||0,i)):new Date(r[1],a,r[3]||1,r[4]||0,r[5]||0,r[6]||0,i)}}return new Date(t)}(e),this.init()},p.init=function(){var e=this.$d;this.$y=e.getFullYear(),this.$M=e.getMonth(),this.$D=e.getDate(),this.$W=e.getDay(),this.$H=e.getHours(),this.$m=e.getMinutes(),this.$s=e.getSeconds(),this.$ms=e.getMilliseconds()},p.$utils=function(){return M},p.isValid=function(){return!(this.$d.toString()===l)},p.isSame=function(e,t){var n=w(e);return this.startOf(t)<=n&&n<=this.endOf(t)},p.isAfter=function(e,t){return w(e)<this.startOf(t)},p.isBefore=function(e,t){return this.endOf(t)<w(e)},p.$g=function(e,t,n){return M.u(e)?this[t]:this.set(n,e)},p.unix=function(){return Math.floor(this.valueOf()/1e3)},p.valueOf=function(){return this.$d.getTime()},p.startOf=function(e,o){var l=this,f=!!M.u(o)||o,d=M.p(e),h=function(e,t){var n=M.w(l.$u?Date.UTC(l.$y,t,e):new Date(l.$y,t,e),l);return f?n:n.endOf(a)},p=function(e,t){return M.w(l.toDate()[e].apply(l.toDate("s"),(f?[0,0,0,0]:[23,59,59,999]).slice(t)),l)},m=this.$W,y=this.$M,v=this.$D,b="set"+(this.$u?"UTC":"");switch(d){case s:return f?h(1,0):h(31,11);case u:return f?h(1,y):h(0,y+1);case i:var $=this.$locale().weekStart||0,g=(m<$?m+7:m)-$;return h(f?v-g:v+(6-g),y);case a:case c:return p(b+"Hours",0);case r:return p(b+"Minutes",1);case n:return p(b+"Seconds",2);case t:return p(b+"Milliseconds",3);default:return this.clone()}},p.endOf=function(e){return this.startOf(e,!1)},p.$set=function(i,o){var l,f=M.p(i),d="set"+(this.$u?"UTC":""),h=(l={},l[a]=d+"Date",l[c]=d+"Date",l[u]=d+"Month",l[s]=d+"FullYear",l[r]=d+"Hours",l[n]=d+"Minutes",l[t]=d+"Seconds",l[e]=d+"Milliseconds",l)[f],p=f===a?this.$D+(o-this.$W):o;if(f===u||f===s){var m=this.clone().set(c,1);m.$d[h](p),m.init(),this.$d=m.set(c,Math.min(this.$D,m.daysInMonth())).$d}else h&&this.$d[h](p);return this.init(),this},p.set=function(e,t){return this.clone().$set(e,t)},p.get=function(e){return this[M.p(e)]()},p.add=function(e,o){var c,l=this;e=Number(e);var f=M.p(o),d=function(t){var n=w(l);return M.w(n.date(n.date()+Math.round(t*e)),l)};if(f===u)return this.set(u,this.$M+e);if(f===s)return this.set(s,this.$y+e);if(f===a)return d(1);if(f===i)return d(7);var h=(c={},c[n]=6e4,c[r]=36e5,c[t]=1e3,c)[f]||1,p=this.$d.getTime()+e*h;return M.w(p,this)},p.subtract=function(e,t){return this.add(-1*e,t)},p.format=function(e){var t=this,n=this.$locale();if(!this.isValid())return n.invalidDate||l;var r=e||"YYYY-MM-DDTHH:mm:ssZ",a=M.z(this),i=this.$H,u=this.$m,o=this.$M,s=n.weekdays,c=n.months,f=n.meridiem,h=function(e,n,a,i){return e&&(e[n]||e(t,r))||a[n].slice(0,i)},p=function(e){return M.s(i%12||12,e,"0")},m=f||function(e,t,n){var r=e<12?"AM":"PM";return n?r.toLowerCase():r};return r.replace(d,function(e,r){return r||function(e){switch(e){case"YY":return String(t.$y).slice(-2);case"YYYY":return M.s(t.$y,4,"0");case"M":return o+1;case"MM":return M.s(o+1,2,"0");case"MMM":return h(n.monthsShort,o,c,3);case"MMMM":return h(c,o);case"D":return t.$D;case"DD":return M.s(t.$D,2,"0");case"d":return String(t.$W);case"dd":return h(n.weekdaysMin,t.$W,s,2);case"ddd":return h(n.weekdaysShort,t.$W,s,3);case"dddd":return s[t.$W];case"H":return String(i);case"HH":return M.s(i,2,"0");case"h":return p(1);case"hh":return p(2);case"a":return m(i,u,!0);case"A":return m(i,u,!1);case"m":return String(u);case"mm":return M.s(u,2,"0");case"s":return String(t.$s);case"ss":return M.s(t.$s,2,"0");case"SSS":return M.s(t.$ms,3,"0");case"Z":return a}return null}(e)||a.replace(":","")})},p.utcOffset=function(){return 15*-Math.round(this.$d.getTimezoneOffset()/15)},p.diff=function(e,c,l){var f,d=this,h=M.p(c),p=w(e),m=6e4*(p.utcOffset()-this.utcOffset()),y=this-p,v=function(){return M.m(d,p)};switch(h){case s:f=v()/12;break;case u:f=v();break;case o:f=v()/3;break;case i:f=(y-m)/6048e5;break;case a:f=(y-m)/864e5;break;case r:f=y/36e5;break;case n:f=y/6e4;break;case t:f=y/1e3;break;default:f=y}return l?f:M.a(f)},p.daysInMonth=function(){return this.endOf(u).$D},p.$locale=function(){return v[this.$L]},p.locale=function(e,t){if(!e)return this.$L;var n=this.clone(),r=g(e,t,!0);return r&&(n.$L=r),n},p.clone=function(){return M.w(this.$d,this)},p.toDate=function(){return new Date(this.valueOf())},p.toJSON=function(){return this.isValid()?this.toISOString():null},p.toISOString=function(){return this.$d.toISOString()},p.toString=function(){return this.$d.toUTCString()},h}(),S=O.prototype;return w.prototype=S,[["$ms",e],["$s",t],["$m",n],["$H",r],["$W",a],["$M",u],["$y",s],["$D",c]].forEach(function(e){S[e[1]]=function(t){return this.$g(t,e[0],e[1])}}),w.extend=function(e,t){return e.$i||(e(t,O,w),e.$i=!0),w},w.locale=g,w.isDayjs=$,w.unix=function(e){return w(1e3*e)},w.en=v[y],w.Ls=v,w.p={},w})},635:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e){return function(){var t=e.apply(this,arguments);return new Promise(function(e,n){function r(a,i){try{var u=t[a](i),o=u.value}catch(e){return void n(e)}if(!u.done)return Promise.resolve(o).then(function(e){r("next",e)},function(e){r("throw",e)});e(o)}return r("next")})}}function i(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function u(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function o(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var s=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),c=n(2),l=r(c),f=n(47),d=n(94),h=n(665),p=r(h),m=n(648),y=n(299),v=(r(y),function(e){function t(e){var n=this;i(this,t);var r=u(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));r.addType=function(){var e=r.state.cid,t=f.Dialog.show({title:"新增积分规则",content:l.default.createElement(p.default,{onClose:function(){t.hide()},onSubmit:function(){var i=a(regeneratorRuntime.mark(function a(i){return regeneratorRuntime.wrap(function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,(0,d.Fetch)("addBonusType",{data:{tid:i.tid,tname:i.tname,bonuse:i.bonuse,cid:e}});case 2:return n.next=4,r.loadList();case 4:t.hide();case 5:case"end":return n.stop()}},a,n)}));return function(e){return i.apply(this,arguments)}}()}),footer:!1})};var o=e.location,s=(0,m.parse)(o.search);return r.state={data:[],name:s.name,cid:s.cid},r.COLUMNS=[{title:"id",dataIndex:"id"},{title:"积分类型",dataIndex:"tname"},{title:"积分制",dataIndex:"bonuse"},{title:"操作",dataIndex:"",cell:function(e,t,n){return l.default.createElement("div",null,l.default.createElement(f.Button,{onClick:r.editType.bind(r,n)},"修改"))}}],r}return o(t,e),s(t,[{key:"loadList",value:function(){var e=this,t=this.state.cid;return(0,d.Fetch)("getAllCompanyBonusType",{cid:t}).then(function(t){e.setState({data:t.data})})}},{key:"editType",value:function(e){var t=this,n=this.state.cid,r=f.Dialog.show({title:"修改积分规则",content:l.default.createElement(p.default,{onClose:function(){r.hide()},data:e,onSubmit:function(){var i=a(regeneratorRuntime.mark(function a(i){return regeneratorRuntime.wrap(function(a){for(;;)switch(a.prev=a.next){case 0:return a.next=2,(0,d.Fetch)("editCompanyBonusType",{data:{id:e.id,tid:e.tid,tname:e.tname,bonuse:i.bonuse,cid:n}});case 2:return a.next=4,t.loadList();case 4:r.hide();case 5:case"end":return a.stop()}},a,t)}));return function(e){return i.apply(this,arguments)}}()}),footer:!1})}},{key:"componentDidMount",value:function(){this.loadList()}},{key:"render",value:function(){var e=this.state,t=e.data,n=e.name;return l.default.createElement("div",{style:{padding:"16px"}},l.default.createElement("div",{style:{margin:"4px 0 8px"}},l.default.createElement("span",{style:{marginRight:"8px"}},"公司名:",n),l.default.createElement(f.Button,{type:"primary",onClick:this.addType},"新增积分规则")),l.default.createElement(f.Table,{dataSource:t},this.COLUMNS.map(function(e,t){return l.default.createElement(f.Table.Column,{key:t,title:e.title,cell:e.cell,dataIndex:e.dataIndex})})))}}]),t}(c.Component));t.default=v},648:function(e,t,n){"use strict";function r(e){return null==e?{}:(0===e.indexOf("?")&&(e=e.substring(1)),e.split("&").reduce(function(e,t){var n=t.split("=");return e[n[0]]=decodeURIComponent(n[1]),e},{}))}Object.defineProperty(t,"__esModule",{value:!0});var a="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e};t.parse=r,t.default=function(e,t,n,r){return t=t||"&",n=n||"=",null===e&&(e=void 0),"object"===(void 0===e?"undefined":a(e))?Object.keys(e).map(function(r){var a=encodeURIComponent(i(r))+n;return Array.isArray(e[r])?e[r].map(function(e){return a+encodeURIComponent(i(e))}).join(t):a+encodeURIComponent(i(e[r]))}).join(t):r?encodeURIComponent(i(r))+n+encodeURIComponent(i(e)):""};var i=function(e){switch(void 0===e?"undefined":a(e)){case"string":return e;case"boolean":return e?"true":"false";case"number":return isFinite(e)?e:"";case"object":return JSON.stringify(e);default:return""}}},665:function(e,t,n){"use strict";function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function a(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function i(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var u=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},o=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),s=n(2),c=function(e){return e&&e.__esModule?e:{default:e}}(s),l=n(47),f=l.Form.Item,d=l.Select.Option,h={labelCol:{span:5},wrapperCol:{span:19}},p=function(e){function t(e){r(this,t);var n=a(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={size:"medium"},n.types=[{label:"体检报告",value:1},{label:"洗牙报告",value:3},{label:"健康问卷",value:10},{label:"健康生活",value:11},{label:"健康运动",value:12},{label:"活动打卡",value:13}],n}return i(t,e),o(t,[{key:"render",value:function(){var e=this.types,t=this.props,n=t.onSubmit,r=t.onClose,a=t.data,i=void 0===a?{}:a;return c.default.createElement("div",null,c.default.createElement(l.Form,u({},h,{size:this.state.size,style:{minWidth:"500px"}}),c.default.createElement(f,{label:"积类型："},c.default.createElement(l.Select,{style:{width:150},disabled:!!i.id,defaultValue:i.tid,name:"tid"},e&&e.map(function(e){return c.default.createElement(d,{key:e.value,value:e.value},e.label)}))),c.default.createElement(f,{label:"积分值："},c.default.createElement(l.Input,{defaultValue:i.bonuse,placeholder:"输入积分制",id:"bonuse",name:"bonuse"})),c.default.createElement(f,{wrapperCol:{offset:5}},c.default.createElement(l.Form.Submit,{validate:!0,type:"primary",onClick:function(t,r){var a=parseInt(t.bonuse);if(isNaN(a))return l.Message.warning("积分值必须为整数");var i=e.filter(function(e){return e.value===t.tid})[0];if(!i)return l.Message.warning("请选择积分类型");n&&n({bonuse:a,tid:i.value,tname:i.label})},style:{marginRight:10}},"提交"),c.default.createElement(l.Form.Reset,{onClick:r},"取消"))))}}]),t}(s.Component);t.default=p}});
//# sourceMappingURL=companyBonusType.js.map