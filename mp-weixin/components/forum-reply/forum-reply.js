(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["components/forum-reply/forum-reply"],{"0c77":function(e,t,n){"use strict";var r=n("9cbe"),u=n.n(r);u.a},"71de":function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var r=function(){Promise.resolve().then(function(){return resolve(n("e5ef"))}.bind(null,n)).catch(n.oe)},u={name:"userReply",components:{userReply:r},props:{digest:{type:Array,default:function(){return{}}}},data:function(){return{newData:{},digestData:[],UNITS:{"年":315576e5,"月":26298e5,"天":864e5,"小时":36e5,"分钟":6e4,"秒":1e3}}},created:function(){var e=this;this.digest.forEach((function(t,n){console.log(t,n),0===n?e.newData=t:e.digestData.push(t)}))},methods:{format:function(e){var t=this.parse(e),n=Date.now()-t.getTime();if(n<this.UNITS["天"])return this.humanize(n);var r=function(e){return e<10?"0"+e:e};return t.getFullYear()+"-"+r(t.getMonth()+1)+"-"+r(t.getDate())+" "+r(t.getHours())+":"+r(t.getMinutes())},humanize:function(e){var t="";for(var n in this.UNITS)if(e>=this.UNITS[n]){t=Math.floor(e/this.UNITS[n])+n+"前";break}return t||"刚刚"},parse:function(e){var t=e.split(/[^0-9]/);return new Date(t[0],t[1]-1,t[2],t[3],t[4],t[5])},onReplyTap:function(e){this.$utils.jump("../forum-reply/forum-reply?pid=".concat(e))}}};t.default=u},"9cbe":function(e,t,n){},e5ef:function(e,t,n){"use strict";n.r(t);var r=n("f811"),u=n("ff71");for(var a in u)"default"!==a&&function(e){n.d(t,e,(function(){return u[e]}))}(a);n("0c77");var o,i=n("f0c5"),f=Object(i["a"])(u["default"],r["b"],r["c"],!1,null,"276221ba",null,!1,r["a"],o);t["default"]=f.exports},f811:function(e,t,n){"use strict";var r,u=function(){var e=this,t=e.$createElement;e._self._c},a=[];n.d(t,"b",(function(){return u})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return r}))},ff71:function(e,t,n){"use strict";n.r(t);var r=n("71de"),u=n.n(r);for(var a in r)"default"!==a&&function(e){n.d(t,e,(function(){return r[e]}))}(a);t["default"]=u.a}}]);
;(global["webpackJsonp"] = global["webpackJsonp"] || []).push([
    'components/forum-reply/forum-reply-create-component',
    {
        'components/forum-reply/forum-reply-create-component':(function(module, exports, __webpack_require__){
            __webpack_require__('543d')['createComponent'](__webpack_require__("e5ef"))
        })
    },
    [['components/forum-reply/forum-reply-create-component']]
]);
