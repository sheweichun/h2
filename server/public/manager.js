webpackJsonp([14],{299:function(e,t,n){!function(t,n){e.exports=n()}(0,function(){"use strict";var e="millisecond",t="second",n="minute",r="hour",a="day",i="week",u="month",s="quarter",o="year",c="date",l="Invalid Date",f=/^(\d{4})[-/]?(\d{1,2})?[-/]?(\d{0,2})[Tt\s]*(\d{1,2})?:?(\d{1,2})?:?(\d{1,2})?[.:]?(\d+)?$/,d=/\[([^\]]+)]|Y{1,4}|M{1,4}|D{1,2}|d{1,4}|H{1,2}|h{1,2}|a|A|m{1,2}|s{1,2}|Z{1,2}|SSS/g,h={name:"en",weekdays:"Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),months:"January_February_March_April_May_June_July_August_September_October_November_December".split("_"),ordinal:function(e){var t=["th","st","nd","rd"],n=e%100;return"["+e+(t[(n-20)%10]||t[n]||t[0])+"]"}},p=function(e,t,n){var r=String(e);return!r||r.length>=t?e:""+Array(t+1-r.length).join(n)+e},m={s:p,z:function(e){var t=-e.utcOffset(),n=Math.abs(t),r=Math.floor(n/60),a=n%60;return(t<=0?"+":"-")+p(r,2,"0")+":"+p(a,2,"0")},m:function e(t,n){if(t.date()<n.date())return-e(n,t);var r=12*(n.year()-t.year())+(n.month()-t.month()),a=t.clone().add(r,u),i=n-a<0,s=t.clone().add(r+(i?-1:1),u);return+(-(r+(n-a)/(i?a-s:s-a))||0)},a:function(e){return e<0?Math.ceil(e)||0:Math.floor(e)},p:function(l){return{M:u,y:o,w:i,d:a,D:c,h:r,m:n,s:t,ms:e,Q:s}[l]||String(l||"").toLowerCase().replace(/s$/,"")},u:function(e){return void 0===e}},y="en",v={};v[y]=h;var $="$isDayjsObject",g=function(e){return e instanceof _||!(!e||!e[$])},b=function e(t,n,r){var a;if(!t)return y;if("string"==typeof t){var i=t.toLowerCase();v[i]&&(a=i),n&&(v[i]=n,a=i);var u=t.split("-");if(!a&&u.length>1)return e(u[0])}else{var s=t.name;v[s]=t,a=s}return!r&&a&&(y=a),a||!r&&y},w=function(e,t){if(g(e))return e.clone();var n="object"==typeof t?t:{};return n.date=e,n.args=arguments,new _(n)},M=m;M.l=b,M.i=g,M.w=function(e,t){return w(e,{locale:t.$L,utc:t.$u,x:t.$x,$offset:t.$offset})};var _=function(){function h(e){this.$L=b(e.locale,null,!0),this.parse(e),this.$x=this.$x||e.x||{},this[$]=!0}var p=h.prototype;return p.parse=function(e){this.$d=function(e){var t=e.date,n=e.utc;if(null===t)return new Date(NaN);if(M.u(t))return new Date;if(t instanceof Date)return new Date(t);if("string"==typeof t&&!/Z$/i.test(t)){var r=t.match(f);if(r){var a=r[2]-1||0,i=(r[7]||"0").substring(0,3);return n?new Date(Date.UTC(r[1],a,r[3]||1,r[4]||0,r[5]||0,r[6]||0,i)):new Date(r[1],a,r[3]||1,r[4]||0,r[5]||0,r[6]||0,i)}}return new Date(t)}(e),this.init()},p.init=function(){var e=this.$d;this.$y=e.getFullYear(),this.$M=e.getMonth(),this.$D=e.getDate(),this.$W=e.getDay(),this.$H=e.getHours(),this.$m=e.getMinutes(),this.$s=e.getSeconds(),this.$ms=e.getMilliseconds()},p.$utils=function(){return M},p.isValid=function(){return!(this.$d.toString()===l)},p.isSame=function(e,t){var n=w(e);return this.startOf(t)<=n&&n<=this.endOf(t)},p.isAfter=function(e,t){return w(e)<this.startOf(t)},p.isBefore=function(e,t){return this.endOf(t)<w(e)},p.$g=function(e,t,n){return M.u(e)?this[t]:this.set(n,e)},p.unix=function(){return Math.floor(this.valueOf()/1e3)},p.valueOf=function(){return this.$d.getTime()},p.startOf=function(e,s){var l=this,f=!!M.u(s)||s,d=M.p(e),h=function(e,t){var n=M.w(l.$u?Date.UTC(l.$y,t,e):new Date(l.$y,t,e),l);return f?n:n.endOf(a)},p=function(e,t){return M.w(l.toDate()[e].apply(l.toDate("s"),(f?[0,0,0,0]:[23,59,59,999]).slice(t)),l)},m=this.$W,y=this.$M,v=this.$D,$="set"+(this.$u?"UTC":"");switch(d){case o:return f?h(1,0):h(31,11);case u:return f?h(1,y):h(0,y+1);case i:var g=this.$locale().weekStart||0,b=(m<g?m+7:m)-g;return h(f?v-b:v+(6-b),y);case a:case c:return p($+"Hours",0);case r:return p($+"Minutes",1);case n:return p($+"Seconds",2);case t:return p($+"Milliseconds",3);default:return this.clone()}},p.endOf=function(e){return this.startOf(e,!1)},p.$set=function(i,s){var l,f=M.p(i),d="set"+(this.$u?"UTC":""),h=(l={},l[a]=d+"Date",l[c]=d+"Date",l[u]=d+"Month",l[o]=d+"FullYear",l[r]=d+"Hours",l[n]=d+"Minutes",l[t]=d+"Seconds",l[e]=d+"Milliseconds",l)[f],p=f===a?this.$D+(s-this.$W):s;if(f===u||f===o){var m=this.clone().set(c,1);m.$d[h](p),m.init(),this.$d=m.set(c,Math.min(this.$D,m.daysInMonth())).$d}else h&&this.$d[h](p);return this.init(),this},p.set=function(e,t){return this.clone().$set(e,t)},p.get=function(e){return this[M.p(e)]()},p.add=function(e,s){var c,l=this;e=Number(e);var f=M.p(s),d=function(t){var n=w(l);return M.w(n.date(n.date()+Math.round(t*e)),l)};if(f===u)return this.set(u,this.$M+e);if(f===o)return this.set(o,this.$y+e);if(f===a)return d(1);if(f===i)return d(7);var h=(c={},c[n]=6e4,c[r]=36e5,c[t]=1e3,c)[f]||1,p=this.$d.getTime()+e*h;return M.w(p,this)},p.subtract=function(e,t){return this.add(-1*e,t)},p.format=function(e){var t=this,n=this.$locale();if(!this.isValid())return n.invalidDate||l;var r=e||"YYYY-MM-DDTHH:mm:ssZ",a=M.z(this),i=this.$H,u=this.$m,s=this.$M,o=n.weekdays,c=n.months,f=n.meridiem,h=function(e,n,a,i){return e&&(e[n]||e(t,r))||a[n].slice(0,i)},p=function(e){return M.s(i%12||12,e,"0")},m=f||function(e,t,n){var r=e<12?"AM":"PM";return n?r.toLowerCase():r};return r.replace(d,function(e,r){return r||function(e){switch(e){case"YY":return String(t.$y).slice(-2);case"YYYY":return M.s(t.$y,4,"0");case"M":return s+1;case"MM":return M.s(s+1,2,"0");case"MMM":return h(n.monthsShort,s,c,3);case"MMMM":return h(c,s);case"D":return t.$D;case"DD":return M.s(t.$D,2,"0");case"d":return String(t.$W);case"dd":return h(n.weekdaysMin,t.$W,o,2);case"ddd":return h(n.weekdaysShort,t.$W,o,3);case"dddd":return o[t.$W];case"H":return String(i);case"HH":return M.s(i,2,"0");case"h":return p(1);case"hh":return p(2);case"a":return m(i,u,!0);case"A":return m(i,u,!1);case"m":return String(u);case"mm":return M.s(u,2,"0");case"s":return String(t.$s);case"ss":return M.s(t.$s,2,"0");case"SSS":return M.s(t.$ms,3,"0");case"Z":return a}return null}(e)||a.replace(":","")})},p.utcOffset=function(){return 15*-Math.round(this.$d.getTimezoneOffset()/15)},p.diff=function(e,c,l){var f,d=this,h=M.p(c),p=w(e),m=6e4*(p.utcOffset()-this.utcOffset()),y=this-p,v=function(){return M.m(d,p)};switch(h){case o:f=v()/12;break;case u:f=v();break;case s:f=v()/3;break;case i:f=(y-m)/6048e5;break;case a:f=(y-m)/864e5;break;case r:f=y/36e5;break;case n:f=y/6e4;break;case t:f=y/1e3;break;default:f=y}return l?f:M.a(f)},p.daysInMonth=function(){return this.endOf(u).$D},p.$locale=function(){return v[this.$L]},p.locale=function(e,t){if(!e)return this.$L;var n=this.clone(),r=b(e,t,!0);return r&&(n.$L=r),n},p.clone=function(){return M.w(this.$d,this)},p.toDate=function(){return new Date(this.valueOf())},p.toJSON=function(){return this.isValid()?this.toISOString():null},p.toISOString=function(){return this.$d.toISOString()},p.toString=function(){return this.$d.toUTCString()},h}(),O=_.prototype;return w.prototype=O,[["$ms",e],["$s",t],["$m",n],["$H",r],["$W",a],["$M",u],["$y",o],["$D",c]].forEach(function(e){O[e[1]]=function(t){return this.$g(t,e[0],e[1])}}),w.extend=function(e,t){return e.$i||(e(t,_,w),e.$i=!0),w},w.locale=b,w.isDayjs=g,w.unix=function(e){return w(1e3*e)},w.en=v[y],w.Ls=v,w.p={},w})},647:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e){return function(){var t=e.apply(this,arguments);return new Promise(function(e,n){function r(a,i){try{var u=t[a](i),s=u.value}catch(e){return void n(e)}if(!u.done)return Promise.resolve(s).then(function(e){r("next",e)},function(e){r("throw",e)});e(s)}return r("next")})}}function i(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function u(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function s(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var o=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),c=n(2),l=r(c),f=n(47),d=n(94),h=(n(36),n(676)),p=r(h),m=n(299),y=(r(m),function(e){function t(e){i(this,t);var n=u(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={data:[]},n.query={},n.onAdd=n.onAdd.bind(n),n.COLUMNS=[{dataIndex:"name",title:"姓名"},{dataIndex:"user_name",title:"用户名"},{dataIndex:"super",title:"是否超级管理员",cell:function(e){return e?"是":"否"}},{dataIndex:"flag",title:"是否启用",cell:function(e){return e?"是":"否"}},{dataIndex:"",title:"操作",cell:function(e,t,r){return l.default.createElement("div",null,l.default.createElement(f.Button,{type:"primary",onClick:n.onEdit.bind(n,r)},"修改"))}}],n}return s(t,e),o(t,[{key:"onAdd",value:function(){var e=this,t=f.Dialog.show({title:"新增管理员信息",content:l.default.createElement(p.default,{onClose:function(){t.hide()},onSubmit:function(){var n=a(regeneratorRuntime.mark(function n(r){return regeneratorRuntime.wrap(function(n){for(;;)switch(n.prev=n.next){case 0:return n.next=2,(0,d.Fetch)("addAdmin",{data:r});case 2:return n.next=4,e.loadList();case 4:f.Message.success("修改成功"),t.hide();case 6:case"end":return n.stop()}},n,e)}));return function(e){return n.apply(this,arguments)}}()}),footer:!1})}},{key:"onEdit",value:function(e){var t=this,n=f.Dialog.show({title:"修改管理员信息",content:l.default.createElement(p.default,{onClose:function(){n.hide()},data:e,onSubmit:function(){var r=a(regeneratorRuntime.mark(function r(a){return regeneratorRuntime.wrap(function(r){for(;;)switch(r.prev=r.next){case 0:return a.aid=e.aid,r.next=3,(0,d.Fetch)("updateAdmin",{data:a});case 3:return r.next=5,t.loadList();case 5:f.Message.success("修改成功"),n.hide();case 7:case"end":return r.stop()}},r,t)}));return function(e){return r.apply(this,arguments)}}()}),footer:!1})}},{key:"componentDidMount",value:function(){function e(){return t.apply(this,arguments)}var t=a(regeneratorRuntime.mark(function e(){return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:this.loadList();case 1:case"end":return e.stop()}},e,this)}));return e}()},{key:"loadList",value:function(){var e=this;return(0,d.Fetch)("getAllAdmins").then(function(t){e.setState({data:t.data})})}},{key:"render",value:function(){var e=this.state.data;return l.default.createElement("div",{style:{padding:"16px"}},l.default.createElement("div",{style:{padding:"16px"}},l.default.createElement(f.Button,{type:"primary",onClick:this.onAdd},"新增")),l.default.createElement(f.Table,{dataSource:e},this.COLUMNS.map(function(e,t){return l.default.createElement(f.Table.Column,{key:t,title:e.title,cell:e.cell,width:e.width,dataIndex:e.dataIndex})})))}}]),t}(c.Component));t.default=y},676:function(e,t,n){"use strict";function r(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function a(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function i(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var u=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},s=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),o=n(2),c=function(e){return e&&e.__esModule?e:{default:e}}(o),l=n(47),f=l.Form.Item,d={labelCol:{span:5},wrapperCol:{span:19}},h=function(e){function t(e){r(this,t);var n=a(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={size:"medium"},n}return i(t,e),s(t,[{key:"render",value:function(){var e=this.props,t=e.onSubmit,n=e.onClose,r=e.data,a=void 0===r?{}:r;return c.default.createElement("div",null,c.default.createElement(l.Form,u({},d,{size:this.state.size,style:{minWidth:"500px"}}),c.default.createElement(f,{label:"姓名"},c.default.createElement(l.Input,{defaultValue:a.name,id:"name",name:"name",placeholder:"请输入姓名"})),c.default.createElement(f,{label:"用户名"},c.default.createElement(l.Input,{defaultValue:a.user_name,placeholder:"请输入用户名",id:"user_name",name:"user_name"})),c.default.createElement(f,{label:"密码"},c.default.createElement(l.Input,{defaultValue:a.password,htmlType:"password",placeholder:"请输入密码",id:"password",name:"password"})),c.default.createElement(f,{label:"是否管理员"},c.default.createElement(l.Switch,{defaultChecked:!!a.super,defaultValue:!!a.super,id:"super",name:"super"})),c.default.createElement(f,{label:"是否启用"},c.default.createElement(l.Switch,{defaultChecked:null==a.flag||!!a.flag,defaultValue:null==a.flag||!!a.flag,id:"flag",name:"flag"})),c.default.createElement(f,{wrapperCol:{offset:5}},c.default.createElement(l.Form.Submit,{validate:!0,type:"primary",onClick:function(e,n){return null==e.flag&&(e.flag=!0),e.flag=e.flag?1:0,e.super=e.super?1:0,e.name?e.user_name?e.password?void(t&&t(e)):l.Message.warning("密码不能为空"):l.Message.warning("用户名不能为空"):l.Message.warning("姓名不能为空")},style:{marginRight:10}},"提交"),c.default.createElement(l.Form.Reset,{onClick:n},"取消"))))}}]),t}(o.Component);t.default=h}});
//# sourceMappingURL=manager.js.map