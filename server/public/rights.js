webpackJsonp([1],{243:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e){return function(){var t=e.apply(this,arguments);return new Promise(function(e,n){function r(a,i){try{var u=t[a](i),o=u.value}catch(e){return void n(e)}if(!u.done)return Promise.resolve(o).then(function(e){r("next",e)},function(e){r("throw",e)});e(o)}return r("next")})}}function i(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function u(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function o(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}function s(e){return(e||[]).reduce(function(e,t){return e[t.mid]=t,e},{})}function l(e){var t=e||{};return Object.keys(t).map(function(e){var n=t[e]||{};return{mid:n.mid,num:n.num}})}Object.defineProperty(t,"__esModule",{value:!0});var c=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),f=n(2),d=r(f),m=n(3),h=n(7),p=(n(8),n(273)),v=r(p),b=n(277),y=n(251),g=(r(y),function(e){function t(e){i(this,t);var n=u(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={data:[]},n.query={},n.COLUMNS=[{dataIndex:"cate_name",title:"权益类别"},{dataIndex:"name",title:"权益名"},{dataIndex:"description",title:"权益内容"},{dataIndex:"validdate",title:"有效期",cell:function(e){return null==e||""===e?"-":0===e?"终身":Math.floor(e/b.ONE_YEAR)+"年"}},{dataIndex:"user",title:"使用人"},{dataIndex:"unit",title:"数量单位(比如份)"},{dataIndex:"rights",title:"覆盖的会员等级",cell:function(e,t,n){return d.default.createElement("div",null,(e||[]).map(function(e){return e.display?d.default.createElement("div",null,d.default.createElement("span",null,e.label,"："),d.default.createElement("span",null,e.num,n.unit)):""}))}},{dataIndex:"display",title:"是否展示",cell:function(e){return e?"是":"否"}},{dataIndex:"",title:"操作",cell:function(e,t,r){return d.default.createElement("div",null,d.default.createElement(m.Button,{type:"primary",onClick:n.onEdit.bind(n,r)},"修改"))}}],n.onAdd=n.onAdd.bind(n),n}return o(t,e),c(t,[{key:"onAdd",value:function(){var e=this,t=m.Dialog.show({title:"新增权益",content:d.default.createElement(v.default,{onClose:function(){t.hide()},onSubmit:function(){var n=a(regeneratorRuntime.mark(function n(r){var a,i;return regeneratorRuntime.wrap(function(n){for(;;)switch(n.prev=n.next){case 0:return a=Object.assign({},r),i=l(a.members),delete a.members,a.validdate=Math.floor(b.ONE_YEAR*(a.validdate||0)),n.next=6,(0,h.Fetch)("addRights",{data:a,list:i});case 6:return n.next=8,e.loadList();case 8:t.hide();case 9:case"end":return n.stop()}},n,e)}));return function(e){return n.apply(this,arguments)}}()}),footer:!1})}},{key:"onEdit",value:function(e){var t=this,n=Object.assign({},e);n.validdate=(0,b.formatValidDate)(n.validdate),n.members=s(n.rights);var r=m.Dialog.show({title:"修改会员权益信息",content:d.default.createElement(v.default,{onClose:function(){r.hide()},data:n,onSubmit:function(){var n=a(regeneratorRuntime.mark(function n(a){var i,u,o;return regeneratorRuntime.wrap(function(n){for(;;)switch(n.prev=n.next){case 0:return i=Object.assign({},a),u=e.id,i.id=u,o=l(i.members),delete i.members,i.validdate=Math.floor(b.ONE_YEAR*(i.validdate||0)),n.next=8,(0,h.Fetch)("updateRights",{data:i,list:o});case 8:return n.next=10,t.loadList();case 10:r.hide();case 11:case"end":return n.stop()}},n,t)}));return function(e){return n.apply(this,arguments)}}()}),footer:!1})}},{key:"componentDidMount",value:function(){function e(){return t.apply(this,arguments)}var t=a(regeneratorRuntime.mark(function e(){return regeneratorRuntime.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:this.loadList();case 1:case"end":return e.stop()}},e,this)}));return e}()},{key:"loadList",value:function(){var e=this;return(0,h.Fetch)("getRightsList").then(function(t){e.setState({data:t.data})})}},{key:"render",value:function(){var e=this.state.data;return d.default.createElement("div",{style:{padding:"16px"}},d.default.createElement("div",{style:{marginBottom:"16px"}},d.default.createElement(m.Button,{type:"primary",style:{},onClick:this.onAdd},"新增权益")),d.default.createElement(m.Table,{dataSource:e},this.COLUMNS.map(function(e,t){return d.default.createElement(m.Table.Column,{key:t,title:e.title,cell:e.cell,width:e.width,dataIndex:e.dataIndex})})))}}]),t}(f.Component));t.default=g},251:function(e,t,n){!function(t,n){e.exports=n()}(0,function(){"use strict";var e="millisecond",t="second",n="minute",r="hour",a="day",i="week",u="month",o="quarter",s="year",l="date",c="Invalid Date",f=/^(\d{4})[-/]?(\d{1,2})?[-/]?(\d{0,2})[Tt\s]*(\d{1,2})?:?(\d{1,2})?:?(\d{1,2})?[.:]?(\d+)?$/,d=/\[([^\]]+)]|Y{1,4}|M{1,4}|D{1,2}|d{1,4}|H{1,2}|h{1,2}|a|A|m{1,2}|s{1,2}|Z{1,2}|SSS/g,m={name:"en",weekdays:"Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"),months:"January_February_March_April_May_June_July_August_September_October_November_December".split("_"),ordinal:function(e){var t=["th","st","nd","rd"],n=e%100;return"["+e+(t[(n-20)%10]||t[n]||t[0])+"]"}},h=function(e,t,n){var r=String(e);return!r||r.length>=t?e:""+Array(t+1-r.length).join(n)+e},p={s:h,z:function(e){var t=-e.utcOffset(),n=Math.abs(t),r=Math.floor(n/60),a=n%60;return(t<=0?"+":"-")+h(r,2,"0")+":"+h(a,2,"0")},m:function e(t,n){if(t.date()<n.date())return-e(n,t);var r=12*(n.year()-t.year())+(n.month()-t.month()),a=t.clone().add(r,u),i=n-a<0,o=t.clone().add(r+(i?-1:1),u);return+(-(r+(n-a)/(i?a-o:o-a))||0)},a:function(e){return e<0?Math.ceil(e)||0:Math.floor(e)},p:function(c){return{M:u,y:s,w:i,d:a,D:l,h:r,m:n,s:t,ms:e,Q:o}[c]||String(c||"").toLowerCase().replace(/s$/,"")},u:function(e){return void 0===e}},v="en",b={};b[v]=m;var y="$isDayjsObject",g=function(e){return e instanceof O||!(!e||!e[y])},w=function e(t,n,r){var a;if(!t)return v;if("string"==typeof t){var i=t.toLowerCase();b[i]&&(a=i),n&&(b[i]=n,a=i);var u=t.split("-");if(!a&&u.length>1)return e(u[0])}else{var o=t.name;b[o]=t,a=o}return!r&&a&&(v=a),a||!r&&v},$=function(e,t){if(g(e))return e.clone();var n="object"==typeof t?t:{};return n.date=e,n.args=arguments,new O(n)},M=p;M.l=w,M.i=g,M.w=function(e,t){return $(e,{locale:t.$L,utc:t.$u,x:t.$x,$offset:t.$offset})};var O=function(){function m(e){this.$L=w(e.locale,null,!0),this.parse(e),this.$x=this.$x||e.x||{},this[y]=!0}var h=m.prototype;return h.parse=function(e){this.$d=function(e){var t=e.date,n=e.utc;if(null===t)return new Date(NaN);if(M.u(t))return new Date;if(t instanceof Date)return new Date(t);if("string"==typeof t&&!/Z$/i.test(t)){var r=t.match(f);if(r){var a=r[2]-1||0,i=(r[7]||"0").substring(0,3);return n?new Date(Date.UTC(r[1],a,r[3]||1,r[4]||0,r[5]||0,r[6]||0,i)):new Date(r[1],a,r[3]||1,r[4]||0,r[5]||0,r[6]||0,i)}}return new Date(t)}(e),this.init()},h.init=function(){var e=this.$d;this.$y=e.getFullYear(),this.$M=e.getMonth(),this.$D=e.getDate(),this.$W=e.getDay(),this.$H=e.getHours(),this.$m=e.getMinutes(),this.$s=e.getSeconds(),this.$ms=e.getMilliseconds()},h.$utils=function(){return M},h.isValid=function(){return!(this.$d.toString()===c)},h.isSame=function(e,t){var n=$(e);return this.startOf(t)<=n&&n<=this.endOf(t)},h.isAfter=function(e,t){return $(e)<this.startOf(t)},h.isBefore=function(e,t){return this.endOf(t)<$(e)},h.$g=function(e,t,n){return M.u(e)?this[t]:this.set(n,e)},h.unix=function(){return Math.floor(this.valueOf()/1e3)},h.valueOf=function(){return this.$d.getTime()},h.startOf=function(e,o){var c=this,f=!!M.u(o)||o,d=M.p(e),m=function(e,t){var n=M.w(c.$u?Date.UTC(c.$y,t,e):new Date(c.$y,t,e),c);return f?n:n.endOf(a)},h=function(e,t){return M.w(c.toDate()[e].apply(c.toDate("s"),(f?[0,0,0,0]:[23,59,59,999]).slice(t)),c)},p=this.$W,v=this.$M,b=this.$D,y="set"+(this.$u?"UTC":"");switch(d){case s:return f?m(1,0):m(31,11);case u:return f?m(1,v):m(0,v+1);case i:var g=this.$locale().weekStart||0,w=(p<g?p+7:p)-g;return m(f?b-w:b+(6-w),v);case a:case l:return h(y+"Hours",0);case r:return h(y+"Minutes",1);case n:return h(y+"Seconds",2);case t:return h(y+"Milliseconds",3);default:return this.clone()}},h.endOf=function(e){return this.startOf(e,!1)},h.$set=function(i,o){var c,f=M.p(i),d="set"+(this.$u?"UTC":""),m=(c={},c[a]=d+"Date",c[l]=d+"Date",c[u]=d+"Month",c[s]=d+"FullYear",c[r]=d+"Hours",c[n]=d+"Minutes",c[t]=d+"Seconds",c[e]=d+"Milliseconds",c)[f],h=f===a?this.$D+(o-this.$W):o;if(f===u||f===s){var p=this.clone().set(l,1);p.$d[m](h),p.init(),this.$d=p.set(l,Math.min(this.$D,p.daysInMonth())).$d}else m&&this.$d[m](h);return this.init(),this},h.set=function(e,t){return this.clone().$set(e,t)},h.get=function(e){return this[M.p(e)]()},h.add=function(e,o){var l,c=this;e=Number(e);var f=M.p(o),d=function(t){var n=$(c);return M.w(n.date(n.date()+Math.round(t*e)),c)};if(f===u)return this.set(u,this.$M+e);if(f===s)return this.set(s,this.$y+e);if(f===a)return d(1);if(f===i)return d(7);var m=(l={},l[n]=6e4,l[r]=36e5,l[t]=1e3,l)[f]||1,h=this.$d.getTime()+e*m;return M.w(h,this)},h.subtract=function(e,t){return this.add(-1*e,t)},h.format=function(e){var t=this,n=this.$locale();if(!this.isValid())return n.invalidDate||c;var r=e||"YYYY-MM-DDTHH:mm:ssZ",a=M.z(this),i=this.$H,u=this.$m,o=this.$M,s=n.weekdays,l=n.months,f=n.meridiem,m=function(e,n,a,i){return e&&(e[n]||e(t,r))||a[n].slice(0,i)},h=function(e){return M.s(i%12||12,e,"0")},p=f||function(e,t,n){var r=e<12?"AM":"PM";return n?r.toLowerCase():r};return r.replace(d,function(e,r){return r||function(e){switch(e){case"YY":return String(t.$y).slice(-2);case"YYYY":return M.s(t.$y,4,"0");case"M":return o+1;case"MM":return M.s(o+1,2,"0");case"MMM":return m(n.monthsShort,o,l,3);case"MMMM":return m(l,o);case"D":return t.$D;case"DD":return M.s(t.$D,2,"0");case"d":return String(t.$W);case"dd":return m(n.weekdaysMin,t.$W,s,2);case"ddd":return m(n.weekdaysShort,t.$W,s,3);case"dddd":return s[t.$W];case"H":return String(i);case"HH":return M.s(i,2,"0");case"h":return h(1);case"hh":return h(2);case"a":return p(i,u,!0);case"A":return p(i,u,!1);case"m":return String(u);case"mm":return M.s(u,2,"0");case"s":return String(t.$s);case"ss":return M.s(t.$s,2,"0");case"SSS":return M.s(t.$ms,3,"0");case"Z":return a}return null}(e)||a.replace(":","")})},h.utcOffset=function(){return 15*-Math.round(this.$d.getTimezoneOffset()/15)},h.diff=function(e,l,c){var f,d=this,m=M.p(l),h=$(e),p=6e4*(h.utcOffset()-this.utcOffset()),v=this-h,b=function(){return M.m(d,h)};switch(m){case s:f=b()/12;break;case u:f=b();break;case o:f=b()/3;break;case i:f=(v-p)/6048e5;break;case a:f=(v-p)/864e5;break;case r:f=v/36e5;break;case n:f=v/6e4;break;case t:f=v/1e3;break;default:f=v}return c?f:M.a(f)},h.daysInMonth=function(){return this.endOf(u).$D},h.$locale=function(){return b[this.$L]},h.locale=function(e,t){if(!e)return this.$L;var n=this.clone(),r=w(e,t,!0);return r&&(n.$L=r),n},h.clone=function(){return M.w(this.$d,this)},h.toDate=function(){return new Date(this.valueOf())},h.toJSON=function(){return this.isValid()?this.toISOString():null},h.toISOString=function(){return this.$d.toISOString()},h.toString=function(){return this.$d.toUTCString()},m}(),E=O.prototype;return $.prototype=E,[["$ms",e],["$s",t],["$m",n],["$H",r],["$W",a],["$M",u],["$y",s],["$D",l]].forEach(function(e){E[e[1]]=function(t){return this.$g(t,e[0],e[1])}}),$.extend=function(e,t){return e.$i||(e(t,O,$),e.$i=!0),$},$.locale=w,$.isDayjs=g,$.unix=function(e){return $(1e3*e)},$.en=b[v],$.Ls=b,$.p={},$})},273:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function i(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function u(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0});var o=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e},s=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),l=n(2),c=r(l),f=n(3),d=n(7),m=n(274),h=r(m),p=f.Form.Item,v={labelCol:{span:5},wrapperCol:{span:19}},b=function(e){function t(e){a(this,t);var n=i(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={size:"medium",groups:[],members:[]},n}return u(t,e),s(t,[{key:"componentDidMount",value:function(){var e=this;(0,d.Fetch)("getGrouplist").then(function(t){e.setState({groups:t.data})}),(0,d.Fetch)("getMembers").then(function(t){e.setState({members:t.data})})}},{key:"render",value:function(){var e=this.state.groups,t=this.props,n=t.onSubmit,r=t.onClose,a=t.data,i=void 0===a?{}:a;return c.default.createElement("div",null,c.default.createElement(f.Form,o({},v,{size:this.state.size,style:{minWidth:"500px"}}),c.default.createElement(p,{label:"权益分类"},c.default.createElement(f.Select,{style:{width:150},defaultValue:i.categoryid,name:"categoryid"},e&&e.map(function(e){return c.default.createElement(f.Select.Option,{key:e.id,value:e.id},e.name)}))),c.default.createElement(p,{label:"会员权益名"},c.default.createElement(f.Input,{defaultValue:i.name,id:"name",name:"name"})),c.default.createElement(p,{label:"会员权益内容"},c.default.createElement(f.Input.TextArea,{defaultValue:i.description,id:"description",name:"description"})),c.default.createElement(p,{label:"有效期"},c.default.createElement(f.Input,{defaultValue:i.validdate,htmlType:"number",id:"validdate",name:"validdate",addonTextAfter:"年"})),c.default.createElement(p,{label:"使用人"},c.default.createElement(f.Input,{defaultValue:i.user,id:"user",name:"user"})),c.default.createElement(p,{label:"数量单位"},c.default.createElement(f.Input,{defaultValue:i.unit,id:"unit",name:"unit"})),c.default.createElement(p,{label:"会员等级"},c.default.createElement(h.default,{defaultValue:i.members,unit:i.unit,id:"members",name:"members"})),c.default.createElement(p,{label:"是否展示"},c.default.createElement(f.Switch,{autoWidth:!0,defaultChecked:null==i.display||!!i.display,id:"display",name:"display"})),c.default.createElement(p,{wrapperCol:{offset:5}},c.default.createElement(f.Form.Submit,{validate:!0,type:"primary",onClick:function(e,t){if(!e.categoryid)return f.Message.warning("权益分类不能为空");if(!e.name)return f.Message.warning("权益名不能为空");if(!e.description)return f.Message.warning("权益内容不能为空");if(!e.validdate)return f.Message.warning("有效期不能为空");if(!e.user)return f.Message.warning("使用人不能为空");if(!e.unit)return f.Message.warning("数量单位不能为空");if(!e.members||0===Object.keys(e.members).length)return f.Message.warning("会员等级不能为空");for(var r=Object.keys(e.members),a=0;a<r.length;a++){var i=e.members[r[a]];if("number"!=typeof i.num||i.num<0)return f.Message.warning("权益份额不能为空")}null==e.display?e.display=1:e.display=e.display?1:0,n&&n(e)},style:{marginRight:10}},"提交"),c.default.createElement(f.Form.Reset,{onClick:r},"取消"))))}}]),t}(l.Component);t.default=b},274:function(e,t,n){"use strict";function r(e){return e&&e.__esModule?e:{default:e}}function a(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function i(e,t){if(!e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return!t||"object"!=typeof t&&"function"!=typeof t?e:t}function u(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function, not "+typeof t);e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,enumerable:!1,writable:!0,configurable:!0}}),t&&(Object.setPrototypeOf?Object.setPrototypeOf(e,t):e.__proto__=t)}Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var o=function(){function e(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(t,n,r){return n&&e(t.prototype,n),r&&e(t,r),t}}(),s=n(2),l=r(s),c=n(3),f=n(7),d=n(275),m=r(d),h=c.Radio.Group,p=function(e){function t(e){a(this,t);var n=i(this,(t.__proto__||Object.getPrototypeOf(t)).call(this,e));return n.state={members:[],value:e.value||e.defaultValue||{}},n}return u(t,e),o(t,[{key:"componentDidMount",value:function(){var e=this;(0,f.Fetch)("getMembers").then(function(t){e.setState({members:t.data})})}},{key:"onChangeMemberNum",value:function(e,t){var n=this.state.value,r=this.props.onChange,a=n[e.id];a&&(a.num=t,r&&r(n),this.setState({value:n}))}},{key:"onChangeMember",value:function(e,t){var n=this.state.value,r=this.props.onChange;"1"===t?n[e.id]={mid:e.id,display:1}:delete n[e.id],r?r(n):this.setState({value:n})}},{key:"render",value:function(){var e=this,t=this.state,n=t.members,r=t.value,a=this.props.unit;return l.default.createElement("div",{className:m.default.container},(n||[]).map(function(t){var n=r[t.id],i=!!n&&n.display;return l.default.createElement("div",{className:m.default.item},l.default.createElement("div",{className:m.default.label},t.label),l.default.createElement("div",{style:{marginLeft:"10px"}},l.default.createElement(h,{value:i?"1":"0",onChange:e.onChangeMember.bind(e,t)},l.default.createElement(c.Radio,{id:"0",value:"0"},"不提供"),l.default.createElement(c.Radio,{id:"1",value:"1"},"提供"))),i&&l.default.createElement("div",{style:{marginLeft:"6px"}},l.default.createElement(c.Input,{placeholder:"请填写权益数目",value:n.num,onChange:e.onChangeMemberNum.bind(e,t),htmlType:"number",addonTextAfter:a})))}))}}],[{key:"getDerivedStateFromProps",value:function(e,t){return Object.assign({},t,{value:e.value||e.defaultValue||{}})}}]),t}(l.default.Component);t.default=p},275:function(e,t,n){var r=n(276);"string"==typeof r&&(r=[[e.i,r,""]]);var a={};a.transform=void 0;n(229)(r,a);r.locals&&(e.exports=r.locals)},276:function(e,t,n){t=e.exports=n(228)(!1),t.push([e.i,".memberItemcontainer-QLL1a{-webkit-box-orient:vertical;-ms-flex-direction:column;flex-direction:column}.memberItemcontainer-QLL1a,.memberItemitem-1-suB{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-direction:normal}.memberItemitem-1-suB{-webkit-box-orient:horizontal;-ms-flex-direction:row;flex-direction:row;-webkit-box-align:center;-ms-flex-align:center;align-items:center;height:26px;margin-bottom:12px}",""]),t.locals={container:"memberItemcontainer-QLL1a",item:"memberItemitem-1-suB"}},277:function(e,t,n){"use strict";function r(e){return Math.floor(e/a)}Object.defineProperty(t,"__esModule",{value:!0}),t.formatValidDate=r;var a=t.ONE_YEAR=31536e3}});
//# sourceMappingURL=rights.js.map