import{initMasonry}from"./plugins/masonry.js";import{navbarShrink}from"./layouts/navbarShrink.js";function initUtils(){Global.utils={html_root_dom:document.querySelector("html"),pageContainer_dom:document.querySelector(".page-container"),pageTop_dom:document.querySelector(".main-content-header"),homeBanner_dom:document.querySelector(".home-banner-container"),scrollProgressBar_dom:document.querySelector(".scroll-progress-bar"),pjaxProgressBar_dom:document.querySelector(".pjax-progress-bar"),pjaxProgressIcon_dom:document.querySelector(".swup-progress-icon"),backToTopButton_dom:document.querySelector(".tool-scroll-to-top"),toolsList:document.querySelector(".hidden-tools-list"),toggleButton:document.querySelector(".toggle-tools-list"),innerHeight:window.innerHeight,pjaxProgressBarTimer:null,prevScrollValue:0,fontSizeLevel:0,isHasScrollProgressBar:!0===Global.theme_config.global.scroll_progress.bar,isHasScrollPercent:!0===Global.theme_config.global.scroll_progress.percentage,updateScrollStyle(){var e=window.pageYOffset||document.documentElement.scrollTop,t=document.documentElement.scrollHeight,o=window.innerHeight||document.documentElement.clientHeight,t=this.calculatePercentage(e,t,o);this.updateScrollProgressBar(t),this.updateScrollPercent(t),this.updatePageTopVisibility(e,o),this.prevScrollValue=e},updateScrollProgressBar(e){var t;this.isHasScrollProgressBar&&(t=e.toFixed(3),this.scrollProgressBar_dom.style.visibility=0===e?"hidden":"visible",this.scrollProgressBar_dom.style.width=t+"%")},updateScrollPercent(e){var t;this.isHasScrollPercent&&(t=this.backToTopButton_dom.querySelector(".percent"),this.backToTopButton_dom.classList.toggle("show",0!==e&&void 0!==e),t.innerHTML=e.toFixed(0))},updatePageTopVisibility(e,t){var o;Global.theme_config.navbar.auto_hide?(o=this.prevScrollValue,this.pageTop_dom.classList.toggle("hide",t<o&&o<e)):this.pageTop_dom.classList.remove("hide")},calculatePercentage(e,t,o){return Math.round(e/(t-o)*100)},registerWindowScroll(){window.addEventListener("scroll",()=>{this.updateScrollStyle(),this.updateTOCScroll(),this.updateNavbarShrink(),this.updateHomeBannerBlur(),this.updateAutoHideTools(),this.updateAPlayerAutoHide()})},updateTOCScroll(){Global.theme_config.articles.toc.enable&&Global.utils.hasOwnProperty("updateActiveTOCLink")&&Global.utils.updateActiveTOCLink()},updateNavbarShrink(){navbarShrink.init()},updateHomeBannerBlur(){if("fixed"===Global.theme_config.home_banner.style&&location.pathname===Global.hexo_config.root){var e=document.querySelector(".home-banner-background"),t=window.innerHeight/2<=(window.scrollY||window.pageYOffset)?15:0;try{e.style.transition="0.3s",e.style.webkitFilter=`blur(${t}px)`}catch(e){}}},updateAutoHideTools(){var t=window.pageYOffset,o=document.body.scrollHeight,n=window.innerHeight,a=document.getElementsByClassName("right-side-tools-container");for(let e=0;e<a.length;e++){var l=a[e];t<=0?"/"===location.pathname&&l.classList.add("hide"):o-20<=t+n?l.classList.add("hide"):l.classList.remove("hide")}},updateAPlayerAutoHide(){var e,t,o,n=document.getElementById("aplayer");null!=n&&(e=window.pageYOffset,t=document.body.scrollHeight,o=window.innerHeight,e<=0?"/"===location.pathname&&n.classList.add("hide"):t-20<=e+o?n.classList.add("hide"):n.classList.remove("hide"))},toggleToolsList(){this.toggleButton.addEventListener("click",()=>{this.toolsList.classList.toggle("show")})},globalFontSizeAdjust(){const o=this.html_root_dom;var e=document.querySelector(".tool-font-adjust-plus"),t=document.querySelector(".tool-font-adjust-minus"),n=document.defaultView.getComputedStyle(document.body).fontSize;const a=parseFloat(n);let l=0;n=Global.getStyleStatus();function i(e){var t=a*(1+.05*e);o.style.fontSize=t+"px",Global.styleStatus.fontSizeLevel=e,Global.setStyleStatus()}n&&i(l=n.fontSizeLevel),e.addEventListener("click",function(){i(l=Math.min(l+1,5))}),t.addEventListener("click",function(){i(l=Math.max(l-1,0))})},contentAreaWidthAdjust(){var e=document.querySelector(".tool-expand-width");const t=document.querySelector(".navbar-content"),o=document.querySelector(".main-content"),n=e.querySelector("i"),a=Global.theme_config.global.content_max_width||"1000px",l="90%";let i=a,r=!1;!0===Global.theme_config.home_banner.enable&&"/"===window.location.pathname&&(i=1.2*parseInt(a)+"px");const s=e=>{Global.styleStatus.isExpandPageWidth=e,Global.setStyleStatus(),e?(n.classList.remove("fa-expand"),n.classList.add("fa-compress"),t.style.maxWidth=l,o.style.maxWidth=l):(n.classList.remove("fa-compress"),n.classList.add("fa-expand"),t.style.maxWidth=i,o.style.maxWidth=a)};var c;(c=Global.getStyleStatus())&&(r=c.isExpandPageWidth,s(r)),e.addEventListener("click",()=>{r=!r,s(r);var e=document.querySelector(".loading-placeholder"),t=document.querySelector("#masonry-container");e&&t&&(e.style.opacity=1,e.style.display="block",t.style.display="none",setTimeout(()=>{initMasonry()},300))})},goComment(){this.goComment_dom=document.querySelector(".go-comment"),this.goComment_dom&&this.goComment_dom.addEventListener("click",()=>{var e=document.querySelector("#comment-anchor");e&&(e=e.getBoundingClientRect().top+window.scrollY,window.scrollTo({top:e,behavior:"smooth"}))})},getElementHeight(e){e=document.querySelector(e);return e?e.getBoundingClientRect().height:0},inithomeBannerHeight(){this.homeBanner_dom&&(this.homeBanner_dom.style.height=this.innerHeight+"px")},initPageHeightHandle(){var e,t,o;this.homeBanner_dom||(e=this.getElementHeight(".main-content-header")+this.getElementHeight(".main-content-body")+this.getElementHeight(".main-content-footer"),o=window.innerHeight,t=document.querySelector(".main-content-footer"),e<o&&0<(o=Math.floor(o-e))&&(t.style.marginTop=o-2+"px"))},imageViewer(){let t=!1,a=1,n=!1,l=0,i=0,r=0,s=0;const o=document.querySelector(".image-viewer-container"),c=o.querySelector("img"),d=e=>{document.body.style.overflow=e?"hidden":"auto",e?o.classList.add("active"):o.classList.remove("active")};let m=0;const u=100;var e=e=>{n&&e.stopPropagation(),n=!1},e=(c.addEventListener("wheel",e=>{e.preventDefault();var t=c.getBoundingClientRect(),o=e.clientX-t.left,n=e.clientY-t.top,o=o-t.width/2,n=n-t.height/2,t=a;a+=-.001*e.deltaY,t<(a=Math.min(Math.max(.8,a),4))?(r-=o*(a-t),s-=n*(a-t)):(r=0,s=0),c.style.transform=`translate(${r}px, ${s}px) scale(${a})`}),c.addEventListener("mousedown",e=>{e.preventDefault(),n=!0,l=e.clientX,i=e.clientY}),c.addEventListener("mousemove",e=>{var t,o;!n||(t=(new Date).getTime())-m<u||(m=t,t=e.clientX-l,o=e.clientY-i,r+=t,s+=o,l=e.clientX,i=e.clientY,c.style.transform=`translate(${r}px, ${s}px) scale(${a})`)}),c.addEventListener("mouseup",e),c.addEventListener("mouseleave",e),o.addEventListener("click",e=>{e.target===e.currentTarget&&(t=!1,d(t),a=1,r=0,s=0,c.style.transform=`translate(${r}px, ${s}px) scale(${a})`)}),document.querySelectorAll(".markdown-body img, .masonry-item img, #shuoshuo-content img"));const g=e=>{"Escape"===e.key&&t&&(t=!1,d(t),a=1,r=0,s=0,c.style.transform=`translate(${r}px, ${s}px) scale(${a})`,document.removeEventListener("keydown",g))};e.forEach(e=>{e.addEventListener("click",()=>{t=!0,d(t),c.src=e.src,document.addEventListener("keydown",g)})}),!e.length&&o&&o.parentNode.removeChild(o)},setHowLongAgoLanguage(e,t){return t.replace(/%s/g,e)},getHowLongAgo(e){var t=Global.language_ago,o=Math.floor(e/2592e3/12),n=Math.floor(e/2592e3),a=Math.floor(e/86400/7),l=Math.floor(e/86400),i=Math.floor(e/3600%24),r=Math.floor(e/60%60),e=Math.floor(e%60);return 0<o?this.setHowLongAgoLanguage(o,t.year):0<n?this.setHowLongAgoLanguage(n,t.month):0<a?this.setHowLongAgoLanguage(a,t.week):0<l?this.setHowLongAgoLanguage(l,t.day):0<i?this.setHowLongAgoLanguage(i,t.hour):0<r?this.setHowLongAgoLanguage(r,t.minute):0<e?this.setHowLongAgoLanguage(e,t.second):void 0},relativeTimeInHome(){var e=document.querySelectorAll(".home-article-meta-info .home-article-date"),t=Global.theme_config.home.article_date_format;"relative"===t?e&&e.forEach(e=>{var t=Date.now(),o=new Date(e.dataset.date.split(" GMT")[0]).getTime();e.innerHTML=this.getHowLongAgo(Math.floor((t-o)/1e3))}):"auto"===t&&e&&e.forEach(e=>{var t=Date.now(),o=new Date(e.dataset.date.split(" GMT")[0]).getTime();Math.floor((t-o)/864e5)<7&&(e.innerHTML=this.getHowLongAgo(Math.floor((t-o)/1e3)))})}},Global.utils.registerWindowScroll(),Global.utils.toggleToolsList(),Global.utils.globalFontSizeAdjust(),Global.utils.contentAreaWidthAdjust(),Global.utils.goComment(),Global.utils.initPageHeightHandle(),Global.utils.inithomeBannerHeight(),Global.utils.imageViewer(),Global.utils.relativeTimeInHome()}export{initUtils};