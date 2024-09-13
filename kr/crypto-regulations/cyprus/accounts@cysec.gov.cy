<!DOCTYPE html>
<html lang="en-GB" prefix="og: https://ogp.me/ns#">

<head><meta charset="UTF-8"><script>if(navigator.userAgent.match(/MSIE|Internet Explorer/i)||navigator.userAgent.match(/Trident\/7\..*?rv:11/i)){var href=document.location.href;if(!href.match(/[?&]nowprocket/)){if(href.indexOf("?")==-1){if(href.indexOf("#")==-1){document.location.href=href+"?nowprocket=1"}else{document.location.href=href.replace("#","?nowprocket=1#")}}else{if(href.indexOf("#")==-1){document.location.href=href+"&nowprocket=1"}else{document.location.href=href.replace("#","&nowprocket=1#")}}}}</script><script>class RocketLazyLoadScripts{constructor(){this.v="1.2.3",this.triggerEvents=["keydown","mousedown","mousemove","touchmove","touchstart","touchend","wheel"],this.userEventHandler=this._triggerListener.bind(this),this.touchStartHandler=this._onTouchStart.bind(this),this.touchMoveHandler=this._onTouchMove.bind(this),this.touchEndHandler=this._onTouchEnd.bind(this),this.clickHandler=this._onClick.bind(this),this.interceptedClicks=[],window.addEventListener("pageshow",t=>{this.persisted=t.persisted}),window.addEventListener("DOMContentLoaded",()=>{this._preconnect3rdParties()}),this.delayedScripts={normal:[],async:[],defer:[]},this.trash=[],this.allJQueries=[]}_addUserInteractionListener(t){if(document.hidden){t._triggerListener();return}this.triggerEvents.forEach(e=>window.addEventListener(e,t.userEventHandler,{passive:!0})),window.addEventListener("touchstart",t.touchStartHandler,{passive:!0}),window.addEventListener("mousedown",t.touchStartHandler),document.addEventListener("visibilitychange",t.userEventHandler)}_removeUserInteractionListener(){this.triggerEvents.forEach(t=>window.removeEventListener(t,this.userEventHandler,{passive:!0})),document.removeEventListener("visibilitychange",this.userEventHandler)}_onTouchStart(t){"HTML"!==t.target.tagName&&(window.addEventListener("touchend",this.touchEndHandler),window.addEventListener("mouseup",this.touchEndHandler),window.addEventListener("touchmove",this.touchMoveHandler,{passive:!0}),window.addEventListener("mousemove",this.touchMoveHandler),t.target.addEventListener("click",this.clickHandler),this._renameDOMAttribute(t.target,"onclick","rocket-onclick"),this._pendingClickStarted())}_onTouchMove(t){window.removeEventListener("touchend",this.touchEndHandler),window.removeEventListener("mouseup",this.touchEndHandler),window.removeEventListener("touchmove",this.touchMoveHandler,{passive:!0}),window.removeEventListener("mousemove",this.touchMoveHandler),t.target.removeEventListener("click",this.clickHandler),this._renameDOMAttribute(t.target,"rocket-onclick","onclick"),this._pendingClickFinished()}_onTouchEnd(t){window.removeEventListener("touchend",this.touchEndHandler),window.removeEventListener("mouseup",this.touchEndHandler),window.removeEventListener("touchmove",this.touchMoveHandler,{passive:!0}),window.removeEventListener("mousemove",this.touchMoveHandler)}_onClick(t){t.target.removeEventListener("click",this.clickHandler),this._renameDOMAttribute(t.target,"rocket-onclick","onclick"),this.interceptedClicks.push(t),t.preventDefault(),t.stopPropagation(),t.stopImmediatePropagation(),this._pendingClickFinished()}_replayClicks(){window.removeEventListener("touchstart",this.touchStartHandler,{passive:!0}),window.removeEventListener("mousedown",this.touchStartHandler),this.interceptedClicks.forEach(t=>{t.target.dispatchEvent(new MouseEvent("click",{view:t.view,bubbles:!0,cancelable:!0}))})}_waitForPendingClicks(){return new Promise(t=>{this._isClickPending?this._pendingClickFinished=t:t()})}_pendingClickStarted(){this._isClickPending=!0}_pendingClickFinished(){this._isClickPending=!1}_renameDOMAttribute(t,e,r){t.hasAttribute&&t.hasAttribute(e)&&(event.target.setAttribute(r,event.target.getAttribute(e)),event.target.removeAttribute(e))}_triggerListener(){this._removeUserInteractionListener(this),"loading"===document.readyState?document.addEventListener("DOMContentLoaded",this._loadEverythingNow.bind(this)):this._loadEverythingNow()}_preconnect3rdParties(){let t=[];document.querySelectorAll("script[type=rocketlazyloadscript]").forEach(e=>{if(e.hasAttribute("src")){let r=new URL(e.src).origin;r!==location.origin&&t.push({src:r,crossOrigin:e.crossOrigin||"module"===e.getAttribute("data-rocket-type")})}}),t=[...new Map(t.map(t=>[JSON.stringify(t),t])).values()],this._batchInjectResourceHints(t,"preconnect")}async _loadEverythingNow(){this.lastBreath=Date.now(),this._delayEventListeners(this),this._delayJQueryReady(this),this._handleDocumentWrite(),this._registerAllDelayedScripts(),this._preloadAllScripts(),await this._loadScriptsFromList(this.delayedScripts.normal),await this._loadScriptsFromList(this.delayedScripts.defer),await this._loadScriptsFromList(this.delayedScripts.async);try{await this._triggerDOMContentLoaded(),await this._triggerWindowLoad()}catch(t){console.error(t)}window.dispatchEvent(new Event("rocket-allScriptsLoaded")),this._waitForPendingClicks().then(()=>{this._replayClicks()}),this._emptyTrash()}_registerAllDelayedScripts(){document.querySelectorAll("script[type=rocketlazyloadscript]").forEach(t=>{t.hasAttribute("data-rocket-src")?t.hasAttribute("async")&&!1!==t.async?this.delayedScripts.async.push(t):t.hasAttribute("defer")&&!1!==t.defer||"module"===t.getAttribute("data-rocket-type")?this.delayedScripts.defer.push(t):this.delayedScripts.normal.push(t):this.delayedScripts.normal.push(t)})}async _transformScript(t){return new Promise((await this._littleBreath(),navigator.userAgent.indexOf("Firefox/")>0||""===navigator.vendor)?e=>{let r=document.createElement("script");[...t.attributes].forEach(t=>{let e=t.nodeName;"type"!==e&&("data-rocket-type"===e&&(e="type"),"data-rocket-src"===e&&(e="src"),r.setAttribute(e,t.nodeValue))}),t.text&&(r.text=t.text),r.hasAttribute("src")?(r.addEventListener("load",e),r.addEventListener("error",e)):(r.text=t.text,e());try{t.parentNode.replaceChild(r,t)}catch(i){e()}}:async e=>{function r(){t.setAttribute("data-rocket-status","failed"),e()}try{let i=t.getAttribute("data-rocket-type"),n=t.getAttribute("data-rocket-src");t.text,i?(t.type=i,t.removeAttribute("data-rocket-type")):t.removeAttribute("type"),t.addEventListener("load",function r(){t.setAttribute("data-rocket-status","executed"),e()}),t.addEventListener("error",r),n?(t.removeAttribute("data-rocket-src"),t.src=n):t.src="data:text/javascript;base64,"+window.btoa(unescape(encodeURIComponent(t.text)))}catch(s){r()}})}async _loadScriptsFromList(t){let e=t.shift();return e&&e.isConnected?(await this._transformScript(e),this._loadScriptsFromList(t)):Promise.resolve()}_preloadAllScripts(){this._batchInjectResourceHints([...this.delayedScripts.normal,...this.delayedScripts.defer,...this.delayedScripts.async],"preload")}_batchInjectResourceHints(t,e){var r=document.createDocumentFragment();t.forEach(t=>{let i=t.getAttribute&&t.getAttribute("data-rocket-src")||t.src;if(i){let n=document.createElement("link");n.href=i,n.rel=e,"preconnect"!==e&&(n.as="script"),t.getAttribute&&"module"===t.getAttribute("data-rocket-type")&&(n.crossOrigin=!0),t.crossOrigin&&(n.crossOrigin=t.crossOrigin),t.integrity&&(n.integrity=t.integrity),r.appendChild(n),this.trash.push(n)}}),document.head.appendChild(r)}_delayEventListeners(t){let e={};function r(t,r){!function t(r){!e[r]&&(e[r]={originalFunctions:{add:r.addEventListener,remove:r.removeEventListener},eventsToRewrite:[]},r.addEventListener=function(){arguments[0]=i(arguments[0]),e[r].originalFunctions.add.apply(r,arguments)},r.removeEventListener=function(){arguments[0]=i(arguments[0]),e[r].originalFunctions.remove.apply(r,arguments)});function i(t){return e[r].eventsToRewrite.indexOf(t)>=0?"rocket-"+t:t}}(t),e[t].eventsToRewrite.push(r)}function i(t,e){let r=t[e];Object.defineProperty(t,e,{get:()=>r||function(){},set(i){t["rocket"+e]=r=i}})}r(document,"DOMContentLoaded"),r(window,"DOMContentLoaded"),r(window,"load"),r(window,"pageshow"),r(document,"readystatechange"),i(document,"onreadystatechange"),i(window,"onload"),i(window,"onpageshow")}_delayJQueryReady(t){let e;function r(r){if(r&&r.fn&&!t.allJQueries.includes(r)){r.fn.ready=r.fn.init.prototype.ready=function(e){return t.domReadyFired?e.bind(document)(r):document.addEventListener("rocket-DOMContentLoaded",()=>e.bind(document)(r)),r([])};let i=r.fn.on;r.fn.on=r.fn.init.prototype.on=function(){if(this[0]===window){function t(t){return t.split(" ").map(t=>"load"===t||0===t.indexOf("load.")?"rocket-jquery-load":t).join(" ")}"string"==typeof arguments[0]||arguments[0]instanceof String?arguments[0]=t(arguments[0]):"object"==typeof arguments[0]&&Object.keys(arguments[0]).forEach(e=>{let r=arguments[0][e];delete arguments[0][e],arguments[0][t(e)]=r})}return i.apply(this,arguments),this},t.allJQueries.push(r)}e=r}r(window.jQuery),Object.defineProperty(window,"jQuery",{get:()=>e,set(t){r(t)}})}async _triggerDOMContentLoaded(){this.domReadyFired=!0,await this._littleBreath(),document.dispatchEvent(new Event("rocket-DOMContentLoaded")),await this._littleBreath(),window.dispatchEvent(new Event("rocket-DOMContentLoaded")),await this._littleBreath(),document.dispatchEvent(new Event("rocket-readystatechange")),await this._littleBreath(),document.rocketonreadystatechange&&document.rocketonreadystatechange()}async _triggerWindowLoad(){await this._littleBreath(),window.dispatchEvent(new Event("rocket-load")),await this._littleBreath(),window.rocketonload&&window.rocketonload(),await this._littleBreath(),this.allJQueries.forEach(t=>t(window).trigger("rocket-jquery-load")),await this._littleBreath();let t=new Event("rocket-pageshow");t.persisted=this.persisted,window.dispatchEvent(t),await this._littleBreath(),window.rocketonpageshow&&window.rocketonpageshow({persisted:this.persisted})}_handleDocumentWrite(){let t=new Map;document.write=document.writeln=function(e){let r=document.currentScript;r||console.error("WPRocket unable to document.write this: "+e);let i=document.createRange(),n=r.parentElement,s=t.get(r);void 0===s&&(s=r.nextSibling,t.set(r,s));let a=document.createDocumentFragment();i.setStart(a,0),a.appendChild(i.createContextualFragment(e)),n.insertBefore(a,s)}}async _littleBreath(){Date.now()-this.lastBreath>45&&(await this._requestAnimFrame(),this.lastBreath=Date.now())}async _requestAnimFrame(){return document.hidden?new Promise(t=>setTimeout(t)):new Promise(t=>requestAnimationFrame(t))}_emptyTrash(){this.trash.forEach(t=>t.remove())}static run(){let t=new RocketLazyLoadScripts;t._addUserInteractionListener(t)}}RocketLazyLoadScripts.run();</script>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="alternate" href="https://regulatedunitedeurope.com/" hreflang="en" />
<link rel="alternate" href="https://regulatedunitedeurope.com/es/" hreflang="es" />
<link rel="alternate" href="https://regulatedunitedeurope.com/cn/" hreflang="zh" />
<link rel="alternate" href="https://regulatedunitedeurope.com/de/" hreflang="de" />
<link rel="alternate" href="https://regulatedunitedeurope.com/jp/" hreflang="ja" />
<link rel="alternate" href="https://regulatedunitedeurope.com/ph/" hreflang="tl" />
<link rel="alternate" href="https://regulatedunitedeurope.com/pt/" hreflang="pt" />
<link rel="alternate" href="https://regulatedunitedeurope.com/kr/" hreflang="ko" />
<link rel="alternate" href="https://regulatedunitedeurope.com/in/" hreflang="hi" />
<link rel="alternate" href="https://regulatedunitedeurope.com/it/" hreflang="it" />
<link rel="alternate" href="https://regulatedunitedeurope.com/fr/" hreflang="fr" />
<link rel="alternate" href="https://regulatedunitedeurope.com/tr/" hreflang="tr" />
<link rel="alternate" href="https://regulatedunitedeurope.com/ir/" hreflang="fa" />

<!-- Search Engine Optimization by Rank Math - https://rankmath.com/ -->
<title>Regulated United Europe</title><link rel="preload" as="style" href="https://fonts.googleapis.com/css?family=Alice%3Aregular%2Clatin%7CNunito%3A700%2C300%7CAlice%3Aregular&#038;subset=latin&#038;display=swap" /><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alice%3Aregular%2Clatin%7CNunito%3A700%2C300%7CAlice%3Aregular&#038;subset=latin&#038;display=swap" media="print" onload="this.media='all'" /><noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alice%3Aregular%2Clatin%7CNunito%3A700%2C300%7CAlice%3Aregular&#038;subset=latin&#038;display=swap" /></noscript>
<meta name="description" content="About us Regulated United Europe is constantly striving to improve its performance and the level of services provided, based on constant feedback"/>
<meta name="robots" content="follow, index, max-snippet:-1, max-video-preview:-1, max-image-preview:large"/>
<link rel="canonical" href="https://regulatedunitedeurope.com/" />
<meta property="og:locale" content="en_GB" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Regulated United Europe" />
<meta property="og:description" content="About us Regulated United Europe is constantly striving to improve its performance and the level of services provided, based on constant feedback" />
<meta property="og:url" content="https://regulatedunitedeurope.com/" />
<meta property="og:site_name" content="RegulatedUnitedEurope" />
<meta property="og:updated_time" content="2024-06-04T06:58:21+00:00" />
<meta property="article:published_time" content="2024-05-02T07:05:38+00:00" />
<meta property="article:modified_time" content="2024-06-04T06:58:21+00:00" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="Regulated United Europe" />
<meta name="twitter:description" content="About us Regulated United Europe is constantly striving to improve its performance and the level of services provided, based on constant feedback" />
<meta name="twitter:label1" content="Written by" />
<meta name="twitter:data1" content="Milana Scherbakova" />
<meta name="twitter:label2" content="Time to read" />
<meta name="twitter:data2" content="21 minutes" />
<script type="application/ld+json" class="rank-math-schema">{"@context":"https://schema.org","@graph":[{"@type":"Organization","@id":"https://regulatedunitedeurope.com/#organization","name":"RegulatedUnitedEurope","url":"https://regulatedunitedeurope.com","logo":{"@type":"ImageObject","@id":"https://regulatedunitedeurope.com/#logo","url":"https://regulatedunitedeurope.com/wp-content/uploads/2022/06/rue-cryptocurrency-licence-logo.svg","contentUrl":"https://regulatedunitedeurope.com/wp-content/uploads/2022/06/rue-cryptocurrency-licence-logo.svg","caption":"RegulatedUnitedEurope","inLanguage":"en-GB","width":"0","height":"0"}},{"@type":"WebSite","@id":"https://regulatedunitedeurope.com/#website","url":"https://regulatedunitedeurope.com","name":"RegulatedUnitedEurope","publisher":{"@id":"https://regulatedunitedeurope.com/#organization"},"inLanguage":"en-GB","potentialAction":{"@type":"SearchAction","target":"https://regulatedunitedeurope.com/?s={search_term_string}","query-input":"required name=search_term_string"}},{"@type":"ImageObject","@id":"https://regulatedunitedeurope.com/wp-content/uploads/2022/06/rue-cryptocurrency-licence-logo.svg","url":"https://regulatedunitedeurope.com/wp-content/uploads/2022/06/rue-cryptocurrency-licence-logo.svg","width":"200","height":"200","caption":"RegulatedUnitedEurope cryptocurrency licence logo","inLanguage":"en-GB"},{"@type":"WebPage","@id":"https://regulatedunitedeurope.com/#webpage","url":"https://regulatedunitedeurope.com/","name":"Regulated\u00a0United\u00a0Europe","datePublished":"2024-05-02T07:05:38+00:00","dateModified":"2024-06-04T06:58:21+00:00","about":{"@id":"https://regulatedunitedeurope.com/#organization"},"isPartOf":{"@id":"https://regulatedunitedeurope.com/#website"},"primaryImageOfPage":{"@id":"https://regulatedunitedeurope.com/wp-content/uploads/2022/06/rue-cryptocurrency-licence-logo.svg"},"inLanguage":"en-GB"},{"@type":"Person","@id":"https://regulatedunitedeurope.com/#author","name":"Milana Scherbakova","image":{"@type":"ImageObject","@id":"https://secure.gravatar.com/avatar/705e4e68f325b321c49c6f54e7dc1322?s=96&amp;d=mm&amp;r=g","url":"https://secure.gravatar.com/avatar/705e4e68f325b321c49c6f54e7dc1322?s=96&amp;d=mm&amp;r=g","caption":"Milana Scherbakova","inLanguage":"en-GB"},"sameAs":["https://www.linkedin.com/in/milana-scherbakova-794739254/"],"worksFor":{"@id":"https://regulatedunitedeurope.com/#organization"}},{"@type":"Article","headline":"Regulated\u00a0United\u00a0Europe","datePublished":"2024-05-02T07:05:38+00:00","dateModified":"2024-06-04T06:58:21+00:00","author":{"@id":"https://regulatedunitedeurope.com/#author","name":"Milana Scherbakova"},"publisher":{"@id":"https://regulatedunitedeurope.com/#organization"},"description":"About us Regulated United Europe is constantly striving to improve its performance and the level of services provided, based on constant feedback","name":"Regulated\u00a0United\u00a0Europe","@id":"https://regulatedunitedeurope.com/#richSnippet","isPartOf":{"@id":"https://regulatedunitedeurope.com/#webpage"},"image":{"@id":"https://regulatedunitedeurope.com/wp-content/uploads/2022/06/rue-cryptocurrency-licence-logo.svg"},"inLanguage":"en-GB","mainEntityOfPage":{"@id":"https://regulatedunitedeurope.com/#webpage"}}]}</script>
<!-- /Rank Math WordPress SEO plugin -->

<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link href='https://fonts.gstatic.com' crossorigin rel='preconnect' />
<link rel="alternate" type="application/rss+xml" title="RegulatedUnitedEurope &raquo; Feed" href="https://regulatedunitedeurope.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="RegulatedUnitedEurope &raquo; Comments Feed" href="https://regulatedunitedeurope.com/comments/feed/" />
<script type="rocketlazyloadscript" data-rocket-type="text/javascript">
/* <![CDATA[ */
window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/15.0.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/15.0.3\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/regulatedunitedeurope.com\/wp-includes\/js\/wp-emoji-release.min.js"}};
/*! This file is auto-generated */
!function(i,n){var o,s,e;function c(e){try{var t={supportTests:e,timestamp:(new Date).valueOf()};sessionStorage.setItem(o,JSON.stringify(t))}catch(e){}}function p(e,t,n){e.clearRect(0,0,e.canvas.width,e.canvas.height),e.fillText(t,0,0);var t=new Uint32Array(e.getImageData(0,0,e.canvas.width,e.canvas.height).data),r=(e.clearRect(0,0,e.canvas.width,e.canvas.height),e.fillText(n,0,0),new Uint32Array(e.getImageData(0,0,e.canvas.width,e.canvas.height).data));return t.every(function(e,t){return e===r[t]})}function u(e,t,n){switch(t){case"flag":return n(e,"\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f","\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f")?!1:!n(e,"\ud83c\uddfa\ud83c\uddf3","\ud83c\uddfa\u200b\ud83c\uddf3")&&!n(e,"\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f","\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f");case"emoji":return!n(e,"\ud83d\udc26\u200d\u2b1b","\ud83d\udc26\u200b\u2b1b")}return!1}function f(e,t,n){var r="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope?new OffscreenCanvas(300,150):i.createElement("canvas"),a=r.getContext("2d",{willReadFrequently:!0}),o=(a.textBaseline="top",a.font="600 32px Arial",{});return e.forEach(function(e){o[e]=t(a,e,n)}),o}function t(e){var t=i.createElement("script");t.src=e,t.defer=!0,i.head.appendChild(t)}"undefined"!=typeof Promise&&(o="wpEmojiSettingsSupports",s=["flag","emoji"],n.supports={everything:!0,everythingExceptFlag:!0},e=new Promise(function(e){i.addEventListener("DOMContentLoaded",e,{once:!0})}),new Promise(function(t){var n=function(){try{var e=JSON.parse(sessionStorage.getItem(o));if("object"==typeof e&&"number"==typeof e.timestamp&&(new Date).valueOf()<e.timestamp+604800&&"object"==typeof e.supportTests)return e.supportTests}catch(e){}return null}();if(!n){if("undefined"!=typeof Worker&&"undefined"!=typeof OffscreenCanvas&&"undefined"!=typeof URL&&URL.createObjectURL&&"undefined"!=typeof Blob)try{var e="postMessage("+f.toString()+"("+[JSON.stringify(s),u.toString(),p.toString()].join(",")+"));",r=new Blob([e],{type:"text/javascript"}),a=new Worker(URL.createObjectURL(r),{name:"wpTestEmojiSupports"});return void(a.onmessage=function(e){c(n=e.data),a.terminate(),t(n)})}catch(e){}c(n=f(s,u,p))}t(n)}).then(function(e){for(var t in e)n.supports[t]=e[t],n.supports.everything=n.supports.everything&&n.supports[t],"flag"!==t&&(n.supports.everythingExceptFlag=n.supports.everythingExceptFlag&&n.supports[t]);n.supports.everythingExceptFlag=n.supports.everythingExceptFlag&&!n.supports.flag,n.DOMReady=!1,n.readyCallback=function(){n.DOMReady=!0}}).then(function(){return e}).then(function(){var e;n.supports.everything||(n.readyCallback(),(e=n.source||{}).concatemoji?t(e.concatemoji):e.wpemoji&&e.twemoji&&(t(e.twemoji),t(e.wpemoji)))}))}((window,document),window._wpemojiSettings);
/* ]]> */
</script>
<link rel='stylesheet' id='css-0-css' href='https://regulatedunitedeurope.com/wp-content/cache/background-css/regulatedunitedeurope.com/wp-content/mmr/10501c46-1705650651.min.css' type='text/css' media='all' />
<style id='wp-emoji-styles-inline-css' type='text/css'>

	img.wp-smiley, img.emoji {
		display: inline !important;
		border: none !important;
		box-shadow: none !important;
		height: 1em !important;
		width: 1em !important;
		margin: 0 0.07em !important;
		vertical-align: -0.1em !important;
		background: none !important;
		padding: 0 !important;
	}
</style>
<link rel='stylesheet' id='css-1-css' href='https://regulatedunitedeurope.com/wp-content/cache/background-css/regulatedunitedeurope.com/wp-content/mmr/a51a7d31-1721785094.min.css' type='text/css' media='all' />
<style id='css-1-inline-css' type='text/css'>
div#logo-carousel-free-5910.logo-carousel-free .sp-lc-logo{border: 0px none #dddddd;}div#logo-carousel-free-5910.logo-carousel-free .sp-lc-logo:hover{border-color: #936502;}@media only screen and (max-width: 576px) {#logo-carousel-free-5910.sp-lc-container .sp-lc-button-prev,#logo-carousel-free-5910.sp-lc-container .sp-lc-button-next {display: none;}#logo-carousel-free-5910.sp-lc-container .sp-lc-pagination .swiper-pagination-bullet {display: none;}} .logo-carousel-free-area#logo-carousel-free-5910{position: relative;}#{position: absolute;left: 0;top: 0;height: 100%;width: 100%;text-align: center;display: flex;align-items: center;justify-content: center;background: #fff;z-index: 9999;} .logo-carousel-free-area#logo-carousel-free-5910 .sp-logo-carousel-section-title{margin-bottom: 30px;}@media screen and (min-width: 1200px ){.logo-carousel-free-area#logo-carousel-free-5910 .sp-logo-carousel:not([class*="-initialized"]) > .swiper-wrapper {display: flex;width: calc( 100% + 25px );}.logo-carousel-free-area#logo-carousel-free-5910 .sp-logo-carousel:not([class*="-initialized"]) > .swiper-wrapper > .swiper-slide {width: 20%;padding-right: 25px;}}
</style>
<link rel='stylesheet' id='css-2-css' href='https://regulatedunitedeurope.com/wp-content/cache/background-css/regulatedunitedeurope.com/wp-content/mmr/9cdf7b49-1719998765.min.css' type='text/css' media='all' />
<style id='css-2-inline-css' type='text/css'>

				.is_header_semitransparent .navbar-default {
				    background: rgba(35, 35, 49, 0.2) none repeat scroll 0 0;
				}
				.is_header_semitransparent .sticky-wrapper.is-sticky .navbar-default {
				    background: rgba(35, 35, 49, 0.9) none repeat scroll 0 0;
				}.breadcrumb a::after {
		        	  content: "/";
		    	}
		    	body{
			        background: #ffffff;
		    	}
	    		.logo img,
				.navbar-header .logo img {
					max-width: 102px;
				}
			    ::selection{
			        color: #ffffff;
			        background: #323d9d;
			    }
			    ::-moz-selection { /* Code for Firefox */
			        color: #ffffff;
			        background: #323d9d;
			    }

			    a{
			        color: #323d9d;
			    }
			    a:focus,
			    a:visited,
			    a:hover{
			        color: #6f83e9;
			    }

			    /*------------------------------------------------------------------
			        COLOR
			    ------------------------------------------------------------------*/
			    a, 
			    a:hover, 
			    a:focus,
			    .mt_car--tax-type,
			    span.amount,
			    .widget_popular_recent_tabs .nav-tabs li.active a,
			    .widget_product_categories .cat-item:hover,
			    .widget_product_categories .cat-item a:hover,
			    .widget_archive li:hover,
			    .widget_archive li a:hover,
			    .widget_categories .cat-item:hover,
			    .widget_categories li a:hover,
			    .pricing-table.recomended .button.solid-button, 
			    .pricing-table .table-content:hover .button.solid-button,
			    .pricing-table.Recommended .button.solid-button, 
			    .pricing-table.recommended .button.solid-button, 
			    #sync2 .owl-item.synced .post_slider_title,
			    #sync2 .owl-item:hover .post_slider_title,
			    #sync2 .owl-item:active .post_slider_title,
			    .pricing-table.recomended .button.solid-button, 
			    .pricing-table .table-content:hover .button.solid-button,
			    .testimonial-author,
			    .testimonials-container blockquote::before,
			    .testimonials-container blockquote::after,
			    .post-author > a,
			    h2 span,
			    label.error,
			    .author-name,
			    .prev-next-post a:hover,
			    .prev-text,
			    .wpb_button.btn-filled:hover,
			    .next-text,
			    .social ul li a:hover i,
			    .wpcf7-form span.wpcf7-not-valid-tip,
			    .text-dark .statistics .stats-head *,
			    .wpb_button.btn-filled,
			    .widget_meta a:hover,
			    .widget_pages a:hover,
			    .blogloop-v1 .post-name a:hover,
			    .blogloop-v2 .post-name a:hover,
			    .blogloop-v3 .post-name a:hover,
			    .blogloop-v4 .post-name a:hover,
			    .blogloop-v5 .post-name a:hover,
				.post-category-comment-date span a:hover,
				.post-category-comment-date span:hover,
				.list-view .post-details .post-category-comment-date i:hover,
				.list-view .post-details .post-category-comment-date a:hover,
			    .simple_sermon_content_top h4,
			    .page_404_v1 h1,
			    .mt_cars--single-main-pic .post-name > a,
			    .widget_recent_comments li:hover a,
			    .list-view .post-details .post-name a:hover,
			    .blogloop-v5 .post-details .post-sticky-label i,
			    header.header2 .header-info-group .header_text_title strong,
			    .widget_recent_entries_with_thumbnail li:hover a,
			    .widget_recent_entries li a:hover,
			    .blogloop-v1 .post-details .post-sticky-label i,
			    .blogloop-v2 .post-details .post-sticky-label i,
			    .blogloop-v3 .post-details .post-sticky-label i,
			    .blogloop-v4 .post-details .post-sticky-label i,
			    .blogloop-v5 .post-details .post-sticky-label i,
			    .error-404.not-found h1,
			    .header-info-group i,
			    .action-expand::after,
			    .list-view .post-details .post-excerpt .more-link:hover,
			    .header4 header .right-side-social-actions .social-links a:hover i,
			    .sidebar-content .widget_nav_menu li a:hover{
			        color: #323d9d;
			    }


			    /* NAVIGATION */
			    .navstyle-v8.header3 #navbar .menu > .menu-item.current-menu-item > a, 
			    .navstyle-v8.header3 #navbar .menu > .menu-item:hover > a,
			    .navstyle-v1.header3 #navbar .menu > .menu-item:hover > a,
			    .navstyle-v1.header2 #navbar .menu > .menu-item:hover > a,
			    .navstyle-v4 #navbar .menu > .menu-item.current-menu-item > a,
			    .navstyle-v4 #navbar .menu > .menu-item:hover > a,
			    .navstyle-v3 #navbar .menu > .menu-item.current-menu-item > a, 
			    .navstyle-v3 #navbar .menu > .menu-item:hover > a,
			    .navstyle-v3 #navbar .menu > .menu-item > a::before, 
				.navstyle-v3 #navbar .menu > .menu-item > a::after,
				.navstyle-v2 #navbar .menu > .menu-item.current-menu-item > a,
				.navstyle-v2 #navbar .menu > .menu-item:hover > a{
			        color: #323d9d;
				}
				.nav-submenu-style1 #navbar .sub-menu .menu-item.selected > a, 
				.nav-submenu-style1 #navbar .sub-menu .menu-item:hover > a,
				.navstyle-v2.header3 #navbar .menu > .menu-item > a::before,
				.navstyle-v2.header3 #navbar .menu > .menu-item > a::after,
				.navstyle-v8 #navbar .menu > .menu-item > a::before,
				.navstyle-v7 #navbar .menu > .menu-item .sub-menu > .menu-item > a:hover,
				.navstyle-v7 #navbar .menu > .menu-item.current_page_item > a,
				.navstyle-v7 #navbar .menu > .menu-item.current-menu-item > a,
				.navstyle-v7 #navbar .menu > .menu-item:hover > a,
				.navstyle-v6 #navbar .menu > .menu-item.current_page_item > a,
				.navstyle-v6 #navbar .menu > .menu-item.current-menu-item > a,
				.navstyle-v6 #navbar .menu > .menu-item:hover > a,
				.navstyle-v5 #navbar .menu > .menu-item.current_page_item > a, 
				.navstyle-v5 #navbar .menu > .menu-item.current-menu-item > a,
				.navstyle-v5 #navbar .menu > .menu-item:hover > a,
				.navstyle-v2 #navbar .menu > .menu-item > a::before, 
				.navstyle-v2 #navbar .menu > .menu-item > a::after{
					background: #323d9d;
				}


				/* Color Dark / Hovers */
				.related-posts .post-name:hover a{

					color: #6f83e9;
				}

			    /*------------------------------------------------------------------
			        BACKGROUND + BACKGROUND-COLOR
			    ------------------------------------------------------------------*/
			    .tagcloud > a:hover,
			    .modeltheme-icon-search,
			    .wpb_button::after,
			    .rotate45,
			    .latest-posts .post-date-day,
			    .latest-posts h3, 
			    .latest-tweets h3, 
			    .latest-videos h3,
			    .button.solid-button, 
			    button.vc_btn,
			    .pricing-table.recomended .table-content, 
			    .pricing-table .table-content:hover,
			    .pricing-table.Recommended .table-content, 
			    .pricing-table.recommended .table-content, 
			    .pricing-table.recomended .table-content, 
			    .pricing-table .table-content:hover,
			    .block-triangle,
			    .owl-theme .owl-controls .owl-page span,
			    body .vc_btn.vc_btn-blue, 
			    body a.vc_btn.vc_btn-blue, 
			    body button.vc_btn.vc_btn-blue,
			    .pagination .page-numbers.current,
			    .pagination .page-numbers:hover,
			    #subscribe > button[type='submit'],
			    .social-sharer > li:hover,
			    .prev-next-post a:hover .rotate45,
			    .masonry_banner.default-skin,
			    .form-submit input,
			    .member-header::before, 
			    .member-header::after,
			    .member-footer .social::before, 
			    .member-footer .social::after,
			    .subscribe > button[type='submit'],
			    .no-results input[type='submit'],
			    h3#reply-title::after,
			    .newspaper-info,
			    header.header1 .header-nav-actions .shop_cart,
			    .categories_shortcode .owl-controls .owl-buttons i:hover,
			    .widget-title:after,
			    h2.heading-bottom:after,
			    .single .content-car-heading:after,
			    .wpb_content_element .wpb_accordion_wrapper .wpb_accordion_header.ui-state-active,
			    #primary .main-content ul li:not(.rotate45)::before,
			    .wpcf7-form .wpcf7-submit,
			    ul.ecs-event-list li span,
			    #contact_form2 .solid-button.button,
			    .details-container > div.details-item .amount, .details-container > div.details-item ins,
			    .modeltheme-search .search-submit,
			    .pricing-table.recommended .table-content .title-pricing,
			    .pricing-table .table-content:hover .title-pricing,
			    .pricing-table.recommended .button.solid-button,
			    #navbar ul.sub-menu li a:hover
			    .blogloop-v5 .absolute-date-badge span,
			    .post-category-date a[rel="tag"],
			    .hostcluster_preloader_holder,
			    #navbar .mt-icon-list-item:hover,
			    .mt_car--single-gallery.mt_car--featured-single-gallery:hover,
			    .modeltheme-pagination.pagination .page-numbers.current,
			    .pricing-table .table-content:hover .button.solid-button,
			    footer .footer-top .menu .menu-item a::before,
			    .mt-car-search .submit .form-control,
			    .blogloop-v4.list-view .post-date,
			    header .top-header,
			    .navbar-toggle .icon-bar,
			    .back-to-top,
			    .post-password-form input[type="submit"],
			    .search-form input[type="submit"],
			    .post-password-form input[type='submit'],
			    .blogloop-v5 .absolute-date-badge span,
			    .member01_social a:hover,
			    .whmcs-bridge #bridge .home-shortcuts,
			    .whmcs-bridge #bridge .navbar-main,
			    .whmcs-bridge #bridge .navbar-nav>li>.dropdown-menu {
			        background: #323d9d;
			    }
			    #bridge .panel-sidebar>.panel-heading,
			    .whmcs-bridge #bridge .sidebar .panel-sidebar .list-group-item:hover,
			    .alert-info,
			    .vc-custom-button-2 a:hover{
			    	background: #323d9d !important;
				}
			    .dark_title,
			    .dark_subtitle,
			    .members_img_holder .member01_name,
			    .members_img_holder .member01_position,
			    .label_text_percentange,
			    .hostcluster-contact label,
			    .whmcs-bridge #bridge #main-body h2,
			    .whmcs-bridge div.announcement-single blockquote p,
			    .whmcs-bridge #bridge .breadcrumb li a,
			    .tabs-shortcode.naccs .menu div,
			    .tabs-shortcode .nacc h3.tab-title,
			    .tabs-shortcode .nacc p.tab-content{
			    	color: #323d9d;
			    }
			    .whmcs-bridge div.announcement-single blockquote,
			    .whmcs-bridge #bridge .home-shortcuts{
			    	border-color: #323d9d;
			    }
			    .modeltheme-search.modeltheme-search-open .modeltheme-icon-search, 
			    .no-js .modeltheme-search .modeltheme-icon-search,
			    .modeltheme-icon-search:hover,
			    .latest-posts .post-date-month,
			    .button.solid-button:hover,
			    body .vc_btn.vc_btn-blue:hover, 
			    body a.vc_btn.vc_btn-blue:hover, 
			    .post-category-date a[rel="tag"]:hover,
			    .single-post-tags > a:hover,
			    body button.vc_btn.vc_btn-blue:hover,
			    .blogloop-v5 .absolute-date-badge span:hover,
			    .mt-car-search .submit .form-control:hover,
			    #contact_form2 .solid-button.button:hover,
			    .subscribe > button[type='submit']:hover,
			    footer .mc4wp-form-fields input[type="submit"]:hover,
			    .no-results.not-found .search-submit:hover,
			    .no-results input[type='submit']:hover,
			    ul.ecs-event-list li span:hover,
			    .pricing-table.recommended .table-content .price_circle,
			    .pricing-table .table-content:hover .price_circle,
			    #modal-search-form .modal-content input.search-input,
			    .wpcf7-form .wpcf7-submit:hover,
			    .form-submit input:hover,
			    .blogloop-v4.list-view .post-date a:hover,
			    .pricing-table.recommended .button.solid-button:hover,
			    .search-form input[type="submit"]:hover,
			    .modeltheme-pagination.pagination .page-numbers.current:hover,
			    .error-return-home.text-center > a:hover,
			    .pricing-table .table-content:hover .button.solid-button:hover,
			    .post-password-form input[type="submit"]:hover,
			    .navbar-toggle .navbar-toggle:hover .icon-bar,
			    .back-to-top:hover,
			    .post-password-form input[type='submit']:hover {
			        background: #6f83e9;
			    }
			    .tagcloud > a:hover{
			        background: #6f83e9 !important;
			    }

			    .flickr_badge_image a::after,
			    .thumbnail-overlay,
			    .portfolio-hover,
			    .pastor-image-content .details-holder,
			    .item-description .holder-top,
			    blockquote::before {
			        background: rgba(52, 152, 219, 0.7);
			    }

			    /*------------------------------------------------------------------
			        BORDER-COLOR
			    ------------------------------------------------------------------*/
			    .comment-form input, 
			    .comment-form textarea,
			    .author-bio,
			    blockquote,
			    .widget_popular_recent_tabs .nav-tabs > li.active,
			    body .left-border, 
			    body .right-border,
			    body .member-header,
			    body .member-footer .social,
			    body .button[type='submit'],
			    .navbar ul li ul.sub-menu,
			    .wpb_content_element .wpb_tabs_nav li.ui-tabs-active,
			    #contact-us .form-control:focus,
			    .sale_banner_holder:hover,
			    .testimonial-img,
			    .wpcf7-form input:focus, 
			    .wpcf7-form textarea:focus,
			    .header_search_form,
			    .list-view .post-details .post-excerpt .more-link:hover{
			        border-color: #323d9d;
			    }

			  	
</style>

<link rel='stylesheet' id='css-3-css' href='https://regulatedunitedeurope.com/wp-content/cache/background-css/regulatedunitedeurope.com/wp-content/mmr/9c4e0a9e-1712241578.min.css' type='text/css' media='all' />
<style id='css-3-inline-css' type='text/css'>
.heateor_sss_button_instagram span.heateor_sss_svg,a.heateor_sss_instagram span.heateor_sss_svg{background:radial-gradient(circle at 30% 107%,#fdf497 0,#fdf497 5%,#fd5949 45%,#d6249f 60%,#285aeb 90%)}div.heateor_sss_horizontal_sharing a.heateor_sss_button_instagram span{background:#fff!important;}div.heateor_sss_standard_follow_icons_container a.heateor_sss_button_instagram span{background:#fff}div.heateor_sss_horizontal_sharing a.heateor_sss_button_instagram span:hover{background:#fff!important;}div.heateor_sss_standard_follow_icons_container a.heateor_sss_button_instagram span:hover{background:#fff}.heateor_sss_horizontal_sharing .heateor_sss_svg,.heateor_sss_standard_follow_icons_container .heateor_sss_svg{background-color:#fff!important;background:#fff!important;color:#000;border-width:1px;border-style:solid;border-color:#e5e7ef}div.heateor_sss_horizontal_sharing span.heateor_sss_svg svg:hover path:not(.heateor_sss_no_fill),div.heateor_sss_horizontal_sharing span.heateor_sss_svg svg:hover ellipse, div.heateor_sss_horizontal_sharing span.heateor_sss_svg svg:hover circle, div.heateor_sss_horizontal_sharing span.heateor_sss_svg svg:hover polygon, div.heateor_sss_horizontal_sharing span.heateor_sss_svg svg:hover rect:not(.heateor_sss_no_fill){fill:#1f93ff}div.heateor_sss_horizontal_sharing span.heateor_sss_svg svg:hover path.heateor_sss_svg_stroke, div.heateor_sss_horizontal_sharing span.heateor_sss_svg svg:hover rect.heateor_sss_svg_stroke{stroke:#1f93ff}.heateor_sss_horizontal_sharing span.heateor_sss_svg:hover,.heateor_sss_standard_follow_icons_container span.heateor_sss_svg:hover{background-color:#fff!important;background:#fff!importantcolor:#1f93ff;border-color:#e5e7ef;}.heateor_sss_vertical_sharing span.heateor_sss_svg,.heateor_sss_floating_follow_icons_container span.heateor_sss_svg{color:#fff;border-width:0px;border-style:solid;border-color:transparent;}.heateor_sss_vertical_sharing span.heateor_sss_svg:hover,.heateor_sss_floating_follow_icons_container span.heateor_sss_svg:hover{border-color:transparent;}@media screen and (max-width:783px) {.heateor_sss_vertical_sharing{display:none!important}}
</style>
<noscript></noscript><style id='rocket-lazyload-inline-css' type='text/css'>
.rll-youtube-player{position:relative;padding-bottom:56.23%;height:0;overflow:hidden;max-width:100%;}.rll-youtube-player:focus-within{outline: 2px solid currentColor;outline-offset: 5px;}.rll-youtube-player iframe{position:absolute;top:0;left:0;width:100%;height:100%;z-index:100;background:0 0}.rll-youtube-player img{bottom:0;display:block;left:0;margin:auto;max-width:100%;width:100%;position:absolute;right:0;top:0;border:none;height:auto;-webkit-transition:.4s all;-moz-transition:.4s all;transition:.4s all}.rll-youtube-player img:hover{-webkit-filter:brightness(75%)}.rll-youtube-player .play{height:100%;width:100%;left:0;top:0;position:absolute;background:var(--wpr-bg-9100bc88-19f6-4c2f-86c4-02fdc246b4e2) no-repeat center;background-color: transparent !important;cursor:pointer;border:none;}
</style>
<link rel='stylesheet' id='css-4-css' href='https://regulatedunitedeurope.com/wp-content/cache/background-css/regulatedunitedeurope.com/wp-content/mmr/4e2314d2-1656618540.min.css' type='text/css' media='all' />

<script type="rocketlazyloadscript" data-rocket-type="text/javascript" data-rocket-src="https://regulatedunitedeurope.com/wp-content/mmr/a4950ac3-1699407509.min.js" id="js-5-js" defer></script>
<script type="text/javascript" id="js-6-js-extra">
/* <![CDATA[ */
var student_ajax = {"ajax_urla":"https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/star-rating-field-for-contact-form-7"};
/* ]]> */
</script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" data-rocket-src="https://regulatedunitedeurope.com/wp-content/mmr/9af20a76-1706861853.min.js" id="js-6-js" defer></script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" data-rocket-src="https://regulatedunitedeurope.com/wp-content/mmr/7a580950-1712108319.min.js" id="js-7-js" defer></script>
<link rel="https://api.w.org/" href="https://regulatedunitedeurope.com/wp-json/" /><link rel="alternate" title="JSON" type="application/json" href="https://regulatedunitedeurope.com/wp-json/wp/v2/pages/2877" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://regulatedunitedeurope.com/xmlrpc.php?rsd" />
<meta name="generator" content="WordPress 6.6.1" />
<link rel='shortlink' href='https://regulatedunitedeurope.com/' />
<link rel="alternate" title="oEmbed (JSON)" type="application/json+oembed" href="https://regulatedunitedeurope.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fregulatedunitedeurope.com%2F" />
<link rel="alternate" title="oEmbed (XML)" type="text/xml+oembed" href="https://regulatedunitedeurope.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fregulatedunitedeurope.com%2F&#038;format=xml" />
<meta name="generator" content="Redux 4.4.0" /><!--[if IE 9]> <script>var _gambitParallaxIE9 = true;</script> <![endif]--><style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style><meta name="generator" content="Powered by WPBakery Page Builder - drag and drop page builder for WordPress."/>
<script type="rocketlazyloadscript">// Ожидаем полной загрузки страницы
document.addEventListener("DOMContentLoaded", function() {
    // Проверяем, есть ли на странице текст "FREQUENTLY ASKED QUESTIONS"
    if (document.body.innerText.includes("FREQUENTLY ASKED QUESTIONS")) {
        // Находим все блоки с вопросами и ответами
        const faqBlocks = document.querySelectorAll('.ea-card.sp-ea-single');
        
        // Создаем пустой массив для хранения объектов вопросов и ответов
        let faqs = [];
        
        // Перебираем каждый блок с вопросом и ответом
        faqBlocks.forEach(block => {
            // Находим элементы с вопросом и ответом внутри блока
            const questionElement = block.querySelector('.ea-header');
            const answerElement = block.querySelector('.ea-body');
            
            // Получаем текст вопроса и ответа
            const question = questionElement ? questionElement.innerText.trim() : '';
            const answer = answerElement ? answerElement.innerText.trim() : '';
            
            // Если вопрос или ответ не пустые, добавляем их в массив
            if (question !== '' || answer !== '') {
                faqs.push({
                    "@type": "Question",
                    "name": question,
                    "acceptedAnswer": {
                        "@type": "Answer",
                        "text": answer
                    }
                });
            }
        });
        
        // Создаем объект FAQPage
        const faqPage = {
            "@context": "https://schema.org",
            "@type": "FAQPage",
            "mainEntity": faqs
        };
        
        // Преобразуем объект FAQPage в JSON строку
        const jsonMarkup = JSON.stringify(faqPage, null, 2);
        
        // Создаем новый элемент для вывода JSON разметки на странице
        const scriptElement = document.createElement('script');
        scriptElement.type = "application/ld+json";
        scriptElement.textContent = jsonMarkup;
        
        // Добавляем элемент перед закрывающим тегом </body>
        document.body.appendChild(scriptElement);
    } else {
        console.log("На странице нет текста 'FREQUENTLY ASKED QUESTIONS'");
    }
});</script><script type="rocketlazyloadscript">    window.addEventListener("scroll", function() {
        // Получаем текущую позицию прокрутки страницы
        var scrollPosition = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;

        // Получаем элемент с классом .home .header1 nav:not(.is-sticky)
        var headerElement = document.querySelector(".home .header1 nav:not(.is-sticky)");

        // Добавляем класс headerbg при скролле
        if (scrollPosition > 0) {
            headerElement.classList.add("headerbg");
        } else {
            headerElement.classList.remove("headerbg");
        }
    });
</script><meta name="generator" content="Powered by Slider Revolution 6.5.5 - responsive, Mobile-Friendly Slider Plugin for WordPress with comfortable drag and drop interface." />
<style type="text/css">.saboxplugin-wrap{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;-ms-box-sizing:border-box;box-sizing:border-box;border:1px solid #eee;width:100%;clear:both;display:block;overflow:hidden;word-wrap:break-word;position:relative}.saboxplugin-wrap .saboxplugin-gravatar{float:left;padding:0 20px 20px 20px}.saboxplugin-wrap .saboxplugin-gravatar img{max-width:100px;height:auto;border-radius:0;}.saboxplugin-wrap .saboxplugin-authorname{font-size:18px;line-height:1;margin:20px 0 0 20px;display:block}.saboxplugin-wrap .saboxplugin-authorname a{text-decoration:none}.saboxplugin-wrap .saboxplugin-authorname a:focus{outline:0}.saboxplugin-wrap .saboxplugin-desc{display:block;margin:5px 20px}.saboxplugin-wrap .saboxplugin-desc a{text-decoration:underline}.saboxplugin-wrap .saboxplugin-desc p{margin:5px 0 12px}.saboxplugin-wrap .saboxplugin-web{margin:0 20px 15px;text-align:left}.saboxplugin-wrap .sab-web-position{text-align:right}.saboxplugin-wrap .saboxplugin-web a{color:#ccc;text-decoration:none}.saboxplugin-wrap .saboxplugin-socials{position:relative;display:block;background:#fcfcfc;padding:5px;border-top:1px solid #eee}.saboxplugin-wrap .saboxplugin-socials a svg{width:20px;height:20px}.saboxplugin-wrap .saboxplugin-socials a svg .st2{fill:#fff; transform-origin:center center;}.saboxplugin-wrap .saboxplugin-socials a svg .st1{fill:rgba(0,0,0,.3)}.saboxplugin-wrap .saboxplugin-socials a:hover{opacity:.8;-webkit-transition:opacity .4s;-moz-transition:opacity .4s;-o-transition:opacity .4s;transition:opacity .4s;box-shadow:none!important;-webkit-box-shadow:none!important}.saboxplugin-wrap .saboxplugin-socials .saboxplugin-icon-color{box-shadow:none;padding:0;border:0;-webkit-transition:opacity .4s;-moz-transition:opacity .4s;-o-transition:opacity .4s;transition:opacity .4s;display:inline-block;color:#fff;font-size:0;text-decoration:inherit;margin:5px;-webkit-border-radius:0;-moz-border-radius:0;-ms-border-radius:0;-o-border-radius:0;border-radius:0;overflow:hidden}.saboxplugin-wrap .saboxplugin-socials .saboxplugin-icon-grey{text-decoration:inherit;box-shadow:none;position:relative;display:-moz-inline-stack;display:inline-block;vertical-align:middle;zoom:1;margin:10px 5px;color:#444;fill:#444}.clearfix:after,.clearfix:before{content:' ';display:table;line-height:0;clear:both}.ie7 .clearfix{zoom:1}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-twitch{border-color:#38245c}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-addthis{border-color:#e91c00}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-behance{border-color:#003eb0}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-delicious{border-color:#06c}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-deviantart{border-color:#036824}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-digg{border-color:#00327c}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-dribbble{border-color:#ba1655}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-facebook{border-color:#1e2e4f}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-flickr{border-color:#003576}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-github{border-color:#264874}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-google{border-color:#0b51c5}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-googleplus{border-color:#96271a}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-html5{border-color:#902e13}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-instagram{border-color:#1630aa}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-linkedin{border-color:#00344f}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-pinterest{border-color:#5b040e}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-reddit{border-color:#992900}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-rss{border-color:#a43b0a}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-sharethis{border-color:#5d8420}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-skype{border-color:#00658a}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-soundcloud{border-color:#995200}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-spotify{border-color:#0f612c}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-stackoverflow{border-color:#a95009}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-steam{border-color:#006388}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-user_email{border-color:#b84e05}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-stumbleUpon{border-color:#9b280e}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-tumblr{border-color:#10151b}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-twitter{border-color:#0967a0}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-vimeo{border-color:#0d7091}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-windows{border-color:#003f71}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-whatsapp{border-color:#003f71}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-wordpress{border-color:#0f3647}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-yahoo{border-color:#14002d}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-youtube{border-color:#900}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-xing{border-color:#000202}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-mixcloud{border-color:#2475a0}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-vk{border-color:#243549}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-medium{border-color:#00452c}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-quora{border-color:#420e00}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-meetup{border-color:#9b181c}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-goodreads{border-color:#000}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-snapchat{border-color:#999700}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-500px{border-color:#00557f}.saboxplugin-socials.sabox-colored .saboxplugin-icon-color .sab-mastodont{border-color:#185886}.sabox-plus-item{margin-bottom:20px}@media screen and (max-width:480px){.saboxplugin-wrap{text-align:center}.saboxplugin-wrap .saboxplugin-gravatar{float:none;padding:20px 0;text-align:center;margin:0 auto;display:block}.saboxplugin-wrap .saboxplugin-gravatar img{float:none;display:inline-block;display:-moz-inline-stack;vertical-align:middle;zoom:1}.saboxplugin-wrap .saboxplugin-desc{margin:0 10px 20px;text-align:center}.saboxplugin-wrap .saboxplugin-authorname{text-align:center;margin:10px 0 20px}}body .saboxplugin-authorname a,body .saboxplugin-authorname a:hover{box-shadow:none;-webkit-box-shadow:none}a.sab-profile-edit{font-size:16px!important;line-height:1!important}.sab-edit-settings a,a.sab-profile-edit{color:#0073aa!important;box-shadow:none!important;-webkit-box-shadow:none!important}.sab-edit-settings{margin-right:15px;position:absolute;right:0;z-index:2;bottom:10px;line-height:20px}.sab-edit-settings i{margin-left:5px}.saboxplugin-socials{line-height:1!important}.rtl .saboxplugin-wrap .saboxplugin-gravatar{float:right}.rtl .saboxplugin-wrap .saboxplugin-authorname{display:flex;align-items:center}.rtl .saboxplugin-wrap .saboxplugin-authorname .sab-profile-edit{margin-right:10px}.rtl .sab-edit-settings{right:auto;left:0}img.sab-custom-avatar{max-width:75px;}.saboxplugin-wrap {margin-top:0px; margin-bottom:0px; padding: 0px 0px }.saboxplugin-wrap .saboxplugin-authorname {font-size:18px; line-height:25px;}.saboxplugin-wrap .saboxplugin-desc p, .saboxplugin-wrap .saboxplugin-desc {font-size:14px !important; line-height:21px !important;}.saboxplugin-wrap .saboxplugin-web {font-size:14px;}.saboxplugin-wrap .saboxplugin-socials a svg {width:18px;height:18px;}</style><link rel="icon" href="https://regulatedunitedeurope.com/wp-content/uploads/2022/04/rue-logo4Asset-4.svg" sizes="32x32" />
<link rel="icon" href="https://regulatedunitedeurope.com/wp-content/uploads/2022/04/rue-logo4Asset-4.svg" sizes="192x192" />
<link rel="apple-touch-icon" href="https://regulatedunitedeurope.com/wp-content/uploads/2022/04/rue-logo4Asset-4.svg" />
<meta name="msapplication-TileImage" content="https://regulatedunitedeurope.com/wp-content/uploads/2022/04/rue-logo4Asset-4.svg" />
<script type="rocketlazyloadscript" data-rocket-type="text/javascript">function setREVStartSize(e){
			//window.requestAnimationFrame(function() {				 
				window.RSIW = window.RSIW===undefined ? window.innerWidth : window.RSIW;	
				window.RSIH = window.RSIH===undefined ? window.innerHeight : window.RSIH;	
				try {								
					var pw = document.getElementById(e.c).parentNode.offsetWidth,
						newh;
					pw = pw===0 || isNaN(pw) ? window.RSIW : pw;
					e.tabw = e.tabw===undefined ? 0 : parseInt(e.tabw);
					e.thumbw = e.thumbw===undefined ? 0 : parseInt(e.thumbw);
					e.tabh = e.tabh===undefined ? 0 : parseInt(e.tabh);
					e.thumbh = e.thumbh===undefined ? 0 : parseInt(e.thumbh);
					e.tabhide = e.tabhide===undefined ? 0 : parseInt(e.tabhide);
					e.thumbhide = e.thumbhide===undefined ? 0 : parseInt(e.thumbhide);
					e.mh = e.mh===undefined || e.mh=="" || e.mh==="auto" ? 0 : parseInt(e.mh,0);		
					if(e.layout==="fullscreen" || e.l==="fullscreen") 						
						newh = Math.max(e.mh,window.RSIH);					
					else{					
						e.gw = Array.isArray(e.gw) ? e.gw : [e.gw];
						for (var i in e.rl) if (e.gw[i]===undefined || e.gw[i]===0) e.gw[i] = e.gw[i-1];					
						e.gh = e.el===undefined || e.el==="" || (Array.isArray(e.el) && e.el.length==0)? e.gh : e.el;
						e.gh = Array.isArray(e.gh) ? e.gh : [e.gh];
						for (var i in e.rl) if (e.gh[i]===undefined || e.gh[i]===0) e.gh[i] = e.gh[i-1];
											
						var nl = new Array(e.rl.length),
							ix = 0,						
							sl;					
						e.tabw = e.tabhide>=pw ? 0 : e.tabw;
						e.thumbw = e.thumbhide>=pw ? 0 : e.thumbw;
						e.tabh = e.tabhide>=pw ? 0 : e.tabh;
						e.thumbh = e.thumbhide>=pw ? 0 : e.thumbh;					
						for (var i in e.rl) nl[i] = e.rl[i]<window.RSIW ? 0 : e.rl[i];
						sl = nl[0];									
						for (var i in nl) if (sl>nl[i] && nl[i]>0) { sl = nl[i]; ix=i;}															
						var m = pw>(e.gw[ix]+e.tabw+e.thumbw) ? 1 : (pw-(e.tabw+e.thumbw)) / (e.gw[ix]);					
						newh =  (e.gh[ix] * m) + (e.tabh + e.thumbh);
					}
					var el = document.getElementById(e.c);
					if (el!==null && el) el.style.height = newh+"px";					
					el = document.getElementById(e.c+"_wrapper");
					if (el!==null && el) {
						el.style.height = newh+"px";
						el.style.display = "block";
					}
				} catch(e){
					console.log("Failure at Presize of Slider:" + e)
				}					   
			//});
		  };</script>
		<style type="text/css" id="wp-custom-css">
			
html {
	font-family: 'Montserrat', Arial, sans-serif;
}
html:not(header):not(footer){background-color:#edeae1}
a b, h2 a, h3 a {color:#336699 !important; text-decoration:underline}
#primary {background:#edeae1 !important }

.home .header1 nav:not(.is-sticky).headerbg {
    background-color: #edeae1 !important; 
}
.header1.scrolled {
  background-color: #edeae1;
}
.home .header1 nav:not(.is-sticky):hover {
    background-color: #edeae1 !important; 
}
.wpb_video_widget.vc_video-aspect-ratio-169 .wpb_video_wrapper {
    padding-top: 0 !important;
}

/* CSS for the similar pages list */
.similar-pages-list {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
}

.similar-pages-list li {
    flex-basis: calc(16% - 16px); /* Учитываем отступ между элементами */
    text-align: center;
    margin-bottom: 20px;
    margin-right: 16px; /* Добавляем отступ между элементами */
    max-width: calc(16% - 16px); /* Учитываем отступ между элементами */
    box-sizing: border-box;
}

.similar-pages-list li:nth-child(6n) {
    margin-right: 0; /* Убираем отступ для последнего элемента в ряду */
}

.similar-pages-list li a {
    display: block;
    text-decoration: none;
    color: 
#27251d;
}

.similar-pages-list li .page-title {
    display: block;
    margin-bottom: 5px;
}

.similar-pages-list li img {
    max-width: 100%;
    height: auto;
    display: block;
    margin: 0 auto;
}

/* Media query for responsive design */
@media screen and (max-width: 768px) {
    .similar-pages-list li {
        flex-basis: calc(50% - 16px); /* Display 2 items per row on smaller screens */
        max-width: calc(50% - 16px); /* Учитываем отступ между элементами */
    }

    .similar-pages-list li:nth-child(2n) {
        margin-right: 0; /* Убираем отступ для последнего элемента в ряду на мобильных устройствах */
    }
}

/* Fix for the last row */
@media screen and (min-width: 768px) {
.similar-pages-list::after {
    content: '';
    flex: auto;
    flex-grow: 1;
}
}
.post-14973 .country,.page-id-15491 .country, .post-16102 .country, .page-id-14964 .country,.post-14988 .country, .page-id-16860 .country,.post-16883 .country, .post-16877 .country,.page-id-16891  .country, .page-id-16870  .country, .post-15679 .country{display:none !important}

/*box styles*/
.img-wrap img {border:1px solid #936502;border-radius:50%;}
.d-ib {
  display: inline-block !important;
  vertical-align: middle;
}
.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 35px;
  transition: all 0.3s ease-in-out;
}

label {
  display: inline-block;
}
.radio-div h3 {padding:0 !important}

 .radio-div .img-wrap {
  margin-right: 10px;
}
.d-ib {
  display: inline-block;
  vertical-align: middle;
}
 .radio-div h3 {
  font-weight: 600;
  font-size: 23px !important;
  line-height: 28px;
  margin-bottom: 8px;
  transition: all 0.3s ease-in-out;
}
.radio-div span.duration {
  font-weight: 400;
  font-size: 18px;
  line-height: 15px;
 
 

  transition: all 0.3s ease-in-out;
}

 .radio-div .price-box {
  margin-top: 25px;
}
.align-items-center {
  align-items: center !important;
}
.justify-content-between {
  justify-content: space-between !important;
}
.d-flex {
  display: flex !important;
}
 .radio-div .price-box h5 {
  font-weight: 400;
  font-size: 15px;
  line-height: 19px;
  color: #936502;
  opacity: 0.8;
  margin-bottom: 4px;
  transition: all 0.3s ease-in-out;
}
.radio-block .radio-div span.duration {
  font-weight: 400;
  line-height: 15px;
  font-family: 'Nunito';
 
  color: #000000;
  
  transition: all 0.3s ease-in-out;
}
 label:hover .radio-div {
  color: #FFFFFF;
  transition: all 0.3s ease-in-out;
}




.radio-box label:hover .radio-div .selected {
  background: #000000;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}
.radio-box label:hover .radio-div .selected span::before {
  color: #FFF;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'Select';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-box input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}


.d-ib .img-wrap img {width:46px; height:46px;}

 label:hover {
  background: #936502;
  transition: all 0.3s ease-in-out;
  color:white;
}

label:hover {
  background: #004CE0;
  transition: all 0.3s ease-in-out;
}

 label {
  height: 100%;
  display: block;
  background: rgba(191, 161, 97, 0.1) !important;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-block input[type="radio"] {
  display: none;
}
.radio-block input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-block label:hover {
  background: #936502 !important;
  color:white !important;
  transition: all 0.3s ease-in-out;
}



.radio-block .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'more';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-block label:hover .radio-div .calendar, .radio-block label:hover .radio-div .check {
  fill: #FFFFFF;
  filter: brightness(0) invert(1);
  transition: all 0.3s ease-in-out;
}

.radio-block label:hover .radio-div h3,.radio-block label:hover .float-end, .radio-block h3:hover,.renew-cost:hover,  .radio-block label:hover .radio-div .price-box h5, .radio-block label:hover .radio-div .price-box h6, .radio-block label:hover .radio-div span.duration, .radio-block label:hover .radio-div .selected span, .radio-block label:hover .radio-div .renew-cost {
  color: #FFFFFF !important;
  transition: all 0.3s ease-in-out;
}
.total-cost h6 {color:#936502;font-weight:600;}
.total-cost h5 {color:black !important;}
.radio-block label:hover .radio-div .renew-cost {color:white !important; border:1px solid white;border-radius:50px;}
.renew-cost {color:#936502; font-weight:700; font-size:14px; text-decoration:none !important; text-transform:uppercase; border:1px solid #936502;border-radius:50px;padding:10px 20px;}
.duration, .title-box {align-content:left; text-align:left;}
.d-ib {
  display: inline-block !important;
  vertical-align: middle;
}
  .duration, .d-ib span{text-align:left !important; align-content:middle;color:#2b2c36 !important;}
 
 .price-box a,.price-box,.price-box div,a .price-box {text-decoration:none !important;}
 .calendar {margin-bottom:10px;}
 .float-end {font-weight: 400;
font-size: 20px;
line-height: 27px;color:#936502;margin-top:20px;}
/*box styles end */

table .bordered, .bordered th, .bordered  td {
  border: 1px solid #e6e6e6; text-align:left;
}

.values {
	    font-family: 'Alice', serif;
    color: #936502;
    font-size: 33px !important;
    margin-bottom: 15px;
}

.persona {
    margin: 0px !important;
    padding: 0px !important;
    background-color: #edebe6 !important;
}
.persona .vc_column-inner {
	padding: 0;
}
.persona .wpb_text_column p {
	box-sizing: border-box;
	padding-left: 20px;
	padding-right: 20px;
	width: 100%;
}
.info {
	padding: 0 20px;
}

.persona a, .persona .btn {
	text-transform: none !important;
}
.persona h2 {
    margin-top: 0px !important;
    text-transform: none !important;
}
.vc_column-inner.vc_custom_1706299609686, #ourteam {
	margin-bottom: 0 !important;
	padding-bottom: 0 !important;
}


.golden-stroke {margin-bottom: 60px;
    border-bottom-width: 1px;
    padding-bottom: 40px;
    border-bottom-color: #936502;
    border-bottom-style: solid;
}
.margin-top-60 {
	margin-top: 60px;
}
/* Apply borders to table cells */
.lined {
    border-collapse: collapse; text-align:left; margin-bottom:20px}
.lined td, .lined th {
    border-left: 1px solid #ccc; /* Add border to left */
    border-right: 1px solid #ccc; /* Add border to right */
    border-bottom: 1px solid #ccc; /* Add border to bottom */
    padding: 8px;text-align:left
}

/* Remove border around the table */
.border-gold table {
    border: none;
}


.lined tr:first-child td, .lined tr:first-child,
.lined tr:first-child th {
    border-top: none;padding-top:0
}
.lined tr:last-child td,
.lined tr:last-child {
    border-bottom: none;
}
.logos img {max-width:200px; height:auto}

/*contact person*/
.w-actionbox {margin:0 !important;}
.lasttd {
  border-bottom: none;
  padding-bottom: 15px;
}
  @media only screen and (min-width: 601px)
{.person h3 {
  margin-left: 35px;
  font-size: 30px;
}}
 @media  (max-width: 1024px){.bordertd {border:0 !important;margin:0 auto;}.person, .person img {margin:0 auto; float:none;}.bordertd{margin:o auto;text-align:center}}

@media (min-width: 1025px) {.bordertd {border-right:6px solid #936502 !important;}.bordertd img {margin-right:20px !important;}
}
 @media  (max-width: 1024px){.person .lasttd {width:100% !important;margin:0 auto;text-align:center; clear:both;}.vc_btn3 {width:100%;}}
.middle {
    display: flex;
    justify-content: center;
}

@media only screen and (min-width: 601px) {
    .person {
        display: flex;
        flex-wrap: nowrap;
        align-items: center;
        width: 92%;
    }
    .person img {
        margin:auto;
    }
    .person.lasttd:nth-child(2){
        text-align:left;
    }
    .person .lasttd:nth-child(1) {
        width: 25%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .person h3 {
        margin-left: 35px;
        font-size:30px;
    }
    .vc_btn3-container{
        margin-left: 27px !important;
    }
    .person .lasttd:nth-child(3) p {
        margin-left: 36px;
    }
    .person .lasttd:nth-child(2) {
        width: 41%;padding:30px;
    }
    
}

@media only screen and (max-width: 1024px) {
    .person {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        width: 100%;
    }
    .middle {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }
    .person .lasttd {
        width: 100%;
        padding: 10px;
    }
    .person .lasttd:nth-child(1) {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .bordertd {
        border: 0;
    }
    .person h3 {
        font-size: 20px;
    }
}

.lasttd .bordertd {
    padding: 10px;
}
.person .lasttd:nth-child(1) img {
    margin: auto;
}

.person.job {
    margin-left: 37px; 
    font-size: 15px; 
    text-align: left;
}

.job {
	font-size: 18px !important;

}

@media only screen and (max-width: 600px) {
  .person .job {
    margin-left: 0;
    font-size: 13px;
  }
}

/* Иконки имейла в навигации в филлипинской версии */
#menu-item-21481   { background-image: var(--wpr-bg-60bb7a90-0ca6-4a93-8825-de08b3be975b) !important; display:inline-block; width:20px;height:14px !important;  background-repeat: no-repeat; margin-top:30px; margin-left:20px }
#menu-item-21481  {text-indent: 100%; white-space: nowrap; overflow: hidden;}
#menu-item-21481 a{ width:17px !important;height:14px !important;padding:0 !important}
.red {color: red}

.vc_custom_1711353253689, .footerlinks {padding-bottom: 0 !important}

.fixed-search-overlay {
    background: rgba(191, 161, 97, .95) none repeat scroll 0 0 !important;
}

h2 span, h1 span {font-weight:normal !important}
.border-gold .checkmark {margin-top:20px !important}

		</style>
		<style id="redux_demo-dynamic-css" title="dynamic-css" class="redux-options-output">body .hostcluster_preloader_holder{background-color:#323d9d;}#navbar .menu-item > a,
                                .navbar-nav .search_products a,
                                .navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus,
                                .navbar-default .navbar-nav > li > a{color:#000000;}body #navbar .menu-item.selected > a, body #navbar .menu-item:hover > a, body #navbar .current_page_item > a, .header-infos .header-info-group a:hover{color:#BFA161;}#navbar .sub-menu, .navbar ul li ul.sub-menu{background-color:#BFA161;}#navbar ul.sub-menu li a{color:#FFFFFF;}#navbar ul.sub-menu li a:hover{background-color:transparent;}body{font-family:Nunito;font-display:swap;}h1,h1 span{font-family:Nunito;line-height:36px;font-weight:700;font-size:36px;font-display:swap;}h2,h2 span{font-family:Nunito;line-height:30px;font-weight:700;font-size:30px;font-display:swap;}h3,h3 span{font-family:Nunito;line-height:24px;font-weight:700;font-size:24px;font-display:swap;}h4{font-family:Nunito;line-height:18px;font-size:18px;font-display:swap;}h5{font-family:Nunito;line-height:14px;font-size:14px;font-display:swap;}h6{font-family:Nunito;line-height:12px;font-size:12px;font-display:swap;}input,textarea{font-family:Nunito;font-display:swap;}input[type="submit"]{font-family:Nunito;font-display:swap;}.navbar-default{background-color:transparent;}.fixed-sidebar-menu{background-color:rgba(255,255,255,0.95);}footer .footer-top{background-color:#323d9d;}footer .footer-top h1.widget-title, footer .footer-top h3.widget-title, footer .footer-top .widget-title{color:#ffffff;}footer.footer1 .footer,footer.footer2 .footer-div-parent{background-color:#686868;}footer .footer h1.widget-title, footer .footer h3.widget-title, footer .footer .widget-title{color:#abb8c3;}.single article .article-content p,p,.post-excerpt{font-family:Nunito;line-height:26px;font-weight:300;color:#494949;font-size:17px;font-display:swap;}</style><style type="text/css" data-type="vc_custom-css">.services-border img{border:0 !important;}
.services-border:hover {background:none !important;}
.services-border img:hover {background:#936502;}
.bordergold {margin-top:0 !important;}

@media (max-width:768px){.navbar-header .col-md-3, .navbar .row{width:100% !important;}}

/*box styles*/
.img-wrap img {border:1px solid #936502;border-radius:50% !important;}

.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}

label {
  display: inline-block;
}


 .radio-div .img-wrap {
  margin-right: 10px;
}
.d-ib {
  display: inline-block;
  vertical-align: middle;
}
 .radio-div h3 {
  font-weight: 600;
  font-size: 22px;
  line-height: 28px;
  color: #000000;
  margin-bottom: 8px;
  transition: all 0.3s ease-in-out;
}
.radio-div span.duration {
  font-weight: 400;
  font-size: 15px;
  line-height: 15px;
  text-align: right;
  color: #936502;
  margin-left: 5px;
  transition: all 0.3s ease-in-out;
}

 .radio-div .price-box {
  margin-top: 25px;
}
.align-items-center {
  align-items: center !important;
}
.justify-content-between {
  justify-content: space-between !important;
}
.d-flex {
  display: flex !important;
}
 .radio-div .price-box h5 {
  font-weight: 400;
  font-size: 15px;
  line-height: 19px;
  color: #936502;
  opacity: 0.8;
  margin-bottom: 4px;
  transition: all 0.3s ease-in-out;
}
.radio-block .radio-div span.duration {
  font-weight: 400;
  font-size: 15px !important;
  line-height: 15px;
  font-family: 'Nunito';
  text-align: right;
  color: #000000;
  margin-left: 5px;
  transition: all 0.3s ease-in-out;
}
 label:hover .radio-div {
  color: #FFFFFF;
  transition: all 0.3s ease-in-out;
}




.radio-box label:hover .radio-div .selected {
  background: #000000;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}
.radio-box label:hover .radio-div .selected span::before {
  color: #FFF;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'Select';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-box input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}


.d-ib .img-wrap img {width:46px; height:46px;}

 label:hover {
  background: #936502;
  transition: all 0.3s ease-in-out;
  color:white;
}

label:hover {
  background: #004CE0;
  transition: all 0.3s ease-in-out;
}

 label {
  height: 100%;
  display: block;
  background: rgba(191, 161, 97, 0.1) !important;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-block input[type="radio"] {
  display: none;
}
.radio-block input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-block label:hover {
  background: #936502 !important;
  color:white !important;
  transition: all 0.3s ease-in-out;
}



.radio-block .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'more';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-block label:hover .radio-div .calendar, .radio-block label:hover .radio-div .check {
  fill: #FFFFFF;
  filter: brightness(0) invert(1);
  transition: all 0.3s ease-in-out;
}

.radio-block label:hover .radio-div h3, .radio-block h3:hover,.renew-cost:hover,  .radio-block label:hover .radio-div .price-box h5, .radio-block label:hover .radio-div .price-box h6, .radio-block label:hover .radio-div span.duration, .radio-block label:hover .radio-div .selected span, .radio-block label:hover .radio-div .renew-cost {
  color: #FFFFFF !important;
  transition: all 0.3s ease-in-out;
}
.total-cost h6 {color:#936502;font-weight:600;}
.total-cost h5 {color:black !important;}
.radio-block label:hover .radio-div .renew-cost {color:white !important; border:1px solid white;border-radius:50px;padding:10px;}
.renew-cost {color:#936502; border:1px solid #936502;border-radius:50px;padding:10px;}
.duration, .title-box {align-content:left; text-align:left;}
.d-ib {
  display: inline-block !important;
  vertical-align: middle;
}
.home .radio-block h3, .duration, .d-ib span{text-align:left !important; align-content:middle;}









/* Стили для подменю второго уровня */
#navbar .sub-menu {
  background: #f5f5f5; /* Фон меню */
  box-shadow: 0 0 10px rgba(37, 37, 37, 0.12);
  text-align: left;
  opacity: 0; /* Скрываем подменю по умолчанию */
  position: absolute;
  width: 250px;
  top: 100%; /* Отображаем подменю под родительским элементом */
  transition: all 250ms ease-in-out;
  visibility: hidden; /* Скрываем подменю по умолчанию */
  padding: 5px;
  z-index: 9999; /* Устанавливаем высокий z-index для подменю */
}

/* Показываем подменю второго уровня при наведении на соответствующий родительский элемент */
#navbar .menu-item:hover > .sub-menu {
  opacity: 1; /* Показываем подменю при наведении */
  visibility: visible;
}

/* Стили для подменю третьего уровня */
#navbar .sub-menu .sub-menu {
  left: 100%; /* Подменю третьего уровня сдвигается вправо от родительского меню */
  top: 0; /* Меню третьего уровня отображается слева от родительского элемента */
  opacity: 0; /* Скрываем подменю по умолчанию */
  visibility: hidden; /* Скрываем подменю по умолчанию */
}

/* Показываем подменю третьего уровня при наведении на соответствующий родительский элемент */
#navbar .sub-menu .menu-item:hover > .sub-menu {
  opacity: 1; /* Показываем подменю третьего уровня при наведении */
  visibility: visible;
}

#navbar .sub-menu li {
  display: block !important;
}
#navbar .sub-menu li {
  position: relative !important;
  float: none !important;
}

.values {font-family: 'Alice',serif;
  color: #936502;
  font-size: 33px !important;
  margin-bottom: 15px;}</style><style type="text/css" data-type="vc_shortcodes-custom-css">.vc_custom_1671188895422{margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1691650552358{margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1691645858455{margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1709272966799{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 20px !important;background-color: #edeae1 !important;}.vc_custom_1709272974127{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 0px !important;padding-bottom: 10px !important;background-color: #edeae1 !important;}.vc_custom_1709272982508{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 0px !important;padding-bottom: 10px !important;background-color: #edeae1 !important;}.vc_custom_1709272989002{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 0px !important;padding-bottom: 10px !important;background-color: #edeae1 !important;}.vc_custom_1698225428598{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 0px !important;padding-bottom: 10px !important;background-color: #edeae1 !important;}.vc_custom_1709272996716{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 20px !important;padding-bottom: 0px !important;background-color: #edeae1 !important;}.vc_custom_1656484636778{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 40px !important;padding-bottom: 0px !important;background-color: #edeae1 !important;}.vc_custom_1656483237231{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-color: #edeae1 !important;}.vc_custom_1706511128851{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-color: #edeae1 !important;}.vc_custom_1709275641206{margin-top: 20px !important;}.vc_custom_1709275772824{margin-top: 20px !important;}.vc_custom_1673944460448{margin-top: 0px !important;margin-right: -15px !important;margin-bottom: 0px !important;margin-left: -15px !important;padding-top: 20px !important;padding-bottom: 0px !important;background-color: #edeae1 !important;}.vc_custom_1651131656781{margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1651131656781{margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1651131656781{margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;background-position: center !important;background-repeat: no-repeat !important;background-size: cover !important;}.vc_custom_1651131676126{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1658811952566{margin-bottom: 40px !important;}.vc_custom_1704984636424{margin-top: 20px !important;}.vc_custom_1649942852408{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1649942859486{margin-top: 0px !important;border-bottom-width: 0px !important;padding-top: 0px !important;}.vc_custom_1649942865873{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1691995173720{margin-top: 0px !important;}.vc_custom_1691995222057{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1691995232849{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1649942852408{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1649942859486{margin-top: 0px !important;border-bottom-width: 0px !important;padding-top: 0px !important;}.vc_custom_1649942865873{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1691995238633{margin-top: 0px !important;}.vc_custom_1691995243435{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1691995247961{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1649942852408{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1649942859486{margin-top: 0px !important;border-bottom-width: 0px !important;padding-top: 0px !important;}.vc_custom_1649942865873{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1691995253914{margin-top: 0px !important;}.vc_custom_1691995259249{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1691995265729{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1649942852408{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1649942859486{margin-top: 0px !important;border-bottom-width: 0px !important;padding-top: 0px !important;}.vc_custom_1649942865873{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1691995271073{margin-top: 0px !important;}.vc_custom_1691995275519{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1691995279744{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1651131726665{margin-top: 0px !important;margin-bottom: 20px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1651480509019{margin-top: 0px !important;margin-bottom: 20px !important;padding-top: 0px !important;}.vc_custom_1650953661705{margin-bottom: 20px !important;}.vc_custom_1691744842272{margin-top: 40px !important;margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1656327526880{margin-top: 0px !important;margin-bottom: 10px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1656327508478{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;}.vc_custom_1673944418330{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1656326947210{margin-bottom: 20px !important;}.vc_custom_1656483293953{border-top-width: 0px !important;border-right-width: 0px !important;border-bottom-width: 0px !important;border-left-width: 0px !important;}.vc_custom_1656327526880{margin-top: 0px !important;margin-bottom: 10px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1706511113402{margin-top: 0px !important;margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1709275357053{margin-top: 0px !important;margin-bottom: 20px !important;padding-top: 0px !important;}.vc_custom_1656581196986{margin-top: 0px !important;padding-top: 0px !important;padding-bottom: 0px !important;border-radius: 10px !important;}.vc_custom_1653470757547{margin-top: 0px !important;margin-bottom: 20px !important;padding-top: 0px !important;}.vc_custom_1713941598247{background-position: 0 0 !important;background-repeat: no-repeat !important;}.vc_custom_1656581209025{margin-bottom: 20px !important;}.vc_custom_1656573693528{margin-top: 0px !important;margin-bottom: 20px !important;padding-top: 0px !important;}</style><noscript><style> .wpb_animate_when_almost_visible { opacity: 1; }</style></noscript><noscript><style id="rocket-lazyload-nojs-css">.rll-youtube-player, [data-lazy-src]{display:none !important;}</style></noscript>	<script type="rocketlazyloadscript" data-rocket-type='text/javascript' data-rocket-src='/wp-content/themes/hostcluster/js/font-awesome621.js' defer></script>
	<script type="rocketlazyloadscript" data-rocket-src="https://kit.fontawesome.com/6cf4aefdc6.js" crossorigin="anonymous" defer></script>
<!-- Google tag (gtag.js) -->
<script type="rocketlazyloadscript" async data-rocket-src="https://www.googletagmanager.com/gtag/js?id=UA-XXXXXX-Y-3"></script>
<script type="rocketlazyloadscript">
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-XXXXXX-Y-3');
</script>
<!-- Google tag (gtag.js) -->
<!-- <script type="rocketlazyloadscript" async data-rocket-src="https://www.googletagmanager.com/gtag/js?id=G-TQ0PR4GBQQ"></script>
<script type="rocketlazyloadscript">
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-TQ0PR4GBQQ');
</script>-->
<!-- Google Tag Manager -->
<script type="rocketlazyloadscript">(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-YYYYYYX');</script>
<!-- End Google Tag Manager -->
<style>
html {
	font-family: 'Montserrat', 'Arial' sans-serif;
}
@font-face {
  font-family: 'Pacifico';
  font-style: normal;
  font-weight: 400;
  src: local('Pacifico Regular'), local('Pacifico-Regular'),
    url(https://fonts.gstatic.com/s/pacifico/v12/FwZY7-Qmy14u9lezJ-6H6MmBp0u-.woff2)
      format('woff2');
  font-display: swap;
}
.menu-item a {
        background: transparent !important;
}
</style>
<style id="wpr-lazyload-bg"></style><style id="wpr-lazyload-bg-exclusion"></style>
<noscript>
<style id="wpr-lazyload-bg-nostyle">:root{--wpr-bg-8d04a50f-774e-467d-ba0f-7a41660aafec: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/address-book.png');}:root{--wpr-bg-6eb3e6fc-f9bd-48a9-9d96-094dd73c315e: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/alarm-clock.png');}:root{--wpr-bg-0c9819e1-b2e5-4b44-8492-ffa86769ed39: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/anchor.png');}:root{--wpr-bg-f65011e9-0b6e-4bf8-8051-275dae05e91f: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/application-image.png');}:root{--wpr-bg-45c8dbe3-a409-4ddb-a867-0abcc4c2960d: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/arrow.png');}:root{--wpr-bg-6e140d88-ea14-49e4-866e-5454db7556b1: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/asterisk.png');}:root{--wpr-bg-ac3fabe2-bfe9-4f9e-bc8f-795a08570808: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/auction-hammer.png');}:root{--wpr-bg-0cde3149-76e7-4510-8977-73e8fbf83d0f: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/balloon.png');}:root{--wpr-bg-052c81fd-08f9-4990-9ea2-fe07dcc3b5d3: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/balloon-buzz.png');}:root{--wpr-bg-3c510e8c-b8ec-44a5-b40b-04225ca4be54: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/balloon-facebook.png');}:root{--wpr-bg-e905eaac-4e47-49ab-b2f4-afc6c4bcde50: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/balloon-twitter.png');}:root{--wpr-bg-bfa39f39-ac06-408a-8ee2-f6863b243057: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/battery-full.png');}:root{--wpr-bg-fe935a6a-7544-439c-ac25-6eb8a7156b6e: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/binocular.png');}:root{--wpr-bg-e0d06969-bf61-4262-b927-09833174fe73: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-excel.png');}:root{--wpr-bg-4007438c-54e1-46b3-aa0e-be10a5e357ed: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-image.png');}:root{--wpr-bg-c1c72922-23ef-4ac0-9ee1-6e42a632656e: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-music.png');}:root{--wpr-bg-c35c15e0-4acc-4515-bbb9-ddc0012f9586: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-office.png');}:root{--wpr-bg-66f96873-3c06-4bcb-a860-2e8dc21222cf: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-pdf.png');}:root{--wpr-bg-15abc961-038f-43d0-86e6-2d715cf0977f: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-powerpoint.png');}:root{--wpr-bg-2468ab11-b45d-4ef7-a51a-ab0cc52326fe: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-word.png');}:root{--wpr-bg-4d9a218f-86ed-4bab-9352-c3d8f1a354f5: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/bookmark.png');}:root{--wpr-bg-0890e7e5-9a21-4781-b4d5-2ba0d4c2ee11: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/camcorder.png');}:root{--wpr-bg-13299782-9605-4177-a11b-6b6997be995f: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/camera.png');}:root{--wpr-bg-3ac08cf3-d8bf-4a81-8263-f2279a883279: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/chart.png');}:root{--wpr-bg-ceb761cd-fbfb-4402-8fd5-2e45e2299728: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/chart-pie.png');}:root{--wpr-bg-bb6ad0d0-eb18-4545-94e3-079b6ee6f637: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/clock.png');}:root{--wpr-bg-1268c9a5-c1a7-41e4-bdb7-7ecd5c844e3e: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/control.png');}:root{--wpr-bg-5f3faa7b-d308-41ab-8be8-b461c3d31d2a: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/fire.png');}:root{--wpr-bg-e71fcfad-f721-4893-88e9-faaaa93c6e52: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/heart.png');}:root{--wpr-bg-d67d2229-799b-4998-a229-6f9e890d1859: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/mail.png');}:root{--wpr-bg-4241b1be-221b-442b-875b-49c5a61f342a: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/plus-shield.png');}:root{--wpr-bg-d47f2e31-2a8d-4253-b4aa-c6839a0c402e: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/video.png');}:root{--wpr-bg-3fb9d5d3-9f1e-4dad-8a60-3ec64837a084: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/spinner.gif');}:root{--wpr-bg-2b4f4bc4-973b-408a-8ae0-bd55f6457da7: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../vc/alert.png');}:root{--wpr-bg-953cc767-8eeb-4946-9eb4-65aae901ac15: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../vc/info.png');}:root{--wpr-bg-078fd91b-4eb8-4bd9-abf3-79fac096d8eb: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../vc/tick.png');}:root{--wpr-bg-1052b9da-a10e-43e9-87c5-95113a4d2a18: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../vc/exclamation.png');}:root{--wpr-bg-09340907-ca7f-46a6-b708-216c0c977366: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/address-book.png');}:root{--wpr-bg-4500454a-d220-4eff-a5ce-a5fda930548f: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/alarm-clock.png');}:root{--wpr-bg-06bd6a4e-8556-4bbf-b123-a0bdf72854bd: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/anchor.png');}:root{--wpr-bg-4cb8e025-0f6e-4ac7-a73e-4b90cf52aeba: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/application-image.png');}:root{--wpr-bg-53079e7e-b15c-4782-8ab0-67b1c8c8f639: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/arrow.png');}:root{--wpr-bg-2d3a8273-1ff4-4ff6-8295-1900aa838f96: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/asterisk.png');}:root{--wpr-bg-adbd0e89-2af3-44cb-9071-accede41ada7: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/auction-hammer.png');}:root{--wpr-bg-90beb842-a78f-40b1-86f9-df2697d70524: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/balloon.png');}:root{--wpr-bg-ff0a2ebf-8376-4694-9279-0424cb5861db: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/balloon-buzz.png');}:root{--wpr-bg-a0ade3ed-7479-44ca-b469-d3f7185e897a: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/balloon-facebook.png');}:root{--wpr-bg-1db5888c-1c90-417f-b466-cedd348251af: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/balloon-twitter.png');}:root{--wpr-bg-35670e84-fc17-4ba4-9c16-40da0c35bbb1: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/battery-full.png');}:root{--wpr-bg-32ed00ef-f292-456f-8e33-eb3025410df6: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/binocular.png');}:root{--wpr-bg-8b6b0712-41fe-4502-8736-c66f284d50f4: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-excel.png');}:root{--wpr-bg-ea8f7b54-ba75-408f-b8ac-ab1c803626ac: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-image.png');}:root{--wpr-bg-e77e9b76-23a8-4dc4-9942-d20b264747d8: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-music.png');}:root{--wpr-bg-09606878-d71c-473f-a2ac-03be656ab440: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-office.png');}:root{--wpr-bg-b126a734-6def-497f-9332-2079a7889541: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-pdf.png');}:root{--wpr-bg-a91693b5-2d73-4a22-a504-9be095a00f8a: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-powerpoint.png');}:root{--wpr-bg-35d74f10-a507-42eb-92eb-6e0c397e865b: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/blue-document-word.png');}:root{--wpr-bg-5b2314d9-06ee-4f84-8bf5-00c7aef54243: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/bookmark.png');}:root{--wpr-bg-8a6e539b-a626-4d84-97aa-9314a390cb3c: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/camcorder.png');}:root{--wpr-bg-f81702c4-75e3-4f67-b231-3b325d965cc8: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/camera.png');}:root{--wpr-bg-f60b067c-3f22-4f2b-85bd-a19f3191f2ae: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/chart.png');}:root{--wpr-bg-a7b40a05-ede1-437d-9582-0be18bb24fd8: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/chart-pie.png');}:root{--wpr-bg-7af1ce8d-6e7f-4d9c-b36c-6bb9c231e549: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/clock.png');}:root{--wpr-bg-15e977d3-870e-447e-9471-2b0f563af83b: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/control.png');}:root{--wpr-bg-13e41025-56a0-4d12-8629-6f6f31a40949: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/fire.png');}:root{--wpr-bg-0c04d1a5-11a3-4f5b-9b85-432cef055290: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/heart.png');}:root{--wpr-bg-3993d60a-31c1-4a0b-b7bf-b55653981fd9: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/mail.png');}:root{--wpr-bg-637ae640-44b6-4165-ac31-703843afd477: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/plus-shield.png');}:root{--wpr-bg-62eb12b8-335b-43c6-af27-840349a10214: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/icons/video.png');}:root{--wpr-bg-9cfcea48-2c52-496c-a779-485cc8d92f92: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/toggle_open.png');}:root{--wpr-bg-2a30f194-65d9-49cb-a33b-1060cb712ca8: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/toggle_close.png');}:root{--wpr-bg-afb419f9-f1cf-402a-9b2c-1c6a8c0ca9df: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../images/flickr.png');}:root{--wpr-bg-cdb51f4d-400b-49ed-8600-bd11c20459eb: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../vc/tick.png');}:root{--wpr-bg-acd7537b-322b-416e-88e5-356565b156bf: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/css/../vc/remove.png');}:root{--wpr-bg-0d828995-3c81-4537-b496-e587f848c6a2: url('https://regulatedunitedeurope.com/wp-content/plugins/essential-grid/public/assets/css/../images/ajax-loader.gif');}:root{--wpr-bg-065a6846-909f-4560-a62b-b82b0648f15d: url('https://regulatedunitedeurope.com/wp-content/plugins/essential-grid/public/assets/css/../images/loader.gif');}:root{--wpr-bg-b0ed686a-2347-4bcf-aaa6-be2fcfb815a4: url('https://regulatedunitedeurope.com/wp-content/plugins/essential-grid/public/assets/css/../images/loader.gif');}:root{--wpr-bg-510a9f56-099c-472c-aa87-b0c7ba9c429d: url('https://regulatedunitedeurope.com/wp-content/plugins/modeltheme-framework/inc/shortcodes/img/angle-select.png');}:root{--wpr-bg-cd29975d-e7f8-40d6-85c5-c690d6da4d83: url('https://regulatedunitedeurope.com/wp-content/plugins/modeltheme-framework/css/../images/hostcluster_slider.jpg');}:root{--wpr-bg-204cd7c4-276c-4cbe-a198-39e3d4828ed4: url('https://regulatedunitedeurope.com/wp-content/plugins/modeltheme-framework/inc/shortcodes/img/fill_stars.svg');}:root{--wpr-bg-8c9899c5-82e2-4802-ab29-3413afea7aba: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/AjaxLoader.gif');}:root{--wpr-bg-915bd92b-cf38-4380-ac1b-aaf6c9f19d41: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/AjaxLoader.gif');}:root{--wpr-bg-f2db10e6-d86f-499c-b47e-a7dcf43072ce: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/timeline-dot.jpg');}:root{--wpr-bg-4221e463-f3f4-4edf-9759-a5c7578e4a39: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/images/timeline-dot.jpg');}:root{--wpr-bg-49b2acea-fcd3-459a-8c21-f272550ca2c1: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-2143befd-a838-4876-b98f-eaf77e797185: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-3f44e280-04c5-47a2-a972-eb4934cfe545: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-9277e859-506d-457a-8e1b-77297c3d832d: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-f30b8d63-3cd7-4b3e-bc2c-01003145d062: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-6bc403f7-1aac-41fe-af86-b125a74613be: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-2a890563-17d7-4a61-81b6-05e0275ac205: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-c7c9c2a5-a829-44be-b25c-4e6627c58496: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-568cfbeb-3527-45ab-822f-afd5f185080e: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-c4d41fe5-1768-49ce-90be-39299da6b4ae: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-704dd3e8-7df6-4771-ac8e-a96653c97ca2: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-164c885b-f352-4864-9815-62a4fa220e5a: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-0643397b-3a49-452d-995a-119012945246: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence2.png');}:root{--wpr-bg-01d32785-4edf-453d-8383-bfac465ccbd7: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-82aad673-53dd-49f4-8d66-0a4d66d42863: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-7704f351-855f-47dd-a58f-d9457330322d: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-f9248e79-8987-470d-8635-dbb7280e7bb2: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence2.png');}:root{--wpr-bg-f58cab22-ac0f-4130-8aaf-f37b86ebef72: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence2.png');}:root{--wpr-bg-4eb1469e-71cd-436a-b693-0a5fdf83920a: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/07/rue-cryptolicence.png');}:root{--wpr-bg-76e02374-c47b-4d9e-880c-0a484f0366f1: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/07/rue-cryptolicence.png');}:root{--wpr-bg-89e5791f-0bcb-4b5e-a2df-f9686a74e2a7: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence2.png');}:root{--wpr-bg-ec04fb6a-347d-4c7a-9839-640f96388877: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence2.png');}:root{--wpr-bg-a1c8bc61-ecae-4391-9200-2b358d288e0e: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/07/rue-cryptolicence.png');}:root{--wpr-bg-a161c46f-5f4b-4dee-9f31-132c05951f1a: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/07/rue-cryptolicence.png');}:root{--wpr-bg-e4bfce8d-1125-41d0-94bd-992011c70f71: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-802dd6fe-2602-448a-a97e-4c550f8f936d: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-f766b1aa-2513-4937-8ce1-b38a1b9ab714: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-9fd262e2-9b02-443c-b49a-9c7ef175a7f0: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence2.png');}:root{--wpr-bg-4614b2f3-854a-4d4a-b1d4-9e2e3fd77ada: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence2.png');}:root{--wpr-bg-d452504a-5da1-4df0-a9e7-fe73439fb894: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/07/rue-cryptolicence.png');}:root{--wpr-bg-c27113e1-3560-48a8-a865-574aa01ccaed: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/07/rue-cryptolicence.png');}:root{--wpr-bg-4eeb7614-dd1e-4b83-b2f7-c48345de1d9d: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-b931d837-8a93-4dbd-bef2-eb7f57e4a684: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/04/cryptocurrency-licence.png');}:root{--wpr-bg-38e0cc19-0ad4-43f6-84e0-f23f796134aa: url('https://regulatedunitedeurope.com/wp-content/uploads/2023/01/cryptocurrency-licence3.png');}:root{--wpr-bg-31897c25-d025-403a-a462-fd26ffd0a029: url('https://regulatedunitedeurope.com/wp-content/uploads/2023/01/cryptocurrency-licence3.png');}:root{--wpr-bg-7c846c5b-ca15-41c2-8384-5599c00aa5f0: url('https://regulatedunitedeurope.com/wp-content/uploads/2023/01/cryptocurrency-licence3.png');}:root{--wpr-bg-e7d1f7e4-bda8-44be-aeac-3ff13974cb1a: url('https://regulatedunitedeurope.com/wp-content/uploads/2023/01/cryptocurrency-licence3.png');}:root{--wpr-bg-c4af8376-087b-407b-a764-f4425ca773ac: url('https://regulatedunitedeurope.com/wp-content/uploads/2023/01/cryptocurrency-licence3.png');}:root{--wpr-bg-c155e878-9d8f-4a04-b441-0736cab6ed92: url('https://regulatedunitedeurope.com/wp-content/uploads/2023/01/cryptocurrency-licence3.png');}:root{--wpr-bg-d0d6019b-187b-4be6-b379-72224d7f24a9: url('https://regulatedunitedeurope.com/wp-content/uploads/2023/04/rue-cryptocurrency-licence-logo.png');}:root{--wpr-bg-58fcd73b-091c-406d-87e1-7854fe833221: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/address-book.png');}:root{--wpr-bg-b5772da3-2b16-4601-979c-c6a5ade1da8e: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/alarm-clock.png');}:root{--wpr-bg-1faf2f00-124d-4926-91ce-8fa8f2b4bc93: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/anchor.png');}:root{--wpr-bg-ea73713d-5233-4490-8d58-61f4028a73bf: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/application-image.png');}:root{--wpr-bg-a19e8e87-6742-4f35-9d11-94a643071fd6: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/arrow.png');}:root{--wpr-bg-cd768ee6-4298-4de9-b0e1-239bc766b914: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/asterisk.png');}:root{--wpr-bg-1ab7c687-f34d-4dc4-8a1b-71aa321a1dbd: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/auction-hammer.png');}:root{--wpr-bg-4a4a471e-9353-4763-b489-9828c4e9a559: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/balloon.png');}:root{--wpr-bg-41088824-2453-4bea-9740-ea8d05d056ae: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/balloon-buzz.png');}:root{--wpr-bg-7f064340-4e72-4f6f-8bae-665d851f086b: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/balloon-facebook.png');}:root{--wpr-bg-8e5c8fd6-110e-4e1c-b5cd-e8c0473383aa: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/balloon-twitter.png');}:root{--wpr-bg-ed4bc0de-e938-4a6c-a047-943ae78942c8: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/battery-full.png');}:root{--wpr-bg-c5fb776f-7135-4d1a-a308-1736ecee17e1: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/binocular.png');}:root{--wpr-bg-6ee60df0-cb51-42b7-be14-cfe7499fe602: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-excel.png');}:root{--wpr-bg-66b19da4-f31b-4cde-8401-4e2c1fcbedf8: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-image.png');}:root{--wpr-bg-c76ad6e9-fde3-498f-b39a-7728dd3acbdb: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-music.png');}:root{--wpr-bg-c3ae4182-a4e2-40f7-a5f5-d7824b8aa049: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-office.png');}:root{--wpr-bg-4c3ee103-a591-4fbb-aa3c-08475b246e52: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-pdf.png');}:root{--wpr-bg-4b99d2a4-3f1c-4a48-a4f4-970da115d069: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-powerpoint.png');}:root{--wpr-bg-6a15b42e-9ef7-466e-b61f-7a5e8d9f9152: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-word.png');}:root{--wpr-bg-e3c93629-265f-4769-b9f6-234a530cc02d: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/bookmark.png');}:root{--wpr-bg-0a1d1436-5ca8-41d5-88e5-145b7eed45ec: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/camcorder.png');}:root{--wpr-bg-50c0bcaa-5db7-4942-a0c7-6c249a35d77a: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/camera.png');}:root{--wpr-bg-cd953605-c565-472a-9664-e850ee6a8f85: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/chart.png');}:root{--wpr-bg-4c7bcf26-d6ae-425a-a1ae-663ea3169486: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/chart-pie.png');}:root{--wpr-bg-a811c841-f5dd-444c-840d-fe28fff4030a: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/clock.png');}:root{--wpr-bg-d212115a-efa3-4f5f-9fa4-202441b00607: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/control.png');}:root{--wpr-bg-eea32ee6-c34b-491a-a7aa-e97ab0d82c89: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/fire.png');}:root{--wpr-bg-f604e466-59f3-42a1-8ca6-b8104b5143b2: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/heart.png');}:root{--wpr-bg-d8788504-08f7-4c3c-b8c1-9a9772ba20e5: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/mail.png');}:root{--wpr-bg-1bf1e4e6-19a2-4143-a2f1-7f513444bc90: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/plus-shield.png');}:root{--wpr-bg-499ca894-33c2-45e1-ab5e-76fb1f0f732c: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/video.png');}:root{--wpr-bg-60b3e2b1-7c94-4a3c-a177-5720311d3b38: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/toggle_close.png');}:root{--wpr-bg-b3c59b2f-2e54-4c30-aa0a-e829a04a8fff: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/05/envelope2.png');}:root{--wpr-bg-c0771f0f-a5c7-47c4-ba60-169a67ab2028: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../vc/alert.png');}:root{--wpr-bg-0e1032f3-28b7-4a60-a56a-6a4fcce155c8: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../vc/info.png');}:root{--wpr-bg-1aebda25-87df-4ee1-935d-01130d365e77: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../vc/tick.png');}:root{--wpr-bg-094a3197-7190-48f0-a7ff-69eb04949a7d: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../vc/exclamation.png');}:root{--wpr-bg-2fd1fe2b-c695-477a-9dd7-96bf3f711131: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/address-book.png');}:root{--wpr-bg-7aabc35a-54b3-4480-8089-9ed083573a6a: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/alarm-clock.png');}:root{--wpr-bg-844e2f91-a469-4435-ae89-8c209beddaa9: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/anchor.png');}:root{--wpr-bg-3edb86c2-6e1b-431a-ade8-3d18d7b1238a: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/application-image.png');}:root{--wpr-bg-d6d3b19e-f461-4904-9e8b-62116bc429ea: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/arrow.png');}:root{--wpr-bg-fbf88956-bf27-4926-a965-73f2a7304c12: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/asterisk.png');}:root{--wpr-bg-b89bbab4-7c2f-4d67-a814-d8cd899fba6e: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/auction-hammer.png');}:root{--wpr-bg-30bd750d-225f-41c9-8c3b-3f56b33fda93: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/balloon.png');}:root{--wpr-bg-1ec90c8a-be1d-49fe-ba8e-6fe2eb307d8c: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/balloon-buzz.png');}:root{--wpr-bg-c063b9de-4247-49f2-8c71-169d9ab37a6f: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/balloon-facebook.png');}:root{--wpr-bg-8fa6f326-fca2-469a-b6ce-e322b6c8aa6a: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/balloon-twitter.png');}:root{--wpr-bg-7e868c67-458d-44d2-a9f6-bac11d66a00a: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/battery-full.png');}:root{--wpr-bg-538bde66-fbf1-4ed3-8ff7-a47e634aa099: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/binocular.png');}:root{--wpr-bg-053e74e2-1993-4f0d-b319-00a6bbcffc5c: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-excel.png');}:root{--wpr-bg-1ece3777-8721-499e-a0f6-5e37a427e88e: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-image.png');}:root{--wpr-bg-e5fbaae9-cbac-4ea8-a8d7-f5d4e5ab88f7: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-music.png');}:root{--wpr-bg-a3889c4e-9bbb-431f-a63c-a527d5e82a6e: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-office.png');}:root{--wpr-bg-66ce9104-3990-4432-a210-dc2426c54dee: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-pdf.png');}:root{--wpr-bg-fe83223b-e09c-4e6c-b7c5-9c0e55f6b008: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-powerpoint.png');}:root{--wpr-bg-361721fb-320a-4661-85f8-859d99783326: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/blue-document-word.png');}:root{--wpr-bg-a6cf8de2-b22d-4bbf-94af-3eb5f3393087: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/bookmark.png');}:root{--wpr-bg-47648277-b80b-402e-ba17-00f5e9a67b6d: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/camcorder.png');}:root{--wpr-bg-5a3efcd0-c1f0-4434-9043-ff21b43d27da: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/camera.png');}:root{--wpr-bg-fa1db781-12ec-4623-a01a-2cb63ae53f8b: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/chart.png');}:root{--wpr-bg-c9c36a8c-d7e9-4f84-a8cf-b7cc16689ad9: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/chart-pie.png');}:root{--wpr-bg-f76ed829-6f7a-4afc-ade9-81d6b6e6c64b: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/clock.png');}:root{--wpr-bg-2045f337-56cb-4f9d-82b0-1edde7572a9c: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/control.png');}:root{--wpr-bg-3caa699e-b682-499e-9aab-b703b65f4008: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/fire.png');}:root{--wpr-bg-4bf65b3f-c8ea-4bb6-8a53-8e05cd50af03: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/heart.png');}:root{--wpr-bg-ddd95c4e-6daf-4c2f-a45a-baced3a5c95c: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/mail.png');}:root{--wpr-bg-e1a097a3-114d-4980-9830-4b836919529d: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/plus-shield.png');}:root{--wpr-bg-4f6d3fac-3da5-42bf-8ae3-f82888ced76f: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/icons/video.png');}:root{--wpr-bg-81fe636f-71ca-451e-98f3-6a4c79282667: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/toggle_open.png');}:root{--wpr-bg-68a5e79c-0007-4965-8e7a-7411a26b99fe: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/toggle_close.png');}:root{--wpr-bg-1c285359-9259-4f08-8b12-7b49c1063133: url('https://regulatedunitedeurope.com/wp-content/themes/hostcluster/css/../images/flickr.png');}:root{--wpr-bg-398bdaba-19c5-4182-b13f-e8df1b85ac06: url('https://regulatedunitedeurope.com/wp-content/plugins/sassy-social-share/public/css/../../images/transparent_bg.png');}:root{--wpr-bg-8b2fbb49-2671-4cb2-9765-0f7c8a7652b0: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/lib/lightbox2/dist/css/../images/loading.gif');}:root{--wpr-bg-e66d86f3-5b58-4e7a-b5d9-e92cc50728ec: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/lib/lightbox2/dist/css/../images/prev.png');}:root{--wpr-bg-da375166-2ae3-4b40-9306-219b0b13e1f4: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/lib/lightbox2/dist/css/../images/next.png');}:root{--wpr-bg-90cee172-4286-4c1b-9e55-2e676434cff5: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/lib/lightbox2/dist/css/../images/close.png');}:root{--wpr-bg-837422e2-bda7-4081-801a-f2c060ba47f1: url('https://regulatedunitedeurope.com/wp-content/plugins/js_composer/assets/lib/owl-carousel2-dist/assets/owl.video.play.png');}:root{--wpr-bg-0fdad8ad-1a07-4583-a0b9-923e326cde0e: url('https://regulatedunitedeurope.com/wp-content/plugins/revslider/public/assets/css/../assets/gridtile.png');}:root{--wpr-bg-a649f4ff-8e34-43db-8169-d65940ff1355: url('https://regulatedunitedeurope.com/wp-content/plugins/revslider/public/assets/css/../assets/gridtile_white.png');}:root{--wpr-bg-11c6714f-6c9b-4c81-8813-81bce742acc1: url('https://regulatedunitedeurope.com/wp-content/plugins/revslider/public/assets/css/../assets/gridtile_3x3.png');}:root{--wpr-bg-fc05aa7d-d2bf-40c4-87dc-581c51238a1c: url('https://regulatedunitedeurope.com/wp-content/plugins/revslider/public/assets/css/../assets/gridtile_3x3_white.png');}:root{--wpr-bg-0a196b94-139e-4d49-97d8-a560209fc023: url('https://regulatedunitedeurope.com/wp-content/plugins/revslider/public/assets/css/../assets/coloredbg.png');}:root{--wpr-bg-a134bad6-30bc-4948-a1f5-241a8ff50f76: url('https://regulatedunitedeurope.com/wp-content/plugins/revslider/public/assets/css/../assets/coloredbg.png');}:root{--wpr-bg-9623d225-3a7a-450f-a304-6c86ae635d3b: url('https://regulatedunitedeurope.com/wp-content/plugins/revslider/public/assets/css/../assets/loader.gif');}:root{--wpr-bg-d14eb561-2385-423b-ae31-e8b5a6e92cbf: url('https://regulatedunitedeurope.com/wp-content/plugins/revslider/public/assets/css/../assets/loader.gif');}:root{--wpr-bg-9100bc88-19f6-4c2f-86c4-02fdc246b4e2: url('https://regulatedunitedeurope.com/wp-content/plugins/wp-rocket/assets/img/youtube.png');}:root{--wpr-bg-60bb7a90-0ca6-4a93-8825-de08b3be975b: url('https://regulatedunitedeurope.com/wp-content/uploads/2022/05/envelope2.png');}</style>
</noscript>
<script type="application/javascript">const rocket_pairs = [{"selector":".wpb_address_book i.icon,option.wpb_address_book","style":":root{--wpr-bg-8d04a50f-774e-467d-ba0f-7a41660aafec: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/address-book.png');}","hash":"8d04a50f-774e-467d-ba0f-7a41660aafec"},{"selector":".wpb_alarm_clock i.icon,option.wpb_alarm_clock","style":":root{--wpr-bg-6eb3e6fc-f9bd-48a9-9d96-094dd73c315e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/alarm-clock.png');}","hash":"6eb3e6fc-f9bd-48a9-9d96-094dd73c315e"},{"selector":".wpb_anchor i.icon,option.wpb_anchor","style":":root{--wpr-bg-0c9819e1-b2e5-4b44-8492-ffa86769ed39: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/anchor.png');}","hash":"0c9819e1-b2e5-4b44-8492-ffa86769ed39"},{"selector":".wpb_application_image i.icon,option.wpb_application_image","style":":root{--wpr-bg-f65011e9-0b6e-4bf8-8051-275dae05e91f: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/application-image.png');}","hash":"f65011e9-0b6e-4bf8-8051-275dae05e91f"},{"selector":".wpb_arrow i.icon,option.wpb_arrow","style":":root{--wpr-bg-45c8dbe3-a409-4ddb-a867-0abcc4c2960d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/arrow.png');}","hash":"45c8dbe3-a409-4ddb-a867-0abcc4c2960d"},{"selector":".wpb_asterisk i.icon,option.wpb_asterisk","style":":root{--wpr-bg-6e140d88-ea14-49e4-866e-5454db7556b1: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/asterisk.png');}","hash":"6e140d88-ea14-49e4-866e-5454db7556b1"},{"selector":".wpb_hammer i.icon,option.wpb_hammer","style":":root{--wpr-bg-ac3fabe2-bfe9-4f9e-bc8f-795a08570808: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/auction-hammer.png');}","hash":"ac3fabe2-bfe9-4f9e-bc8f-795a08570808"},{"selector":".wpb_balloon i.icon,option.wpb_balloon","style":":root{--wpr-bg-0cde3149-76e7-4510-8977-73e8fbf83d0f: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/balloon.png');}","hash":"0cde3149-76e7-4510-8977-73e8fbf83d0f"},{"selector":".wpb_balloon_buzz i.icon,option.wpb_balloon_buzz","style":":root{--wpr-bg-052c81fd-08f9-4990-9ea2-fe07dcc3b5d3: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/balloon-buzz.png');}","hash":"052c81fd-08f9-4990-9ea2-fe07dcc3b5d3"},{"selector":".wpb_balloon_facebook i.icon,option.wpb_balloon_facebook","style":":root{--wpr-bg-3c510e8c-b8ec-44a5-b40b-04225ca4be54: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/balloon-facebook.png');}","hash":"3c510e8c-b8ec-44a5-b40b-04225ca4be54"},{"selector":".wpb_balloon_twitter i.icon,option.wpb_balloon_twitter","style":":root{--wpr-bg-e905eaac-4e47-49ab-b2f4-afc6c4bcde50: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/balloon-twitter.png');}","hash":"e905eaac-4e47-49ab-b2f4-afc6c4bcde50"},{"selector":".wpb_battery i.icon,option.wpb_battery","style":":root{--wpr-bg-bfa39f39-ac06-408a-8ee2-f6863b243057: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/battery-full.png');}","hash":"bfa39f39-ac06-408a-8ee2-f6863b243057"},{"selector":".wpb_binocular i.icon,option.wpb_binocular","style":":root{--wpr-bg-fe935a6a-7544-439c-ac25-6eb8a7156b6e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/binocular.png');}","hash":"fe935a6a-7544-439c-ac25-6eb8a7156b6e"},{"selector":".wpb_document_excel i.icon,option.wpb_document_excel","style":":root{--wpr-bg-e0d06969-bf61-4262-b927-09833174fe73: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-excel.png');}","hash":"e0d06969-bf61-4262-b927-09833174fe73"},{"selector":".wpb_document_image i.icon,option.wpb_document_image","style":":root{--wpr-bg-4007438c-54e1-46b3-aa0e-be10a5e357ed: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-image.png');}","hash":"4007438c-54e1-46b3-aa0e-be10a5e357ed"},{"selector":".wpb_document_music i.icon,option.wpb_document_music","style":":root{--wpr-bg-c1c72922-23ef-4ac0-9ee1-6e42a632656e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-music.png');}","hash":"c1c72922-23ef-4ac0-9ee1-6e42a632656e"},{"selector":".wpb_document_office i.icon,option.wpb_document_office","style":":root{--wpr-bg-c35c15e0-4acc-4515-bbb9-ddc0012f9586: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-office.png');}","hash":"c35c15e0-4acc-4515-bbb9-ddc0012f9586"},{"selector":".wpb_document_pdf i.icon,option.wpb_document_pdf","style":":root{--wpr-bg-66f96873-3c06-4bcb-a860-2e8dc21222cf: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-pdf.png');}","hash":"66f96873-3c06-4bcb-a860-2e8dc21222cf"},{"selector":".wpb_document_powerpoint i.icon,option.wpb_document_powerpoint","style":":root{--wpr-bg-15abc961-038f-43d0-86e6-2d715cf0977f: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-powerpoint.png');}","hash":"15abc961-038f-43d0-86e6-2d715cf0977f"},{"selector":".wpb_document_word i.icon,option.wpb_document_word","style":":root{--wpr-bg-2468ab11-b45d-4ef7-a51a-ab0cc52326fe: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-word.png');}","hash":"2468ab11-b45d-4ef7-a51a-ab0cc52326fe"},{"selector":".wpb_bookmark i.icon,option.wpb_bookmark","style":":root{--wpr-bg-4d9a218f-86ed-4bab-9352-c3d8f1a354f5: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/bookmark.png');}","hash":"4d9a218f-86ed-4bab-9352-c3d8f1a354f5"},{"selector":".wpb_camcorder i.icon,option.wpb_camcorder","style":":root{--wpr-bg-0890e7e5-9a21-4781-b4d5-2ba0d4c2ee11: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/camcorder.png');}","hash":"0890e7e5-9a21-4781-b4d5-2ba0d4c2ee11"},{"selector":".wpb_camera i.icon,option.wpb_camera","style":":root{--wpr-bg-13299782-9605-4177-a11b-6b6997be995f: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/camera.png');}","hash":"13299782-9605-4177-a11b-6b6997be995f"},{"selector":".wpb_chart i.icon,option.wpb_chart","style":":root{--wpr-bg-3ac08cf3-d8bf-4a81-8263-f2279a883279: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/chart.png');}","hash":"3ac08cf3-d8bf-4a81-8263-f2279a883279"},{"selector":".wpb_chart_pie i.icon,option.wpb_chart_pie","style":":root{--wpr-bg-ceb761cd-fbfb-4402-8fd5-2e45e2299728: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/chart-pie.png');}","hash":"ceb761cd-fbfb-4402-8fd5-2e45e2299728"},{"selector":".wpb_clock i.icon,option.wpb_clock","style":":root{--wpr-bg-bb6ad0d0-eb18-4545-94e3-079b6ee6f637: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/clock.png');}","hash":"bb6ad0d0-eb18-4545-94e3-079b6ee6f637"},{"selector":".wpb_play i.icon,option.wpb_play","style":":root{--wpr-bg-1268c9a5-c1a7-41e4-bdb7-7ecd5c844e3e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/control.png');}","hash":"1268c9a5-c1a7-41e4-bdb7-7ecd5c844e3e"},{"selector":".wpb_fire i.icon,option.wpb_fire","style":":root{--wpr-bg-5f3faa7b-d308-41ab-8be8-b461c3d31d2a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/fire.png');}","hash":"5f3faa7b-d308-41ab-8be8-b461c3d31d2a"},{"selector":".wpb_heart i.icon,option.wpb_heart","style":":root{--wpr-bg-e71fcfad-f721-4893-88e9-faaaa93c6e52: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/heart.png');}","hash":"e71fcfad-f721-4893-88e9-faaaa93c6e52"},{"selector":".wpb_mail i.icon,option.wpb_mail","style":":root{--wpr-bg-d67d2229-799b-4998-a229-6f9e890d1859: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/mail.png');}","hash":"d67d2229-799b-4998-a229-6f9e890d1859"},{"selector":".wpb_shield i.icon,option.wpb_shield","style":":root{--wpr-bg-4241b1be-221b-442b-875b-49c5a61f342a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/plus-shield.png');}","hash":"4241b1be-221b-442b-875b-49c5a61f342a"},{"selector":".wpb_video i.icon,option.wpb_video","style":":root{--wpr-bg-d47f2e31-2a8d-4253-b4aa-c6839a0c402e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/video.png');}","hash":"d47f2e31-2a8d-4253-b4aa-c6839a0c402e"},{"selector":".vc-spinner","style":":root{--wpr-bg-3fb9d5d3-9f1e-4dad-8a60-3ec64837a084: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/spinner.gif');}","hash":"3fb9d5d3-9f1e-4dad-8a60-3ec64837a084"},{"selector":".vc_pixel_icon-alert","style":":root{--wpr-bg-2b4f4bc4-973b-408a-8ae0-bd55f6457da7: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/vc\/alert.png');}","hash":"2b4f4bc4-973b-408a-8ae0-bd55f6457da7"},{"selector":".vc_pixel_icon-info","style":":root{--wpr-bg-953cc767-8eeb-4946-9eb4-65aae901ac15: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/vc\/info.png');}","hash":"953cc767-8eeb-4946-9eb4-65aae901ac15"},{"selector":".vc_pixel_icon-tick","style":":root{--wpr-bg-078fd91b-4eb8-4bd9-abf3-79fac096d8eb: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/vc\/tick.png');}","hash":"078fd91b-4eb8-4bd9-abf3-79fac096d8eb"},{"selector":".vc_pixel_icon-explanation","style":":root{--wpr-bg-1052b9da-a10e-43e9-87c5-95113a4d2a18: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/vc\/exclamation.png');}","hash":"1052b9da-a10e-43e9-87c5-95113a4d2a18"},{"selector":".vc_pixel_icon-address_book","style":":root{--wpr-bg-09340907-ca7f-46a6-b708-216c0c977366: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/address-book.png');}","hash":"09340907-ca7f-46a6-b708-216c0c977366"},{"selector":".vc_pixel_icon-alarm_clock","style":":root{--wpr-bg-4500454a-d220-4eff-a5ce-a5fda930548f: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/alarm-clock.png');}","hash":"4500454a-d220-4eff-a5ce-a5fda930548f"},{"selector":".vc_pixel_icon-anchor","style":":root{--wpr-bg-06bd6a4e-8556-4bbf-b123-a0bdf72854bd: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/anchor.png');}","hash":"06bd6a4e-8556-4bbf-b123-a0bdf72854bd"},{"selector":".vc_pixel_icon-application_image","style":":root{--wpr-bg-4cb8e025-0f6e-4ac7-a73e-4b90cf52aeba: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/application-image.png');}","hash":"4cb8e025-0f6e-4ac7-a73e-4b90cf52aeba"},{"selector":".vc_pixel_icon-arrow","style":":root{--wpr-bg-53079e7e-b15c-4782-8ab0-67b1c8c8f639: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/arrow.png');}","hash":"53079e7e-b15c-4782-8ab0-67b1c8c8f639"},{"selector":".vc_pixel_icon-asterisk","style":":root{--wpr-bg-2d3a8273-1ff4-4ff6-8295-1900aa838f96: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/asterisk.png');}","hash":"2d3a8273-1ff4-4ff6-8295-1900aa838f96"},{"selector":".vc_pixel_icon-hammer","style":":root{--wpr-bg-adbd0e89-2af3-44cb-9071-accede41ada7: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/auction-hammer.png');}","hash":"adbd0e89-2af3-44cb-9071-accede41ada7"},{"selector":".vc_pixel_icon-balloon","style":":root{--wpr-bg-90beb842-a78f-40b1-86f9-df2697d70524: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/balloon.png');}","hash":"90beb842-a78f-40b1-86f9-df2697d70524"},{"selector":".vc_pixel_icon-balloon_buzz","style":":root{--wpr-bg-ff0a2ebf-8376-4694-9279-0424cb5861db: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/balloon-buzz.png');}","hash":"ff0a2ebf-8376-4694-9279-0424cb5861db"},{"selector":".vc_pixel_icon-balloon_facebook","style":":root{--wpr-bg-a0ade3ed-7479-44ca-b469-d3f7185e897a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/balloon-facebook.png');}","hash":"a0ade3ed-7479-44ca-b469-d3f7185e897a"},{"selector":".vc_pixel_icon-balloon_twitter","style":":root{--wpr-bg-1db5888c-1c90-417f-b466-cedd348251af: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/balloon-twitter.png');}","hash":"1db5888c-1c90-417f-b466-cedd348251af"},{"selector":".vc_pixel_icon-battery","style":":root{--wpr-bg-35670e84-fc17-4ba4-9c16-40da0c35bbb1: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/battery-full.png');}","hash":"35670e84-fc17-4ba4-9c16-40da0c35bbb1"},{"selector":".vc_pixel_icon-binocular","style":":root{--wpr-bg-32ed00ef-f292-456f-8e33-eb3025410df6: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/binocular.png');}","hash":"32ed00ef-f292-456f-8e33-eb3025410df6"},{"selector":".vc_pixel_icon-document_excel","style":":root{--wpr-bg-8b6b0712-41fe-4502-8736-c66f284d50f4: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-excel.png');}","hash":"8b6b0712-41fe-4502-8736-c66f284d50f4"},{"selector":".vc_pixel_icon-document_image","style":":root{--wpr-bg-ea8f7b54-ba75-408f-b8ac-ab1c803626ac: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-image.png');}","hash":"ea8f7b54-ba75-408f-b8ac-ab1c803626ac"},{"selector":".vc_pixel_icon-document_music","style":":root{--wpr-bg-e77e9b76-23a8-4dc4-9942-d20b264747d8: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-music.png');}","hash":"e77e9b76-23a8-4dc4-9942-d20b264747d8"},{"selector":".vc_pixel_icon-document_office","style":":root{--wpr-bg-09606878-d71c-473f-a2ac-03be656ab440: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-office.png');}","hash":"09606878-d71c-473f-a2ac-03be656ab440"},{"selector":".vc_pixel_icon-document_pdf","style":":root{--wpr-bg-b126a734-6def-497f-9332-2079a7889541: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-pdf.png');}","hash":"b126a734-6def-497f-9332-2079a7889541"},{"selector":".vc_pixel_icon-document_powerpoint","style":":root{--wpr-bg-a91693b5-2d73-4a22-a504-9be095a00f8a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-powerpoint.png');}","hash":"a91693b5-2d73-4a22-a504-9be095a00f8a"},{"selector":".vc_pixel_icon-document_word","style":":root{--wpr-bg-35d74f10-a507-42eb-92eb-6e0c397e865b: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/blue-document-word.png');}","hash":"35d74f10-a507-42eb-92eb-6e0c397e865b"},{"selector":".vc_pixel_icon-bookmark","style":":root{--wpr-bg-5b2314d9-06ee-4f84-8bf5-00c7aef54243: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/bookmark.png');}","hash":"5b2314d9-06ee-4f84-8bf5-00c7aef54243"},{"selector":".vc_pixel_icon-camcorder","style":":root{--wpr-bg-8a6e539b-a626-4d84-97aa-9314a390cb3c: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/camcorder.png');}","hash":"8a6e539b-a626-4d84-97aa-9314a390cb3c"},{"selector":".vc_pixel_icon-camera","style":":root{--wpr-bg-f81702c4-75e3-4f67-b231-3b325d965cc8: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/camera.png');}","hash":"f81702c4-75e3-4f67-b231-3b325d965cc8"},{"selector":".vc_pixel_icon-chart","style":":root{--wpr-bg-f60b067c-3f22-4f2b-85bd-a19f3191f2ae: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/chart.png');}","hash":"f60b067c-3f22-4f2b-85bd-a19f3191f2ae"},{"selector":".vc_pixel_icon-chart_pie","style":":root{--wpr-bg-a7b40a05-ede1-437d-9582-0be18bb24fd8: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/chart-pie.png');}","hash":"a7b40a05-ede1-437d-9582-0be18bb24fd8"},{"selector":".vc_pixel_icon-clock","style":":root{--wpr-bg-7af1ce8d-6e7f-4d9c-b36c-6bb9c231e549: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/clock.png');}","hash":"7af1ce8d-6e7f-4d9c-b36c-6bb9c231e549"},{"selector":".vc_pixel_icon-play","style":":root{--wpr-bg-15e977d3-870e-447e-9471-2b0f563af83b: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/control.png');}","hash":"15e977d3-870e-447e-9471-2b0f563af83b"},{"selector":".vc_pixel_icon-fire","style":":root{--wpr-bg-13e41025-56a0-4d12-8629-6f6f31a40949: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/fire.png');}","hash":"13e41025-56a0-4d12-8629-6f6f31a40949"},{"selector":".vc_pixel_icon-heart","style":":root{--wpr-bg-0c04d1a5-11a3-4f5b-9b85-432cef055290: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/heart.png');}","hash":"0c04d1a5-11a3-4f5b-9b85-432cef055290"},{"selector":".vc_pixel_icon-mail","style":":root{--wpr-bg-3993d60a-31c1-4a0b-b7bf-b55653981fd9: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/mail.png');}","hash":"3993d60a-31c1-4a0b-b7bf-b55653981fd9"},{"selector":".vc_pixel_icon-shield","style":":root{--wpr-bg-637ae640-44b6-4165-ac31-703843afd477: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/plus-shield.png');}","hash":"637ae640-44b6-4165-ac31-703843afd477"},{"selector":".vc_pixel_icon-video","style":":root{--wpr-bg-62eb12b8-335b-43c6-af27-840349a10214: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/icons\/video.png');}","hash":"62eb12b8-335b-43c6-af27-840349a10214"},{"selector":".wpb_accordion .wpb_accordion_wrapper .ui-state-active .ui-icon,.wpb_accordion .wpb_accordion_wrapper .ui-state-default .ui-icon","style":":root{--wpr-bg-9cfcea48-2c52-496c-a779-485cc8d92f92: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/toggle_open.png');}","hash":"9cfcea48-2c52-496c-a779-485cc8d92f92"},{"selector":".wpb_accordion .wpb_accordion_wrapper .ui-state-active .ui-icon","style":":root{--wpr-bg-2a30f194-65d9-49cb-a33b-1060cb712ca8: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/toggle_close.png');}","hash":"2a30f194-65d9-49cb-a33b-1060cb712ca8"},{"selector":".wpb_flickr_widget p.flickr_stream_wrap a","style":":root{--wpr-bg-afb419f9-f1cf-402a-9b2c-1c6a8c0ca9df: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/images\/flickr.png');}","hash":"afb419f9-f1cf-402a-9b2c-1c6a8c0ca9df"},{"selector":".vc-spinner.vc-spinner-complete","style":":root{--wpr-bg-cdb51f4d-400b-49ed-8600-bd11c20459eb: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/vc\/tick.png');}","hash":"cdb51f4d-400b-49ed-8600-bd11c20459eb"},{"selector":".vc-spinner.vc-spinner-failed","style":":root{--wpr-bg-acd7537b-322b-416e-88e5-356565b156bf: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/css\/..\/vc\/remove.png');}","hash":"acd7537b-322b-416e-88e5-356565b156bf"},{"selector":".tp-esg-item .add_to_cart_button.loading","style":":root{--wpr-bg-0d828995-3c81-4537-b496-e587f848c6a2: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/essential-grid\/public\/assets\/css\/..\/images\/ajax-loader.gif');}","hash":"0d828995-3c81-4537-b496-e587f848c6a2"},{"selector":".esg-loader.spinner0","style":":root{--wpr-bg-065a6846-909f-4560-a62b-b82b0648f15d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/essential-grid\/public\/assets\/css\/..\/images\/loader.gif');}","hash":"065a6846-909f-4560-a62b-b82b0648f15d"},{"selector":".esg-loader.spinner5","style":":root{--wpr-bg-b0ed686a-2347-4bcf-aaa6-be2fcfb815a4: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/essential-grid\/public\/assets\/css\/..\/images\/loader.gif');}","hash":"b0ed686a-2347-4bcf-aaa6-be2fcfb815a4"},{"selector":".hostcluster-row select.form-control","style":":root{--wpr-bg-510a9f56-099c-472c-aa87-b0c7ba9c429d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/modeltheme-framework\/inc\/shortcodes\/img\/angle-select.png');}","hash":"510a9f56-099c-472c-aa87-b0c7ba9c429d"},{"selector":".whmcs-bridge section#home-banner","style":":root{--wpr-bg-cd29975d-e7f8-40d6-85c5-c690d6da4d83: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/modeltheme-framework\/css\/..\/images\/hostcluster_slider.jpg');}","hash":"cd29975d-e7f8-40d6-85c5-c690d6da4d83"},{"selector":".position-test","style":":root{--wpr-bg-204cd7c4-276c-4cbe-a198-39e3d4828ed4: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/modeltheme-framework\/inc\/shortcodes\/img\/fill_stars.svg');}","hash":"204cd7c4-276c-4cbe-a198-39e3d4828ed4"},{"selector":".owl-item.loading","style":":root{--wpr-bg-8c9899c5-82e2-4802-ab29-3413afea7aba: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/AjaxLoader.gif');}","hash":"8c9899c5-82e2-4802-ab29-3413afea7aba"},{"selector":".owl-item.loading","style":":root{--wpr-bg-915bd92b-cf38-4380-ac1b-aaf6c9f19d41: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/AjaxLoader.gif');}","hash":"915bd92b-cf38-4380-ac1b-aaf6c9f19d41"},{"selector":".timeline article","style":":root{--wpr-bg-f2db10e6-d86f-499c-b47e-a7dcf43072ce: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/timeline-dot.jpg');}","hash":"f2db10e6-d86f-499c-b47e-a7dcf43072ce"},{"selector":".timeline article","style":":root{--wpr-bg-4221e463-f3f4-4edf-9759-a5c7578e4a39: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/images\/timeline-dot.jpg');}","hash":"4221e463-f3f4-4edf-9759-a5c7578e4a39"},{"selector":".spritereg","style":":root{--wpr-bg-49b2acea-fcd3-459a-8c21-f272550ca2c1: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"49b2acea-fcd3-459a-8c21-f272550ca2c1"},{"selector":".spritereg","style":":root{--wpr-bg-2143befd-a838-4876-b98f-eaf77e797185: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"2143befd-a838-4876-b98f-eaf77e797185"},{"selector":".spritereg","style":":root{--wpr-bg-3f44e280-04c5-47a2-a972-eb4934cfe545: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"3f44e280-04c5-47a2-a972-eb4934cfe545"},{"selector":".spritereg","style":":root{--wpr-bg-9277e859-506d-457a-8e1b-77297c3d832d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"9277e859-506d-457a-8e1b-77297c3d832d"},{"selector":".spritebusiness","style":":root{--wpr-bg-f30b8d63-3cd7-4b3e-bc2c-01003145d062: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"f30b8d63-3cd7-4b3e-bc2c-01003145d062"},{"selector":".spritebusiness","style":":root{--wpr-bg-6bc403f7-1aac-41fe-af86-b125a74613be: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"6bc403f7-1aac-41fe-af86-b125a74613be"},{"selector":".spritebusiness","style":":root{--wpr-bg-2a890563-17d7-4a61-81b6-05e0275ac205: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"2a890563-17d7-4a61-81b6-05e0275ac205"},{"selector":".spritebusiness","style":":root{--wpr-bg-c7c9c2a5-a829-44be-b25c-4e6627c58496: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"c7c9c2a5-a829-44be-b25c-4e6627c58496"},{"selector":".spriteresidence","style":":root{--wpr-bg-568cfbeb-3527-45ab-822f-afd5f185080e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"568cfbeb-3527-45ab-822f-afd5f185080e"},{"selector":".spriteresidence","style":":root{--wpr-bg-c4d41fe5-1768-49ce-90be-39299da6b4ae: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"c4d41fe5-1768-49ce-90be-39299da6b4ae"},{"selector":".spriteresidence","style":":root{--wpr-bg-704dd3e8-7df6-4771-ac8e-a96653c97ca2: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"704dd3e8-7df6-4771-ac8e-a96653c97ca2"},{"selector":".spriteresidence","style":":root{--wpr-bg-164c885b-f352-4864-9815-62a4fa220e5a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"164c885b-f352-4864-9815-62a4fa220e5a"},{"selector":"a.spriteireland","style":":root{--wpr-bg-0643397b-3a49-452d-995a-119012945246: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence2.png');}","hash":"0643397b-3a49-452d-995a-119012945246"},{"selector":".spriteaccounts","style":":root{--wpr-bg-01d32785-4edf-453d-8383-bfac465ccbd7: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"01d32785-4edf-453d-8383-bfac465ccbd7"},{"selector":".spriteaccounts","style":":root{--wpr-bg-82aad673-53dd-49f4-8d66-0a4d66d42863: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"82aad673-53dd-49f4-8d66-0a4d66d42863"},{"selector":".spriteaccounts","style":":root{--wpr-bg-7704f351-855f-47dd-a58f-d9457330322d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"7704f351-855f-47dd-a58f-d9457330322d"},{"selector":".spriteireland","style":":root{--wpr-bg-f9248e79-8987-470d-8635-dbb7280e7bb2: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence2.png');}","hash":"f9248e79-8987-470d-8635-dbb7280e7bb2"},{"selector":".spriteireland","style":":root{--wpr-bg-f58cab22-ac0f-4130-8aaf-f37b86ebef72: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence2.png');}","hash":"f58cab22-ac0f-4130-8aaf-f37b86ebef72"},{"selector":".spriteportugal","style":":root{--wpr-bg-4eb1469e-71cd-436a-b693-0a5fdf83920a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/07\/rue-cryptolicence.png');}","hash":"4eb1469e-71cd-436a-b693-0a5fdf83920a"},{"selector":".spriteportugal","style":":root{--wpr-bg-76e02374-c47b-4d9e-880c-0a484f0366f1: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/07\/rue-cryptolicence.png');}","hash":"76e02374-c47b-4d9e-880c-0a484f0366f1"},{"selector":".spriteuk","style":":root{--wpr-bg-89e5791f-0bcb-4b5e-a2df-f9686a74e2a7: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence2.png');}","hash":"89e5791f-0bcb-4b5e-a2df-f9686a74e2a7"},{"selector":".spriteuk","style":":root{--wpr-bg-ec04fb6a-347d-4c7a-9839-640f96388877: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence2.png');}","hash":"ec04fb6a-347d-4c7a-9839-640f96388877"},{"selector":".spriteczech","style":":root{--wpr-bg-a1c8bc61-ecae-4391-9200-2b358d288e0e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/07\/rue-cryptolicence.png');}","hash":"a1c8bc61-ecae-4391-9200-2b358d288e0e"},{"selector":".spriteczech","style":":root{--wpr-bg-a161c46f-5f4b-4dee-9f31-132c05951f1a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/07\/rue-cryptolicence.png');}","hash":"a161c46f-5f4b-4dee-9f31-132c05951f1a"},{"selector":".spritecrypto","style":":root{--wpr-bg-e4bfce8d-1125-41d0-94bd-992011c70f71: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"e4bfce8d-1125-41d0-94bd-992011c70f71"},{"selector":".spritecrypto","style":":root{--wpr-bg-802dd6fe-2602-448a-a97e-4c550f8f936d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"802dd6fe-2602-448a-a97e-4c550f8f936d"},{"selector":".spritecrypto","style":":root{--wpr-bg-f766b1aa-2513-4937-8ce1-b38a1b9ab714: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"f766b1aa-2513-4937-8ce1-b38a1b9ab714"},{"selector":".spritecyprus","style":":root{--wpr-bg-9fd262e2-9b02-443c-b49a-9c7ef175a7f0: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence2.png');}","hash":"9fd262e2-9b02-443c-b49a-9c7ef175a7f0"},{"selector":".spritecyprus","style":":root{--wpr-bg-4614b2f3-854a-4d4a-b1d4-9e2e3fd77ada: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence2.png');}","hash":"4614b2f3-854a-4d4a-b1d4-9e2e3fd77ada"},{"selector":".spriteslovakia","style":":root{--wpr-bg-d452504a-5da1-4df0-a9e7-fe73439fb894: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/07\/rue-cryptolicence.png');}","hash":"d452504a-5da1-4df0-a9e7-fe73439fb894"},{"selector":".spriteslovakia","style":":root{--wpr-bg-c27113e1-3560-48a8-a865-574aa01ccaed: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/07\/rue-cryptolicence.png');}","hash":"c27113e1-3560-48a8-a865-574aa01ccaed"},{"selector":".spriteamaz","style":":root{--wpr-bg-4eeb7614-dd1e-4b83-b2f7-c48345de1d9d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"4eeb7614-dd1e-4b83-b2f7-c48345de1d9d"},{"selector":".spriteamaz","style":":root{--wpr-bg-b931d837-8a93-4dbd-bef2-eb7f57e4a684: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/04\/cryptocurrency-licence.png');}","hash":"b931d837-8a93-4dbd-bef2-eb7f57e4a684"},{"selector":".spritebulgaria","style":":root{--wpr-bg-38e0cc19-0ad4-43f6-84e0-f23f796134aa: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2023\/01\/cryptocurrency-licence3.png');}","hash":"38e0cc19-0ad4-43f6-84e0-f23f796134aa"},{"selector":".spritebulgaria","style":":root{--wpr-bg-31897c25-d025-403a-a462-fd26ffd0a029: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2023\/01\/cryptocurrency-licence3.png');}","hash":"31897c25-d025-403a-a462-fd26ffd0a029"},{"selector":".spriteliechtenstein","style":":root{--wpr-bg-7c846c5b-ca15-41c2-8384-5599c00aa5f0: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2023\/01\/cryptocurrency-licence3.png');}","hash":"7c846c5b-ca15-41c2-8384-5599c00aa5f0"},{"selector":".spriteliechtenstein","style":":root{--wpr-bg-e7d1f7e4-bda8-44be-aeac-3ff13974cb1a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2023\/01\/cryptocurrency-licence3.png');}","hash":"e7d1f7e4-bda8-44be-aeac-3ff13974cb1a"},{"selector":".spritegermany","style":":root{--wpr-bg-c4af8376-087b-407b-a764-f4425ca773ac: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2023\/01\/cryptocurrency-licence3.png');}","hash":"c4af8376-087b-407b-a764-f4425ca773ac"},{"selector":".spritegermany","style":":root{--wpr-bg-c155e878-9d8f-4a04-b441-0736cab6ed92: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2023\/01\/cryptocurrency-licence3.png');}","hash":"c155e878-9d8f-4a04-b441-0736cab6ed92"},{"selector":".no-logo","style":":root{--wpr-bg-d0d6019b-187b-4be6-b379-72224d7f24a9: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2023\/04\/rue-cryptocurrency-licence-logo.png');}","hash":"d0d6019b-187b-4be6-b379-72224d7f24a9"},{"selector":".wpb_address_book i.icon,option.wpb_address_book","style":":root{--wpr-bg-58fcd73b-091c-406d-87e1-7854fe833221: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/address-book.png');}","hash":"58fcd73b-091c-406d-87e1-7854fe833221"},{"selector":".wpb_alarm_clock i.icon,option.wpb_alarm_clock","style":":root{--wpr-bg-b5772da3-2b16-4601-979c-c6a5ade1da8e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/alarm-clock.png');}","hash":"b5772da3-2b16-4601-979c-c6a5ade1da8e"},{"selector":".wpb_anchor i.icon,option.wpb_anchor","style":":root{--wpr-bg-1faf2f00-124d-4926-91ce-8fa8f2b4bc93: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/anchor.png');}","hash":"1faf2f00-124d-4926-91ce-8fa8f2b4bc93"},{"selector":".wpb_application_image i.icon,option.wpb_application_image","style":":root{--wpr-bg-ea73713d-5233-4490-8d58-61f4028a73bf: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/application-image.png');}","hash":"ea73713d-5233-4490-8d58-61f4028a73bf"},{"selector":".wpb_arrow i.icon,option.wpb_arrow","style":":root{--wpr-bg-a19e8e87-6742-4f35-9d11-94a643071fd6: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/arrow.png');}","hash":"a19e8e87-6742-4f35-9d11-94a643071fd6"},{"selector":".wpb_asterisk i.icon,option.wpb_asterisk","style":":root{--wpr-bg-cd768ee6-4298-4de9-b0e1-239bc766b914: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/asterisk.png');}","hash":"cd768ee6-4298-4de9-b0e1-239bc766b914"},{"selector":".wpb_hammer i.icon,option.wpb_hammer","style":":root{--wpr-bg-1ab7c687-f34d-4dc4-8a1b-71aa321a1dbd: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/auction-hammer.png');}","hash":"1ab7c687-f34d-4dc4-8a1b-71aa321a1dbd"},{"selector":".wpb_balloon i.icon,option.wpb_balloon","style":":root{--wpr-bg-4a4a471e-9353-4763-b489-9828c4e9a559: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/balloon.png');}","hash":"4a4a471e-9353-4763-b489-9828c4e9a559"},{"selector":".wpb_balloon_buzz i.icon,option.wpb_balloon_buzz","style":":root{--wpr-bg-41088824-2453-4bea-9740-ea8d05d056ae: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/balloon-buzz.png');}","hash":"41088824-2453-4bea-9740-ea8d05d056ae"},{"selector":".wpb_balloon_facebook i.icon,option.wpb_balloon_facebook","style":":root{--wpr-bg-7f064340-4e72-4f6f-8bae-665d851f086b: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/balloon-facebook.png');}","hash":"7f064340-4e72-4f6f-8bae-665d851f086b"},{"selector":".wpb_balloon_twitter i.icon,option.wpb_balloon_twitter","style":":root{--wpr-bg-8e5c8fd6-110e-4e1c-b5cd-e8c0473383aa: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/balloon-twitter.png');}","hash":"8e5c8fd6-110e-4e1c-b5cd-e8c0473383aa"},{"selector":".wpb_battery i.icon,option.wpb_battery","style":":root{--wpr-bg-ed4bc0de-e938-4a6c-a047-943ae78942c8: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/battery-full.png');}","hash":"ed4bc0de-e938-4a6c-a047-943ae78942c8"},{"selector":".wpb_binocular i.icon,option.wpb_binocular","style":":root{--wpr-bg-c5fb776f-7135-4d1a-a308-1736ecee17e1: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/binocular.png');}","hash":"c5fb776f-7135-4d1a-a308-1736ecee17e1"},{"selector":".wpb_document_excel i.icon,option.wpb_document_excel","style":":root{--wpr-bg-6ee60df0-cb51-42b7-be14-cfe7499fe602: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-excel.png');}","hash":"6ee60df0-cb51-42b7-be14-cfe7499fe602"},{"selector":".wpb_document_image i.icon,option.wpb_document_image","style":":root{--wpr-bg-66b19da4-f31b-4cde-8401-4e2c1fcbedf8: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-image.png');}","hash":"66b19da4-f31b-4cde-8401-4e2c1fcbedf8"},{"selector":".wpb_document_music i.icon,option.wpb_document_music","style":":root{--wpr-bg-c76ad6e9-fde3-498f-b39a-7728dd3acbdb: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-music.png');}","hash":"c76ad6e9-fde3-498f-b39a-7728dd3acbdb"},{"selector":".wpb_document_office i.icon,option.wpb_document_office","style":":root{--wpr-bg-c3ae4182-a4e2-40f7-a5f5-d7824b8aa049: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-office.png');}","hash":"c3ae4182-a4e2-40f7-a5f5-d7824b8aa049"},{"selector":".wpb_document_pdf i.icon,option.wpb_document_pdf","style":":root{--wpr-bg-4c3ee103-a591-4fbb-aa3c-08475b246e52: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-pdf.png');}","hash":"4c3ee103-a591-4fbb-aa3c-08475b246e52"},{"selector":".wpb_document_powerpoint i.icon,option.wpb_document_powerpoint","style":":root{--wpr-bg-4b99d2a4-3f1c-4a48-a4f4-970da115d069: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-powerpoint.png');}","hash":"4b99d2a4-3f1c-4a48-a4f4-970da115d069"},{"selector":".wpb_document_word i.icon,option.wpb_document_word","style":":root{--wpr-bg-6a15b42e-9ef7-466e-b61f-7a5e8d9f9152: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-word.png');}","hash":"6a15b42e-9ef7-466e-b61f-7a5e8d9f9152"},{"selector":".wpb_bookmark i.icon,option.wpb_bookmark","style":":root{--wpr-bg-e3c93629-265f-4769-b9f6-234a530cc02d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/bookmark.png');}","hash":"e3c93629-265f-4769-b9f6-234a530cc02d"},{"selector":".wpb_camcorder i.icon,option.wpb_camcorder","style":":root{--wpr-bg-0a1d1436-5ca8-41d5-88e5-145b7eed45ec: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/camcorder.png');}","hash":"0a1d1436-5ca8-41d5-88e5-145b7eed45ec"},{"selector":".wpb_camera i.icon,option.wpb_camera","style":":root{--wpr-bg-50c0bcaa-5db7-4942-a0c7-6c249a35d77a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/camera.png');}","hash":"50c0bcaa-5db7-4942-a0c7-6c249a35d77a"},{"selector":".wpb_chart i.icon,option.wpb_chart","style":":root{--wpr-bg-cd953605-c565-472a-9664-e850ee6a8f85: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/chart.png');}","hash":"cd953605-c565-472a-9664-e850ee6a8f85"},{"selector":".wpb_chart_pie i.icon,option.wpb_chart_pie","style":":root{--wpr-bg-4c7bcf26-d6ae-425a-a1ae-663ea3169486: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/chart-pie.png');}","hash":"4c7bcf26-d6ae-425a-a1ae-663ea3169486"},{"selector":".wpb_clock i.icon,option.wpb_clock","style":":root{--wpr-bg-a811c841-f5dd-444c-840d-fe28fff4030a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/clock.png');}","hash":"a811c841-f5dd-444c-840d-fe28fff4030a"},{"selector":".wpb_play i.icon,option.wpb_play","style":":root{--wpr-bg-d212115a-efa3-4f5f-9fa4-202441b00607: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/control.png');}","hash":"d212115a-efa3-4f5f-9fa4-202441b00607"},{"selector":".wpb_fire i.icon,option.wpb_fire","style":":root{--wpr-bg-eea32ee6-c34b-491a-a7aa-e97ab0d82c89: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/fire.png');}","hash":"eea32ee6-c34b-491a-a7aa-e97ab0d82c89"},{"selector":".wpb_heart i.icon,option.wpb_heart","style":":root{--wpr-bg-f604e466-59f3-42a1-8ca6-b8104b5143b2: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/heart.png');}","hash":"f604e466-59f3-42a1-8ca6-b8104b5143b2"},{"selector":".wpb_mail i.icon,option.wpb_mail","style":":root{--wpr-bg-d8788504-08f7-4c3c-b8c1-9a9772ba20e5: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/mail.png');}","hash":"d8788504-08f7-4c3c-b8c1-9a9772ba20e5"},{"selector":".wpb_shield i.icon,option.wpb_shield","style":":root{--wpr-bg-1bf1e4e6-19a2-4143-a2f1-7f513444bc90: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/plus-shield.png');}","hash":"1bf1e4e6-19a2-4143-a2f1-7f513444bc90"},{"selector":".wpb_video i.icon,option.wpb_video","style":":root{--wpr-bg-499ca894-33c2-45e1-ab5e-76fb1f0f732c: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/video.png');}","hash":"499ca894-33c2-45e1-ab5e-76fb1f0f732c"},{"selector":"body .wpb_accordion .wpb_accordion_wrapper .ui-state-active .ui-icon","style":":root{--wpr-bg-60b3e2b1-7c94-4a3c-a177-5720311d3b38: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/toggle_close.png');}","hash":"60b3e2b1-7c94-4a3c-a177-5720311d3b38"},{"selector":"#menu-item-4400,#menu-item-7266","style":":root{--wpr-bg-b3c59b2f-2e54-4c30-aa0a-e829a04a8fff: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/05\/envelope2.png');}","hash":"b3c59b2f-2e54-4c30-aa0a-e829a04a8fff"},{"selector":".vc_pixel_icon-alert","style":":root{--wpr-bg-c0771f0f-a5c7-47c4-ba60-169a67ab2028: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/vc\/alert.png');}","hash":"c0771f0f-a5c7-47c4-ba60-169a67ab2028"},{"selector":".vc_pixel_icon-info","style":":root{--wpr-bg-0e1032f3-28b7-4a60-a56a-6a4fcce155c8: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/vc\/info.png');}","hash":"0e1032f3-28b7-4a60-a56a-6a4fcce155c8"},{"selector":".vc_pixel_icon-tick","style":":root{--wpr-bg-1aebda25-87df-4ee1-935d-01130d365e77: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/vc\/tick.png');}","hash":"1aebda25-87df-4ee1-935d-01130d365e77"},{"selector":".vc_pixel_icon-explanation","style":":root{--wpr-bg-094a3197-7190-48f0-a7ff-69eb04949a7d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/vc\/exclamation.png');}","hash":"094a3197-7190-48f0-a7ff-69eb04949a7d"},{"selector":".vc_pixel_icon-address_book","style":":root{--wpr-bg-2fd1fe2b-c695-477a-9dd7-96bf3f711131: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/address-book.png');}","hash":"2fd1fe2b-c695-477a-9dd7-96bf3f711131"},{"selector":".vc_pixel_icon-alarm_clock","style":":root{--wpr-bg-7aabc35a-54b3-4480-8089-9ed083573a6a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/alarm-clock.png');}","hash":"7aabc35a-54b3-4480-8089-9ed083573a6a"},{"selector":".vc_pixel_icon-anchor","style":":root{--wpr-bg-844e2f91-a469-4435-ae89-8c209beddaa9: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/anchor.png');}","hash":"844e2f91-a469-4435-ae89-8c209beddaa9"},{"selector":".vc_pixel_icon-application_image","style":":root{--wpr-bg-3edb86c2-6e1b-431a-ade8-3d18d7b1238a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/application-image.png');}","hash":"3edb86c2-6e1b-431a-ade8-3d18d7b1238a"},{"selector":".vc_pixel_icon-arrow","style":":root{--wpr-bg-d6d3b19e-f461-4904-9e8b-62116bc429ea: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/arrow.png');}","hash":"d6d3b19e-f461-4904-9e8b-62116bc429ea"},{"selector":".vc_pixel_icon-asterisk","style":":root{--wpr-bg-fbf88956-bf27-4926-a965-73f2a7304c12: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/asterisk.png');}","hash":"fbf88956-bf27-4926-a965-73f2a7304c12"},{"selector":".vc_pixel_icon-hammer","style":":root{--wpr-bg-b89bbab4-7c2f-4d67-a814-d8cd899fba6e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/auction-hammer.png');}","hash":"b89bbab4-7c2f-4d67-a814-d8cd899fba6e"},{"selector":".vc_pixel_icon-balloon","style":":root{--wpr-bg-30bd750d-225f-41c9-8c3b-3f56b33fda93: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/balloon.png');}","hash":"30bd750d-225f-41c9-8c3b-3f56b33fda93"},{"selector":".vc_pixel_icon-balloon_buzz","style":":root{--wpr-bg-1ec90c8a-be1d-49fe-ba8e-6fe2eb307d8c: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/balloon-buzz.png');}","hash":"1ec90c8a-be1d-49fe-ba8e-6fe2eb307d8c"},{"selector":".vc_pixel_icon-balloon_facebook","style":":root{--wpr-bg-c063b9de-4247-49f2-8c71-169d9ab37a6f: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/balloon-facebook.png');}","hash":"c063b9de-4247-49f2-8c71-169d9ab37a6f"},{"selector":".vc_pixel_icon-balloon_twitter","style":":root{--wpr-bg-8fa6f326-fca2-469a-b6ce-e322b6c8aa6a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/balloon-twitter.png');}","hash":"8fa6f326-fca2-469a-b6ce-e322b6c8aa6a"},{"selector":".vc_pixel_icon-battery","style":":root{--wpr-bg-7e868c67-458d-44d2-a9f6-bac11d66a00a: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/battery-full.png');}","hash":"7e868c67-458d-44d2-a9f6-bac11d66a00a"},{"selector":".vc_pixel_icon-binocular","style":":root{--wpr-bg-538bde66-fbf1-4ed3-8ff7-a47e634aa099: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/binocular.png');}","hash":"538bde66-fbf1-4ed3-8ff7-a47e634aa099"},{"selector":".vc_pixel_icon-document_excel","style":":root{--wpr-bg-053e74e2-1993-4f0d-b319-00a6bbcffc5c: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-excel.png');}","hash":"053e74e2-1993-4f0d-b319-00a6bbcffc5c"},{"selector":".vc_pixel_icon-document_image","style":":root{--wpr-bg-1ece3777-8721-499e-a0f6-5e37a427e88e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-image.png');}","hash":"1ece3777-8721-499e-a0f6-5e37a427e88e"},{"selector":".vc_pixel_icon-document_music","style":":root{--wpr-bg-e5fbaae9-cbac-4ea8-a8d7-f5d4e5ab88f7: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-music.png');}","hash":"e5fbaae9-cbac-4ea8-a8d7-f5d4e5ab88f7"},{"selector":".vc_pixel_icon-document_office","style":":root{--wpr-bg-a3889c4e-9bbb-431f-a63c-a527d5e82a6e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-office.png');}","hash":"a3889c4e-9bbb-431f-a63c-a527d5e82a6e"},{"selector":".vc_pixel_icon-document_pdf","style":":root{--wpr-bg-66ce9104-3990-4432-a210-dc2426c54dee: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-pdf.png');}","hash":"66ce9104-3990-4432-a210-dc2426c54dee"},{"selector":".vc_pixel_icon-document_powerpoint","style":":root{--wpr-bg-fe83223b-e09c-4e6c-b7c5-9c0e55f6b008: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-powerpoint.png');}","hash":"fe83223b-e09c-4e6c-b7c5-9c0e55f6b008"},{"selector":".vc_pixel_icon-document_word","style":":root{--wpr-bg-361721fb-320a-4661-85f8-859d99783326: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/blue-document-word.png');}","hash":"361721fb-320a-4661-85f8-859d99783326"},{"selector":".vc_pixel_icon-bookmark","style":":root{--wpr-bg-a6cf8de2-b22d-4bbf-94af-3eb5f3393087: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/bookmark.png');}","hash":"a6cf8de2-b22d-4bbf-94af-3eb5f3393087"},{"selector":".vc_pixel_icon-camcorder","style":":root{--wpr-bg-47648277-b80b-402e-ba17-00f5e9a67b6d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/camcorder.png');}","hash":"47648277-b80b-402e-ba17-00f5e9a67b6d"},{"selector":".vc_pixel_icon-camera","style":":root{--wpr-bg-5a3efcd0-c1f0-4434-9043-ff21b43d27da: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/camera.png');}","hash":"5a3efcd0-c1f0-4434-9043-ff21b43d27da"},{"selector":".vc_pixel_icon-chart","style":":root{--wpr-bg-fa1db781-12ec-4623-a01a-2cb63ae53f8b: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/chart.png');}","hash":"fa1db781-12ec-4623-a01a-2cb63ae53f8b"},{"selector":".vc_pixel_icon-chart_pie","style":":root{--wpr-bg-c9c36a8c-d7e9-4f84-a8cf-b7cc16689ad9: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/chart-pie.png');}","hash":"c9c36a8c-d7e9-4f84-a8cf-b7cc16689ad9"},{"selector":".vc_pixel_icon-clock","style":":root{--wpr-bg-f76ed829-6f7a-4afc-ade9-81d6b6e6c64b: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/clock.png');}","hash":"f76ed829-6f7a-4afc-ade9-81d6b6e6c64b"},{"selector":".vc_pixel_icon-play","style":":root{--wpr-bg-2045f337-56cb-4f9d-82b0-1edde7572a9c: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/control.png');}","hash":"2045f337-56cb-4f9d-82b0-1edde7572a9c"},{"selector":".vc_pixel_icon-fire","style":":root{--wpr-bg-3caa699e-b682-499e-9aab-b703b65f4008: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/fire.png');}","hash":"3caa699e-b682-499e-9aab-b703b65f4008"},{"selector":".vc_pixel_icon-heart","style":":root{--wpr-bg-4bf65b3f-c8ea-4bb6-8a53-8e05cd50af03: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/heart.png');}","hash":"4bf65b3f-c8ea-4bb6-8a53-8e05cd50af03"},{"selector":".vc_pixel_icon-mail","style":":root{--wpr-bg-ddd95c4e-6daf-4c2f-a45a-baced3a5c95c: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/mail.png');}","hash":"ddd95c4e-6daf-4c2f-a45a-baced3a5c95c"},{"selector":".vc_pixel_icon-shield","style":":root{--wpr-bg-e1a097a3-114d-4980-9830-4b836919529d: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/plus-shield.png');}","hash":"e1a097a3-114d-4980-9830-4b836919529d"},{"selector":".vc_pixel_icon-video","style":":root{--wpr-bg-4f6d3fac-3da5-42bf-8ae3-f82888ced76f: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/icons\/video.png');}","hash":"4f6d3fac-3da5-42bf-8ae3-f82888ced76f"},{"selector":".wpb_accordion .wpb_accordion_wrapper .ui-state-active .ui-icon,.wpb_accordion .wpb_accordion_wrapper .ui-state-default .ui-icon","style":":root{--wpr-bg-81fe636f-71ca-451e-98f3-6a4c79282667: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/toggle_open.png');}","hash":"81fe636f-71ca-451e-98f3-6a4c79282667"},{"selector":".wpb_accordion .wpb_accordion_wrapper .ui-state-active .ui-icon","style":":root{--wpr-bg-68a5e79c-0007-4965-8e7a-7411a26b99fe: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/toggle_close.png');}","hash":"68a5e79c-0007-4965-8e7a-7411a26b99fe"},{"selector":".wpb_flickr_widget p.flickr_stream_wrap a","style":":root{--wpr-bg-1c285359-9259-4f08-8b12-7b49c1063133: url('https:\/\/regulatedunitedeurope.com\/wp-content\/themes\/hostcluster\/css\/..\/images\/flickr.png');}","hash":"1c285359-9259-4f08-8b12-7b49c1063133"},{"selector":"#heateor_sss_mastodon_popup_bg,#heateor_sss_popup_bg","style":":root{--wpr-bg-398bdaba-19c5-4182-b13f-e8df1b85ac06: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/sassy-social-share\/public\/css\/..\/..\/images\/transparent_bg.png');}","hash":"398bdaba-19c5-4182-b13f-e8df1b85ac06"},{"selector":".lb-cancel","style":":root{--wpr-bg-8b2fbb49-2671-4cb2-9765-0f7c8a7652b0: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/lib\/lightbox2\/dist\/css\/..\/images\/loading.gif');}","hash":"8b2fbb49-2671-4cb2-9765-0f7c8a7652b0"},{"selector":".lb-nav a.lb-prev","style":":root{--wpr-bg-e66d86f3-5b58-4e7a-b5d9-e92cc50728ec: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/lib\/lightbox2\/dist\/css\/..\/images\/prev.png');}","hash":"e66d86f3-5b58-4e7a-b5d9-e92cc50728ec"},{"selector":".lb-nav a.lb-next","style":":root{--wpr-bg-da375166-2ae3-4b40-9306-219b0b13e1f4: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/lib\/lightbox2\/dist\/css\/..\/images\/next.png');}","hash":"da375166-2ae3-4b40-9306-219b0b13e1f4"},{"selector":".lb-data .lb-close","style":":root{--wpr-bg-90cee172-4286-4c1b-9e55-2e676434cff5: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/lib\/lightbox2\/dist\/css\/..\/images\/close.png');}","hash":"90cee172-4286-4c1b-9e55-2e676434cff5"},{"selector":".owl-carousel .owl-video-play-icon","style":":root{--wpr-bg-837422e2-bda7-4081-801a-f2c060ba47f1: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/js_composer\/assets\/lib\/owl-carousel2-dist\/assets\/owl.video.play.png');}","hash":"837422e2-bda7-4081-801a-f2c060ba47f1"},{"selector":"rs-dotted.twoxtwo","style":":root{--wpr-bg-0fdad8ad-1a07-4583-a0b9-923e326cde0e: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/revslider\/public\/assets\/css\/..\/assets\/gridtile.png');}","hash":"0fdad8ad-1a07-4583-a0b9-923e326cde0e"},{"selector":"rs-dotted.twoxtwowhite","style":":root{--wpr-bg-a649f4ff-8e34-43db-8169-d65940ff1355: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/revslider\/public\/assets\/css\/..\/assets\/gridtile_white.png');}","hash":"a649f4ff-8e34-43db-8169-d65940ff1355"},{"selector":"rs-dotted.threexthree","style":":root{--wpr-bg-11c6714f-6c9b-4c81-8813-81bce742acc1: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/revslider\/public\/assets\/css\/..\/assets\/gridtile_3x3.png');}","hash":"11c6714f-6c9b-4c81-8813-81bce742acc1"},{"selector":"rs-dotted.threexthreewhite","style":":root{--wpr-bg-fc05aa7d-d2bf-40c4-87dc-581c51238a1c: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/revslider\/public\/assets\/css\/..\/assets\/gridtile_3x3_white.png');}","hash":"fc05aa7d-d2bf-40c4-87dc-581c51238a1c"},{"selector":".rs-layer.slidelink a div","style":":root{--wpr-bg-0a196b94-139e-4d49-97d8-a560209fc023: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/revslider\/public\/assets\/css\/..\/assets\/coloredbg.png');}","hash":"0a196b94-139e-4d49-97d8-a560209fc023"},{"selector":".rs-layer.slidelink a span","style":":root{--wpr-bg-a134bad6-30bc-4948-a1f5-241a8ff50f76: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/revslider\/public\/assets\/css\/..\/assets\/coloredbg.png');}","hash":"a134bad6-30bc-4948-a1f5-241a8ff50f76"},{"selector":"rs-loader.spinner0","style":":root{--wpr-bg-9623d225-3a7a-450f-a304-6c86ae635d3b: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/revslider\/public\/assets\/css\/..\/assets\/loader.gif');}","hash":"9623d225-3a7a-450f-a304-6c86ae635d3b"},{"selector":"rs-loader.spinner5","style":":root{--wpr-bg-d14eb561-2385-423b-ae31-e8b5a6e92cbf: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/revslider\/public\/assets\/css\/..\/assets\/loader.gif');}","hash":"d14eb561-2385-423b-ae31-e8b5a6e92cbf"},{"selector":".rll-youtube-player .play","style":":root{--wpr-bg-9100bc88-19f6-4c2f-86c4-02fdc246b4e2: url('https:\/\/regulatedunitedeurope.com\/wp-content\/plugins\/wp-rocket\/assets\/img\/youtube.png');}","hash":"9100bc88-19f6-4c2f-86c4-02fdc246b4e2"},{"selector":"#menu-item-21481","style":":root{--wpr-bg-60bb7a90-0ca6-4a93-8825-de08b3be975b: url('https:\/\/regulatedunitedeurope.com\/wp-content\/uploads\/2022\/05\/envelope2.png');}","hash":"60bb7a90-0ca6-4a93-8825-de08b3be975b"}];</script></head>

<body class="home page-template-default page page-id-2877 nav-submenu-style2 widgets_v1  added-redux-framework        is_nav_sticky header1   wpb-js-composer js-comp-ver-6.9.0 vc_responsive">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-YYYYYYX"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

            

        <style>
	.search-submit3{
				float: right;
				width: 10%;
				border: 0px;
				background: none;
				display: block;
	}
</style>
	
	
            <!-- Fixed Search Form -->
        <div class="fixed-search-overlay">
            <!-- Close Sidebar Menu + Close Overlay -->
            <i class="icon-close icons"></i>
            <!-- INSIDE SEARCH OVERLAY -->
            <div class="fixed-search-inside">
                <div class="modeltheme-search">
                    <form id="top-search-form-2" method="GET" action="https://regulatedunitedeurope.com/">
                        <input style="float: left; width: 85%; color: #404040;" class="search-input" placeholder="Enter search term..." type="search" value="" name="s" id="search" />
                        <input type="hidden" name="post_type" value="post,page" />
						<button style="border: 0px; display: none;" type="submit" id="submit-2"></button>
						<a class="search-submit3" href="javascript:void(0);" onclick="document.getElementById('submit-2').click(); return false;"><img width="320" height="320" alt="search" style="100%; position: relative;" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20320%20320'%3E%3C/svg%3E" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/./search-icon-png2.png"><noscript><img width="320" height="320" alt="search" style="100%; position: relative;" src="https://regulatedunitedeurope.com/wp-content/uploads/./search-icon-png2.png"></noscript></a>

                    </form>
                </div>
            </div>
        </div>
    


        

    <!-- PAGE #page -->
    <div id="page" class="hfeed site">
        <header class="header1">

    <div class="top-header">
    <div class="container">
      <div class="row">
    	    <div class="col-md-6 col-sm-6">
    	    	<div class="header-infos">
    			        				</div>   
    		  </div>
          <div class="navbar-collapse actions collapse col-md-6 col-sm-6">
              <div class="header-infos">
                 
              </div>                     
          </div>
	      <!-- NAV ACTIONS -->
      </div>
    </div>
   </div>
  

  <!-- BOTTOM BAR -->
  <nav class="navbar navbar-default logo-infos" id="modeltheme-main-head">
    <div class="container">
      <div class="row">

          <!-- LOGO -->
          <div class="navbar-header col-md-3">
            <!-- NAVIGATION BURGER MENU -->
            <button aria-label="Menu" type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

                                          <span class="logo">
                    <a href="https://regulatedunitedeurope.com/">
                        <img width="70" height="70" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2070%2070'%3E%3C/svg%3E" alt="RegulatedUnitedEurope" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/logo3-1.webp" /><noscript><img width="70" height="70" src="https://regulatedunitedeurope.com/wp-content/uploads/logo3-1.webp" alt="RegulatedUnitedEurope" /></noscript>
                    </a>
                </span>
                                    </div>

          <!-- NAV MENU -->
          <div id="navbar" class="navbar-collapse collapse col-md-9">
            <ul class="menu nav navbar-nav pull-right nav-effect nav-menu">
              <li id="menu-item-13861" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-13861"><a href="https://regulatedunitedeurope.com/jurisdictions/">Jurisdictions</a></li>
<li id="menu-item-3521" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-3521"><a href="https://regulatedunitedeurope.com/crypto-licence/">Crypto license</a>
<ul class="sub-menu">
	<li id="menu-item-11070" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-11070"><a href="https://regulatedunitedeurope.com/crypto-licence/">Crypto license</a></li>
	<li id="menu-item-4021" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4021"><a href="https://regulatedunitedeurope.com/crypto-regulations/">Crypto regulation</a></li>
</ul>
</li>
<li id="menu-item-9483" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9483"><a href="/gambling-license/">Gambling license</a>
<ul class="sub-menu">
	<li id="menu-item-16856" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16856"><a href="https://regulatedunitedeurope.com/gambling-license/">Gambling license</a></li>
	<li id="menu-item-16853" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16853"><a href="https://regulatedunitedeurope.com/gambling-regulations-in-europe-2024/">Gambling regulations</a></li>
</ul>
</li>
<li id="menu-item-9648" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9648"><a href="https://regulatedunitedeurope.com/forex-license/">Forex License</a>
<ul class="sub-menu">
	<li id="menu-item-16858" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16858"><a href="https://regulatedunitedeurope.com/forex-license/">Forex license</a></li>
	<li id="menu-item-16855" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16855"><a href="https://regulatedunitedeurope.com/forex-regulations/">European Forex License</a></li>
</ul>
</li>
<li id="menu-item-11075" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-11075"><a href="https://regulatedunitedeurope.com/emi-psp-license/">EMI/PSP LICENSE</a>
<ul class="sub-menu">
	<li id="menu-item-16857" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-16857"><a href="https://regulatedunitedeurope.com/emi-psp-license/">EMI/PSP license</a></li>
	<li id="menu-item-16854" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-16854"><a href="https://regulatedunitedeurope.com/emi-regulations-in-europe/">EMI regulations</a></li>
</ul>
</li>
<li id="menu-item-14992" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-14992"><a href="https://regulatedunitedeurope.com/bank-account-opening/">Banks</a></li>
<li id="menu-item-4183" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4183"><a href="https://regulatedunitedeurope.com/our-team/">Our team</a></li>
<li id="menu-item-3549" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-3549"><a href="https://regulatedunitedeurope.com/contact-us/">Contact us</a></li>
<li id="menu-item-4400" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4400"><a title="email" href="mailto:info@regulatedunitedeurope.com">Email</a></li>
                
                              <!-- SEARCH ICON -->
              <li>
				  <a  href="#" class="mt-search-icon">
                <i class="fa fa-search" aria-hidden="true"></i>
              </a>	
</li>
                        </ul>
          </div>
      </div>
    </div>
  </nav>
</header>

   

    <!-- Page content -->
    <div id="primary" class="no-padding content-area no-sidebar">
        <div class="container">
            <div class="row">
                <main id="main" class="col-md-12 site-main main-content">


                    
                        
<article id="post-2877" class="post-2877 page type-page status-publish hentry">

	<div class="entry-content">
	<style>nav {background: inherit;}</style>
						<div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid homevideo videocontainer vc_custom_1671188895422 vc_row-has-fill vc_row-no-padding"><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-has-fill"><div class="vc_column-inner vc_custom_1651131656781"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html" >
		<div class="wpb_wrapper">
			<div id="videowrap">
    <video id="bgvid" poster="https://regulatedunitedeurope.com/wp-content/uploads/2022/07/1sub-0.jpg" autoplay="autoplay" loop="loop" muted="" width="100%" height="150">
        <source src="https://regulatedunitedeurope.com/wp-content/uploads/2022/07/1sub.webm" type="video/webm" />
        <source src="https://regulatedunitedeurope.com/wp-content/uploads/2023/04/1sub.mp4" type="video/mp4" />
    </video>
    
            
</div>
		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div id="about" data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1656484636778 vc_row-has-fill vc_column-gap-30"><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-has-fill"><div class="vc_column-inner vc_custom_1656327526880"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1656327508478" >
		<div class="wpb_wrapper">
			<h2  class="decorated"><span style="color:#936502; font-family:'Alice';font-weight:400 !important">About us</span></h2>
		</div>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1656483237231 vc_row-has-fill vc_column-gap-10"><div class="wpb_column vc_column_container vc_col-sm-8 vc_col-has-fill"><div class="vc_column-inner vc_custom_1673944418330"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element  vc_custom_1656326947210" >
		<div class="wpb_wrapper">
			<p><strong class="golden">Regulated United Europe</strong> is constantly striving to improve its performance and the level of services provided, based on constant feedback from clients and capturing market needs for legal services in various European countries. The response time to customer inquiries/emails is also kept to a minimum.</p>
<p>In the area of pricing, <strong class="golden">Regulated United Europe</strong> is also trying to adapt to the needs of clients by providing a fixed price for most of the legal services provided, despite the fact that in most European countries hourly legal fees are mainly applied.</p>
<p>We provide legal advice and daily support to our clients at every stage of their project implementation. Complex solutions are developed by a team of experienced lawyers individually for each client.</p>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div  class="wpb_single_image wpb_content_element vc_align_center  vc_custom_1656483293953">
		
		<figure class="wpb_wrapper vc_figure">
			<div class="vc_single_image-wrapper   vc_box_border_grey"><img decoding="async" width="640" height="640" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20640%20640'%3E%3C/svg%3E" class="vc_single_image-img attachment-large" alt="RegulatedUnitedEurope cryptocurrency licence logo" title="rue-cryptocurrency-licence-logo" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads//2022/06/rue-cryptocurrency-licence-logo.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/rue-cryptocurrency-licence-logo.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/rue-cryptocurrency-licence-logo.svg 1024w" data-lazy-sizes="(max-width: 640px) 100vw, 640px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/rue-cryptocurrency-licence-logo.svg" /><noscript><img decoding="async" width="640" height="640" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/rue-cryptocurrency-licence-logo.svg" class="vc_single_image-img attachment-large" alt="RegulatedUnitedEurope cryptocurrency licence logo" title="rue-cryptocurrency-licence-logo" srcset="https://regulatedunitedeurope.com/wp-content/uploads//2022/06/rue-cryptocurrency-licence-logo.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/rue-cryptocurrency-licence-logo.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/rue-cryptocurrency-licence-logo.svg 1024w" sizes="(max-width: 640px) 100vw, 640px" /></noscript></div>
		</figure>
	</div>
</div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1706511128851 vc_row-has-fill vc_column-gap-30"><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-has-fill"><div class="vc_column-inner vc_custom_1656327526880"><div class="wpb_wrapper">
	<div class="wpb_video_widget wpb_content_element vc_clearfix   vc_custom_1706511113402 vc_video-aspect-ratio-169 vc_video-el-width-90 vc_video-align-center" >
		<div class="wpb_wrapper">
			
			<div class="wpb_video_wrapper"><div class="rll-youtube-player" data-src="https://www.youtube.com/embed/vVHcVqu8yy8" data-id="vVHcVqu8yy8" data-query="feature=oembed" data-alt="Regulated United Europe team"></div><noscript><iframe title="Regulated United Europe team" width="640" height="360" src="https://www.youtube.com/embed/vVHcVqu8yy8?feature=oembed" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></noscript></div>
		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1709275641206"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1709275357053" >
		<div class="wpb_wrapper">
			<h2  class="decorated"><span style="color:#936502; font-family:'Alice';font-weight:400 !important">Our Values</span></h2>
		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div class="values">Innovation</div>
<p>Europe has emerged as a hub for pioneering business ideas, thanks to its digital environment and openness to financial innovation. We are committed to expanding traditional corporate boundaries and offering new startup opportunities to clients worldwide. Our aim is to add value to international business by leveraging the boundless possibilities of the European Union during its technological ascent and facilitating seamless business decisions just a click away.</p>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div class="values">Teamwork</div>
<p>At <strong class="golden">Regulated United Europe</strong>, we recognize that the effectiveness of our work hinges on the collective efforts of each team member. Our vision centres on mutual support and daily collaboration, driven by engagement with clients, partners, and colleagues. We integrate corporate values into every aspect of our operations, emphasizing the importance of setting realistic goals, assuming corporate responsibility for team decisions, and seeing projects through to completion.</p>

		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1709275772824"><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div class="values">Individual approach</div>
<p>We take pride in serving clients with diverse ethnic backgrounds and view our mission as fostering their integration into the forefront of European business. Adapting swiftly to industry fluctuations and addressing various challenges are integral to our approach. Moreover, we uphold stringent professional ethics, believing them to be essential for fruitful cooperation. Our services are tailored to meet the specific needs of international clients and can be further customized upon individual request.</p>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-6"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div class="values">Dynamics</div>
<p>In an ever-evolving global landscape, <strong class="golden">Regulated United Europe</strong> remains agile and responsive. We prioritize efficiency to honour our clients&#8217; time, delivering corporate, accounting, and legal services promptly. Amidst volatility, a firm&#8217;s agility defines its success, and we are committed to providing quality service within the shortest possible time frame. Thus, we endeavour to address all client inquiries within hours.</p>

		</div>
	</div>
</div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" class="vc_row wpb_row vc_row-fluid vc_custom_1673944460448 vc_row-has-fill vc_column-gap-30"><style type="text/css" data-type="vc_custom-css">.services-border img{border:0 !important;}
.services-border:hover {background:none !important;}
.services-border img:hover {background:#936502;}
.bordergold {margin-top:0 !important;}

@media (max-width:768px){.navbar-header .col-md-3, .navbar .row{width:100% !important;}}

/*box styles*/
.img-wrap img {border:1px solid #936502;border-radius:50% !important;}

.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}

label {
  display: inline-block;
}


 .radio-div .img-wrap {
  margin-right: 10px;
}
.d-ib {
  display: inline-block;
  vertical-align: middle;
}
 .radio-div h3 {
  font-weight: 600;
  font-size: 22px;
  line-height: 28px;
  color: #000000;
  margin-bottom: 8px;
  transition: all 0.3s ease-in-out;
}
.radio-div span.duration {
  font-weight: 400;
  font-size: 15px;
  line-height: 15px;
  text-align: right;
  color: #936502;
  margin-left: 5px;
  transition: all 0.3s ease-in-out;
}

 .radio-div .price-box {
  margin-top: 25px;
}
.align-items-center {
  align-items: center !important;
}
.justify-content-between {
  justify-content: space-between !important;
}
.d-flex {
  display: flex !important;
}
 .radio-div .price-box h5 {
  font-weight: 400;
  font-size: 15px;
  line-height: 19px;
  color: #936502;
  opacity: 0.8;
  margin-bottom: 4px;
  transition: all 0.3s ease-in-out;
}
.radio-block .radio-div span.duration {
  font-weight: 400;
  font-size: 15px !important;
  line-height: 15px;
  font-family: 'Nunito';
  text-align: right;
  color: #000000;
  margin-left: 5px;
  transition: all 0.3s ease-in-out;
}
 label:hover .radio-div {
  color: #FFFFFF;
  transition: all 0.3s ease-in-out;
}




.radio-box label:hover .radio-div .selected {
  background: #000000;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}
.radio-box label:hover .radio-div .selected span::before {
  color: #FFF;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'Select';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-box input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}


.d-ib .img-wrap img {width:46px; height:46px;}

 label:hover {
  background: #936502;
  transition: all 0.3s ease-in-out;
  color:white;
}

label:hover {
  background: #004CE0;
  transition: all 0.3s ease-in-out;
}

 label {
  height: 100%;
  display: block;
  background: rgba(191, 161, 97, 0.1) !important;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-block input[type="radio"] {
  display: none;
}
.radio-block input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-block label:hover {
  background: #936502 !important;
  color:white !important;
  transition: all 0.3s ease-in-out;
}



.radio-block .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'more';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-block label:hover .radio-div .calendar, .radio-block label:hover .radio-div .check {
  fill: #FFFFFF;
  filter: brightness(0) invert(1);
  transition: all 0.3s ease-in-out;
}

.radio-block label:hover .radio-div h3, .radio-block h3:hover,.renew-cost:hover,  .radio-block label:hover .radio-div .price-box h5, .radio-block label:hover .radio-div .price-box h6, .radio-block label:hover .radio-div span.duration, .radio-block label:hover .radio-div .selected span, .radio-block label:hover .radio-div .renew-cost {
  color: #FFFFFF !important;
  transition: all 0.3s ease-in-out;
}
.total-cost h6 {color:#936502;font-weight:600;}
.total-cost h5 {color:black !important;}
.radio-block label:hover .radio-div .renew-cost {color:white !important; border:1px solid white;border-radius:50px;padding:10px;}
.renew-cost {color:#936502; border:1px solid #936502;border-radius:50px;padding:10px;}
.duration, .title-box {align-content:left; text-align:left;}
.d-ib {
  display: inline-block !important;
  vertical-align: middle;
}
.home .radio-block h3, .duration, .d-ib span{text-align:left !important; align-content:middle;}









/* Стили для подменю второго уровня */
#navbar .sub-menu {
  background: #f5f5f5; /* Фон меню */
  box-shadow: 0 0 10px rgba(37, 37, 37, 0.12);
  text-align: left;
  opacity: 0; /* Скрываем подменю по умолчанию */
  position: absolute;
  width: 250px;
  top: 100%; /* Отображаем подменю под родительским элементом */
  transition: all 250ms ease-in-out;
  visibility: hidden; /* Скрываем подменю по умолчанию */
  padding: 5px;
  z-index: 9999; /* Устанавливаем высокий z-index для подменю */
}

/* Показываем подменю второго уровня при наведении на соответствующий родительский элемент */
#navbar .menu-item:hover > .sub-menu {
  opacity: 1; /* Показываем подменю при наведении */
  visibility: visible;
}

/* Стили для подменю третьего уровня */
#navbar .sub-menu .sub-menu {
  left: 100%; /* Подменю третьего уровня сдвигается вправо от родительского меню */
  top: 0; /* Меню третьего уровня отображается слева от родительского элемента */
  opacity: 0; /* Скрываем подменю по умолчанию */
  visibility: hidden; /* Скрываем подменю по умолчанию */
}

/* Показываем подменю третьего уровня при наведении на соответствующий родительский элемент */
#navbar .sub-menu .menu-item:hover > .sub-menu {
  opacity: 1; /* Показываем подменю третьего уровня при наведении */
  visibility: visible;
}

#navbar .sub-menu li {
  display: block !important;
}
#navbar .sub-menu li {
  position: relative !important;
  float: none !important;
}

.values {font-family: 'Alice',serif;
  color: #936502;
  font-size: 33px !important;
  margin-bottom: 15px;}</style><style type="text/css" data-type="vc_shortcodes-custom-css">.vc_custom_1653471991600{margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1653471997100{margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1653549230114{margin-bottom: 0px !important;padding-bottom: 0px !important;}</style><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-has-fill"><div class="vc_column-inner vc_custom_1656581196986"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1653470757547" >
		<div class="wpb_wrapper">
			<h2  class="decorated"><span style="color:#936502; font-family:'Alice';font-weight:400 !important">Regulated United Europe BLOG</span></h2>
		</div>
	</div>
<div class="vc_row wpb_row vc_row-fluid vc_custom_1653471991600"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1653471997100"><div class="wpb_wrapper">
<div class="vc_grid-container-wrapper vc_clearfix vc_grid-animation-none">
	<div class="vc_grid-container vc_clearfix wpb_content_element vc_basic_grid vc_custom_1653549230114" data-initial-loading-animation="none" data-vc-grid-settings="{&quot;page_id&quot;:2877,&quot;style&quot;:&quot;all&quot;,&quot;action&quot;:&quot;vc_get_vc_grid_data&quot;,&quot;shortcode_id&quot;:&quot;1653549223477-082779ab-e9fe-4&quot;,&quot;tag&quot;:&quot;vc_basic_grid&quot;}" data-vc-request="https://regulatedunitedeurope.com/wp-admin/admin-ajax.php" data-vc-post-id="2877" data-vc-public-nonce="0f96c64eae">
		<style data-type="vc_shortcodes-custom-css">.vc_custom_1712122967127{border-top-width: 1px !important;border-right-width: 1px !important;border-bottom-width: 1px !important;border-left-width: 1px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}</style><div class="vc_grid vc_row vc_grid-gutter-30px vc_pageable-wrapper vc_hook_hover" data-vc-pageable-content="true"><div class="vc_pageable-slide-wrapper vc_clearfix" data-vc-grid-content="true"><div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_grid-item-zone-c-bottom"><div class="vc_grid-item-mini vc_clearfix "><div class="vc_gitem-animated-block" ></div><div class="vc_gitem-zone vc_gitem-zone-c"><div class="vc_gitem-zone-mini"><div class="vc_gitem_row vc_row vc_gitem-row-position-top"><div class="vc_col-sm-12 vc_gitem-col vc_gitem-col-align-">
	<div class="wpb_single_image wpb_content_element services-border vc_custom_1712122967127 vc_align_center">
		<figure class="wpb_wrapper vc_figure">
			<a href="https://regulatedunitedeurope.com/blog/how-to-create-nft-art/" class="vc_gitem-link vc_single_image-wrapper vc_box_circle vc_box_border_grey services-border" title="How to create NFT art?"><img decoding="async" width="300" height="300" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20300'%3E%3C/svg%3E" class="vc_single_image-img attachment-medium" alt="nft 1" title="nft" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads//nft-1.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//nft-1.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//nft-1.svg 1024w" data-lazy-sizes="(max-width: 300px) 100vw, 300px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/nft-1.svg"><noscript><img decoding="async" width="300" height="300" src="https://regulatedunitedeurope.com/wp-content/uploads/nft-1.svg" class="vc_single_image-img attachment-medium" alt="nft 1" title="nft" srcset="https://regulatedunitedeurope.com/wp-content/uploads//nft-1.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//nft-1.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//nft-1.svg 1024w" sizes="(max-width: 300px) 100vw, 300px"></noscript></a>
		</figure>
	</div>
<div class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title" ><h4 style="font-size: 19px;color: #336699;text-align: center;font-family:Alice;font-weight:400;font-style:normal" ><a href="https://regulatedunitedeurope.com/blog/how-to-create-nft-art/" class="vc_gitem-link" title="How to create NFT art?">How to create NFT art?</a></h4></div></div></div></div></div></div><div class="vc_clearfix"></div></div><div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_grid-item-zone-c-bottom"><div class="vc_grid-item-mini vc_clearfix "><div class="vc_gitem-animated-block" ></div><div class="vc_gitem-zone vc_gitem-zone-c"><div class="vc_gitem-zone-mini"><div class="vc_gitem_row vc_row vc_gitem-row-position-top"><div class="vc_col-sm-12 vc_gitem-col vc_gitem-col-align-">
	<div class="wpb_single_image wpb_content_element services-border vc_custom_1712122967127 vc_align_center">
		<figure class="wpb_wrapper vc_figure">
			<a href="https://regulatedunitedeurope.com/blog/what-is-offshore-company/" class="vc_gitem-link vc_single_image-wrapper vc_box_circle vc_box_border_grey services-border" title="What is Offshore Company"><img decoding="async" width="300" height="300" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20300'%3E%3C/svg%3E" class="vc_single_image-img attachment-medium" alt="What is offshore company 2 1" title="What-is-offshore-company-2" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads//What-is-offshore-company-2-1.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//What-is-offshore-company-2-1.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//What-is-offshore-company-2-1.svg 1024w" data-lazy-sizes="(max-width: 300px) 100vw, 300px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/What-is-offshore-company-2-1.svg"><noscript><img decoding="async" width="300" height="300" src="https://regulatedunitedeurope.com/wp-content/uploads/What-is-offshore-company-2-1.svg" class="vc_single_image-img attachment-medium" alt="What is offshore company 2 1" title="What-is-offshore-company-2" srcset="https://regulatedunitedeurope.com/wp-content/uploads//What-is-offshore-company-2-1.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//What-is-offshore-company-2-1.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//What-is-offshore-company-2-1.svg 1024w" sizes="(max-width: 300px) 100vw, 300px"></noscript></a>
		</figure>
	</div>
<div class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title" ><h4 style="font-size: 19px;color: #336699;text-align: center;font-family:Alice;font-weight:400;font-style:normal" ><a href="https://regulatedunitedeurope.com/blog/what-is-offshore-company/" class="vc_gitem-link" title="What is Offshore Company">What is Offshore Company</a></h4></div></div></div></div></div></div><div class="vc_clearfix"></div></div><div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_grid-item-zone-c-bottom"><div class="vc_grid-item-mini vc_clearfix "><div class="vc_gitem-animated-block" ></div><div class="vc_gitem-zone vc_gitem-zone-c"><div class="vc_gitem-zone-mini"><div class="vc_gitem_row vc_row vc_gitem-row-position-top"><div class="vc_col-sm-12 vc_gitem-col vc_gitem-col-align-">
	<div class="wpb_single_image wpb_content_element services-border vc_custom_1712122967127 vc_align_center">
		<figure class="wpb_wrapper vc_figure">
			<a href="https://regulatedunitedeurope.com/blog/vat-in-europe-2024/" class="vc_gitem-link vc_single_image-wrapper vc_box_circle vc_box_border_grey services-border" title="Lowest VAT in Europe"><img decoding="async" width="300" height="300" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20300'%3E%3C/svg%3E" class="vc_single_image-img attachment-medium" alt="Niedrigste Mehrwertsteuer in Europa 2024" title="Niedrigste Mehrwertsteuer in Europa 2024" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads//VAT-in-Europe-2024-1-2.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//VAT-in-Europe-2024-1-2.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//VAT-in-Europe-2024-1-2.svg 1024w" data-lazy-sizes="(max-width: 300px) 100vw, 300px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/VAT-in-Europe-2024-1-2.svg" /><noscript><img decoding="async" width="300" height="300" src="https://regulatedunitedeurope.com/wp-content/uploads/VAT-in-Europe-2024-1-2.svg" class="vc_single_image-img attachment-medium" alt="Niedrigste Mehrwertsteuer in Europa 2024" title="Niedrigste Mehrwertsteuer in Europa 2024" srcset="https://regulatedunitedeurope.com/wp-content/uploads//VAT-in-Europe-2024-1-2.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//VAT-in-Europe-2024-1-2.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//VAT-in-Europe-2024-1-2.svg 1024w" sizes="(max-width: 300px) 100vw, 300px" /></noscript></a>
		</figure>
	</div>
<div class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title" ><h4 style="font-size: 19px;color: #336699;text-align: center;font-family:Alice;font-weight:400;font-style:normal" ><a href="https://regulatedunitedeurope.com/blog/vat-in-europe-2024/" class="vc_gitem-link" title="Lowest VAT in Europe">Lowest VAT in Europe</a></h4></div></div></div></div></div></div><div class="vc_clearfix"></div></div><div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_grid-item-zone-c-bottom"><div class="vc_grid-item-mini vc_clearfix "><div class="vc_gitem-animated-block" ></div><div class="vc_gitem-zone vc_gitem-zone-c"><div class="vc_gitem-zone-mini"><div class="vc_gitem_row vc_row vc_gitem-row-position-top"><div class="vc_col-sm-12 vc_gitem-col vc_gitem-col-align-">
	<div class="wpb_single_image wpb_content_element services-border vc_custom_1712122967127 vc_align_center">
		<figure class="wpb_wrapper vc_figure">
			<a href="https://regulatedunitedeurope.com/blog/taxes-in-europe-by-country-2024/" class="vc_gitem-link vc_single_image-wrapper vc_box_circle vc_box_border_grey services-border" title="Taxes in Europe by country 2024"><img decoding="async" width="300" height="300" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20300%20300'%3E%3C/svg%3E" class="vc_single_image-img attachment-medium" alt="Steuern in Europa nach Ländern 2024" title="Steuern in Europa nach Ländern 2024" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads//Taxes-in-Europe-by-country-2024-2.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//Taxes-in-Europe-by-country-2024-2.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//Taxes-in-Europe-by-country-2024-2.svg 1024w" data-lazy-sizes="(max-width: 300px) 100vw, 300px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/Taxes-in-Europe-by-country-2024-2.svg" /><noscript><img decoding="async" width="300" height="300" src="https://regulatedunitedeurope.com/wp-content/uploads/Taxes-in-Europe-by-country-2024-2.svg" class="vc_single_image-img attachment-medium" alt="Steuern in Europa nach Ländern 2024" title="Steuern in Europa nach Ländern 2024" srcset="https://regulatedunitedeurope.com/wp-content/uploads//Taxes-in-Europe-by-country-2024-2.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//Taxes-in-Europe-by-country-2024-2.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//Taxes-in-Europe-by-country-2024-2.svg 1024w" sizes="(max-width: 300px) 100vw, 300px" /></noscript></a>
		</figure>
	</div>
<div class="vc_custom_heading vc_gitem-post-data vc_gitem-post-data-source-post_title" ><h4 style="font-size: 19px;color: #336699;text-align: center;font-family:Alice;font-weight:400;font-style:normal" ><a href="https://regulatedunitedeurope.com/blog/taxes-in-europe-by-country-2024/" class="vc_gitem-link" title="Taxes in Europe by country 2024">Taxes in Europe by country 2024</a></h4></div></div></div></div></div></div><div class="vc_clearfix"></div></div></div></div>
	</div>
</div></div></div></div></div>
<style type="text/css" data-type="rcb-_wpb_shortcodes_custom_css-5081">.vc_custom_1653471991600{margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1653471997100{margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1653549230114{margin-bottom: 0px !important;padding-bottom: 0px !important;}</style>
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>Fintech lawyers and financial advisors from <strong class="golden">RUE (Regulated United Europe)</strong> have created a blog where they publish the latest changes in the legislation of European countries in the field of cryptocurrency and VASP (Virtual Asset Service Provider) for the convenience and information of everyone who is interested in the cryptocurrency legislation of Europe. We base our articles on topics that are important for today&#8217;s entrepreneurs working in the field of cryptocurrency, fintech projects, blockchain and IT-related businesses. If you cannot find the information you are interested in in our blog, please contact us in a convenient way for you.</p>

		</div>
	</div>
<div class="vc_btn3-container  ubtn-hover vc_btn3-center vc_custom_1713941598247" ><a onmouseleave="this.style.borderColor=&#039;#936502&#039;; this.style.backgroundColor=&#039;transparent&#039;; this.style.color=&#039;#936502&#039;" onmouseenter="this.style.borderColor=&#039;#936502&#039;; this.style.backgroundColor=&#039;#936502&#039;; this.style.color=&#039;#ffffff&#039;;" style="border-color:#936502; color:#936502;" class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-rounded vc_btn3-style-outline-custom" href="https://regulatedunitedeurope.com/blog/" title="">Read the blog</a></div></div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1656581209025"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1656573693528" >
		<div class="wpb_wrapper">
			<h2  class="decorated"><span style="color:#936502; font-family:'Alice';font-weight:400 !important">Regulated United Europe Partners</span></h2>
		</div>
	</div>

	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<p>The employees of <strong class="golden">Regulated United Europe</strong> interact with European regulators and government departments on a daily basis and are ready to represent your company in the most appropriate country. We highly value partnership and long-term cooperation in business and try to expand our partner network every year.</p>

		</div>
	</div>

	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div id='logo-carousel-free-5910' class="logo-carousel-free logo-carousel-free-area sp-lc-container"><div id="" class="sp-logo-carousel-preloader"><img width="51" height="51" decoding="async" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2051%2051'%3E%3C/svg%3E" alt="loader-image" title="RegulatedUnitedEurope /en 11" data-lazy-src=""><noscript><img width="51" height="51" decoding="async" src="" alt="loader-image" title="RegulatedUnitedEurope /en 11"></noscript></div><div id="sp-logo-carousel-id-5910" class="swiper-container sp-logo-carousel lcp-preloader" dir="ltr"  data-carousel='{ "speed":9000,"spaceBetween": 25, "autoplay": true, "infinite":true, "autoplay_speed": 1, "stop_onHover": true, "pagination": false, "navigation": false, "MobileNav": false, "MobilePagi": false, "simulateTouch": true,"freeMode": false, "allowTouchMove": true, "slidesPerView": { "lg_desktop": 5, "desktop": 4, "tablet": 3, "mobile": 1, "mobile_landscape": 2 } }'><div class="swiper-wrapper"><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/RAB_logo.png" title="RegulatedUnitedEurope /en 12" alt="Estonia" width="256" height="74" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/FINANCIAL-CRIME-INVESTIGATION-SERVICE_logo.png" title="RegulatedUnitedEurope /en 13" alt="FINANCIAL CRIME INVESTIGATION SERVICE UNDER THE MINISTRY OF THE INTERIOR" width="85" height="94" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/mfsa-logo.png" title="RegulatedUnitedEurope /en 14" alt="mfsa" width="205" height="55" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/FINMA-Logo.png" title="RegulatedUnitedEurope /en 15" alt="FINMA" width="412" height="94" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/logo-gfsc.png" title="RegulatedUnitedEurope /en 16" alt="Gibraltar Financial Services Commission" width="390" height="50" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/logo.webp" title="RegulatedUnitedEurope /en 17" alt="central bank ireland" width="288" height="126" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/fca-logo.png" title="RegulatedUnitedEurope /en 18" alt="fca" width="320" height="101" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/logotype.jpg" title="RegulatedUnitedEurope /en 19" alt="Cyprus" width="275" height="100" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/khldes2wbh-bplogo-pt.png" title="RegulatedUnitedEurope /en 20" alt="Portugal" width="272" height="60" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/LOGO-2RA_RGB.png" title="RegulatedUnitedEurope /en 21" alt="CNB" width="148" height="57" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/logo-en.png" title="RegulatedUnitedEurope /en 22" alt="Slovak" width="282" height="69" class="sp-lc-image skip-lazy"></div></div><div class="swiper-slide"><div class="sp-lc-logo"><img decoding="async" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/Poland.png" title="RegulatedUnitedEurope /en 23" alt="Poland" width="108" height="126" class="sp-lc-image skip-lazy"></div></div></div></div></div>

		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><style type="text/css" data-type="vc_custom-css">.services-border img{border:0 !important;}
.services-border:hover {background:none !important;}
.services-border img:hover {background:#936502;}
.bordergold {margin-top:0 !important;}

@media (max-width:768px){.navbar-header .col-md-3, .navbar .row{width:100% !important;}}

/*box styles*/
.img-wrap img {border:1px solid #936502;border-radius:50% !important;}

.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}

label {
  display: inline-block;
}


 .radio-div .img-wrap {
  margin-right: 10px;
}
.d-ib {
  display: inline-block;
  vertical-align: middle;
}
 .radio-div h3 {
  font-weight: 600;
  font-size: 22px;
  line-height: 28px;
  color: #000000;
  margin-bottom: 8px;
  transition: all 0.3s ease-in-out;
}
.radio-div span.duration {
  font-weight: 400;
  font-size: 15px;
  line-height: 15px;
  text-align: right;
  color: #936502;
  margin-left: 5px;
  transition: all 0.3s ease-in-out;
}

 .radio-div .price-box {
  margin-top: 25px;
}
.align-items-center {
  align-items: center !important;
}
.justify-content-between {
  justify-content: space-between !important;
}
.d-flex {
  display: flex !important;
}
 .radio-div .price-box h5 {
  font-weight: 400;
  font-size: 15px;
  line-height: 19px;
  color: #936502;
  opacity: 0.8;
  margin-bottom: 4px;
  transition: all 0.3s ease-in-out;
}
.radio-block .radio-div span.duration {
  font-weight: 400;
  font-size: 15px !important;
  line-height: 15px;
  font-family: 'Nunito';
  text-align: right;
  color: #000000;
  margin-left: 5px;
  transition: all 0.3s ease-in-out;
}
 label:hover .radio-div {
  color: #FFFFFF;
  transition: all 0.3s ease-in-out;
}




.radio-box label:hover .radio-div .selected {
  background: #000000;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}
.radio-box label:hover .radio-div .selected span::before {
  color: #FFF;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'Select';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-box input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}


.d-ib .img-wrap img {width:46px; height:46px;}

 label:hover {
  background: #936502;
  transition: all 0.3s ease-in-out;
  color:white;
}

label:hover {
  background: #004CE0;
  transition: all 0.3s ease-in-out;
}

 label {
  height: 100%;
  display: block;
  background: rgba(191, 161, 97, 0.1) !important;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-block input[type="radio"] {
  display: none;
}
.radio-block input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-block label:hover {
  background: #936502 !important;
  color:white !important;
  transition: all 0.3s ease-in-out;
}



.radio-block .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'more';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-block label:hover .radio-div .calendar, .radio-block label:hover .radio-div .check {
  fill: #FFFFFF;
  filter: brightness(0) invert(1);
  transition: all 0.3s ease-in-out;
}

.radio-block label:hover .radio-div h3, .radio-block h3:hover,.renew-cost:hover,  .radio-block label:hover .radio-div .price-box h5, .radio-block label:hover .radio-div .price-box h6, .radio-block label:hover .radio-div span.duration, .radio-block label:hover .radio-div .selected span, .radio-block label:hover .radio-div .renew-cost {
  color: #FFFFFF !important;
  transition: all 0.3s ease-in-out;
}
.total-cost h6 {color:#936502;font-weight:600;}
.total-cost h5 {color:black !important;}
.radio-block label:hover .radio-div .renew-cost {color:white !important; border:1px solid white;border-radius:50px;padding:10px;}
.renew-cost {color:#936502; border:1px solid #936502;border-radius:50px;padding:10px;}
.duration, .title-box {align-content:left; text-align:left;}
.d-ib {
  display: inline-block !important;
  vertical-align: middle;
}
.home .radio-block h3, .duration, .d-ib span{text-align:left !important; align-content:middle;}









/* Стили для подменю второго уровня */
#navbar .sub-menu {
  background: #f5f5f5; /* Фон меню */
  box-shadow: 0 0 10px rgba(37, 37, 37, 0.12);
  text-align: left;
  opacity: 0; /* Скрываем подменю по умолчанию */
  position: absolute;
  width: 250px;
  top: 100%; /* Отображаем подменю под родительским элементом */
  transition: all 250ms ease-in-out;
  visibility: hidden; /* Скрываем подменю по умолчанию */
  padding: 5px;
  z-index: 9999; /* Устанавливаем высокий z-index для подменю */
}

/* Показываем подменю второго уровня при наведении на соответствующий родительский элемент */
#navbar .menu-item:hover > .sub-menu {
  opacity: 1; /* Показываем подменю при наведении */
  visibility: visible;
}

/* Стили для подменю третьего уровня */
#navbar .sub-menu .sub-menu {
  left: 100%; /* Подменю третьего уровня сдвигается вправо от родительского меню */
  top: 0; /* Меню третьего уровня отображается слева от родительского элемента */
  opacity: 0; /* Скрываем подменю по умолчанию */
  visibility: hidden; /* Скрываем подменю по умолчанию */
}

/* Показываем подменю третьего уровня при наведении на соответствующий родительский элемент */
#navbar .sub-menu .menu-item:hover > .sub-menu {
  opacity: 1; /* Показываем подменю третьего уровня при наведении */
  visibility: visible;
}

#navbar .sub-menu li {
  display: block !important;
}
#navbar .sub-menu li {
  position: relative !important;
  float: none !important;
}

.values {font-family: 'Alice',serif;
  color: #936502;
  font-size: 33px !important;
  margin-bottom: 15px;}</style><style type="text/css" data-type="vc_shortcodes-custom-css">.vc_custom_1710398858108{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706299564500{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706300570716{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706300570716{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706300570716{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706300570716{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1705048853015{margin-top: 20px !important;}.vc_custom_1694514838501{margin-top: 40px !important;margin-bottom: 0px !important;}.vc_custom_1669966024069{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1705042534782{margin-top: 20px !important;margin-bottom: 0px !important;border-top-width: 4px !important;border-bottom-width: 0px !important;padding-right: 0px !important;padding-bottom: 20px !important;padding-left: 0px !important;background-color: #1a1919 !important;border-top-color: #936502 !important;border-top-style: solid !important;border-bottom-color: #936502 !important;border-bottom-style: solid !important;}.vc_custom_1705042545472{margin-bottom: 0px !important;border-top-width: 1px !important;border-bottom-width: 0px !important;padding-right: 0px !important;padding-bottom: 20px !important;padding-left: 0px !important;background-color: #1a1919 !important;border-top-color: #936502 !important;border-top-style: solid !important;border-bottom-color: #936502 !important;border-bottom-style: solid !important;}.vc_custom_1706299609686{margin-top: 20px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 20px !important;padding-left: 0px !important;}.vc_custom_1706299609686{margin-top: 20px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 20px !important;padding-left: 0px !important;}.vc_custom_1706273403015{margin-top: 0px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;}.vc_custom_1706300637379{margin-top: 0px !important;margin-right: 0px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1710415496436{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 20px !important;padding-bottom: 0px !important;padding-left: 20px !important;}.vc_custom_1706300637379{margin-top: 0px !important;margin-right: 0px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1710415517602{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 20px !important;padding-bottom: 0px !important;padding-left: 20px !important;}.vc_custom_1706300637379{margin-top: 0px !important;margin-right: 0px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1715928496926{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 20px !important;padding-bottom: 0px !important;padding-left: 20px !important;}.vc_custom_1706300637379{margin-top: 0px !important;margin-right: 0px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1710415542371{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 20px !important;padding-bottom: 0px !important;padding-left: 20px !important;}.vc_custom_1669967156586{margin-right: 0px !important;margin-left: 0px !important;}.vc_custom_1669970601511{margin-top: 0px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;}.vc_custom_1669967156586{margin-right: 0px !important;margin-left: 0px !important;}.vc_custom_1669966066689{margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1669966118603{margin-top: 0px !important;margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1651133499182{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1698905600328{margin-bottom: 0px !important;border-bottom-width: 0px !important;padding-bottom: 0px !important;}.vc_custom_1698905616897{margin-top: 20px !important;margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1693902566495{margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1698905600328{margin-bottom: 0px !important;border-bottom-width: 0px !important;padding-bottom: 0px !important;}.vc_custom_1698905616897{margin-top: 20px !important;margin-bottom: 0px !important;padding-bottom: 0px !important;}</style><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner"><div class="wpb_wrapper"><div class="vc_row wpb_row vc_row-fluid country vc_custom_1710398858108 vc_row-o-content-middle vc_row-flex"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1706299609686"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element  country" >
		<div class="wpb_wrapper">
			<p>
<br />
<div><h2>Related pages</h2><ul><li><a href="https://regulatedunitedeurope.com/crypto-licence/">Crypto license</a></li><li><a href="https://regulatedunitedeurope.com/crypto-licence/lithuania/">Lithuania crypto license</a></li><li><a href="https://regulatedunitedeurope.com/crypto-licence/czech-republic/">Crypto license in Czech Republic</a></li><li><a href="https://regulatedunitedeurope.com/accounting/czech-republic/annual-report/">Annual Report in Czech Republic</a></li><li><a href="https://regulatedunitedeurope.com/accounting/estonia/annual-report/">Annual report for an Estonian company</a></li><li><a href="https://regulatedunitedeurope.com/legal-services/hungary/">Legal Services in Hungary</a></li><li><a href="https://regulatedunitedeurope.com/accounting/hungary/">Accounting Services in Hungary</a></li></ul></div>

		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1706299564500 vc_row-o-content-middle vc_row-flex"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1706299609686"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1706273403015" >
		<div class="wpb_wrapper">
			<h2  class="decorated"><span style="color:#936502; font-family:'Alice';font-weight:400 !important">RUE customer support team</span></h2>

		</div>
	</div>

	<div class="wpb_raw_code wpb_raw_js" >
		<div class="wpb_wrapper">
			<script type="rocketlazyloadscript" data-rocket-src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script type="rocketlazyloadscript">
  jQuery(document).ready(function($) {
    $('.persona1').on('click', function() {
      window.location.href = 'mailto:milana.s@regulatedunitedeurope.com';
    });

    $('.persona2').on('click', function() {
      window.location.href = 'mailto:sheyla.s@regulatedunitedeurope.com';
    });

    $('.persona3').on('click', function() {
      window.location.href = 'mailto:diana.p@regulatedunitedeurope.com';
    });

    $('.persona4').on('click', function() {
      window.location.href = 'mailto:polina.m@regulatedunitedeurope.com';
    });
  });
</script>

		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1706300570716 vc_row-o-content-middle vc_row-flex"><div class="persona wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1706300637379"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1710415496436" >
		<div class="wpb_wrapper">
			<div class="vc_row wpb_row vc_row-fluid vc_custom_1706272342481 vc_row-has-fill vc_row-o-content-middle vc_row-flex persona1">
    <div class="persona wpb_column vc_column_container vc_col-sm-5 clickable-persona">
        <div class="vc_column-inner vc_custom_1706269383762">
            <div class="wpb_wrapper">
                <div class="wpb_single_image wpb_content_element vc_align_left">
                    <figure class="wpb_wrapper vc_figure">

                            <img decoding="async" width="640" height="426" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20640%20426'%3E%3C/svg%3E" class="vc_single_image-img attachment-large" alt="Milana" title="Milana picture" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-1024x681.jpg 1024w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-300x200.jpg 300w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-768x511.jpg 768w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-1536x1022.jpg 1536w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-2048x1362.jpg 2048w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-625x415.jpg 625w" data-lazy-sizes="(max-width: 640px) 100vw, 640px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/./Milana-picture-1024x681.jpg"><noscript><img loading="lazy" decoding="async" width="640" height="426" src="https://regulatedunitedeurope.com/wp-content/uploads/./Milana-picture-1024x681.jpg" class="vc_single_image-img attachment-large" alt="Milana" title="Milana picture" srcset="https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-1024x681.jpg 1024w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-300x200.jpg 300w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-768x511.jpg 768w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-1536x1022.jpg 1536w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-2048x1362.jpg 2048w, https://regulatedunitedeurope.com/wp-content/uploads/Milana-picture-625x415.jpg 625w" sizes="(max-width: 640px) 100vw, 640px"></noscript>

                    </figure>
                </div>
            </div>
        </div>
    </div>
    <div class="info wpb_column vc_column_container vc_col-sm-7">
        <div class="vc_column-inner vc_custom_1706272249493">
            <div class="wpb_wrapper">
                <div class="wpb_text_column wpb_content_element vc_custom_1706272659347">
                    <div class="wpb_wrapper">
                        <div style="text-align: center;" class="h2">Milana</div>
                        <p><em>“Hi, if you are looking to start your project, or you still have some concerns, you can definitely reach out to me for comprehensive assistance. Contact me and let’s start your business venture.”</em></p>
                        <div class="vc_btn3-container btn vc_btn3-center vc_custom_1706266820546">
                            <a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-rounded vc_btn3-style-custom" style="background-color: #f5a700; color: #000000;" title="" href="mailto:milana.s@regulatedunitedeurope.com">milana.s@regulatedunitedeurope.com</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1706300570716 vc_row-o-content-middle vc_row-flex"><div class="persona wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1706300637379"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1710415517602" >
		<div class="wpb_wrapper">
			<div class="vc_row wpb_row vc_row-fluid vc_custom_1706272908735 vc_row-has-fill vc_row-o-content-middle vc_row-flex reverse-order persona2">
  <div class="info wpb_column vc_column_container vc_col-sm-7">
    <div class="vc_column-inner vc_custom_1706273054449">
      <div class="wpb_wrapper">
        <div class="wpb_text_column wpb_content_element vc_custom_1706273011037">
          <div class="wpb_wrapper">
            <div class="h2" style="text-align: center;">Sheyla</div>
            <p><em>“Hello, I’m Sheyla, ready to help with your business ventures in Europe and beyond. Whether in international markets or exploring opportunities abroad, I offer guidance and support. Feel free to contact me!”</em></p>
            <div class="vc_btn3-container btn vc_btn3-center vc_custom_1706266820546">
              <a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-rounded vc_btn3-style-custom" style="background-color: #f5a700; color: #000000;" title="" href="mailto:sheyla.s@regulatedunitedeurope.com">sheyla.s@regulatedunitedeurope.com</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="info persona wpb_column vc_column_container vc_col-sm-5">
    <div class="vc_column-inner vc_custom_1706272873248">
      <div class="wpb_wrapper">
        <div class="wpb_single_image wpb_content_element vc_align_right">
          <figure class="wpb_wrapper vc_figure">
            <div class="vc_single_image-wrapper vc_box_border_grey">
              <img decoding="async" width="640" height="426" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20640%20426'%3E%3C/svg%3E" class="vc_single_image-img attachment-large" alt="Sheyla" title="sheyla" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-1024x681.jpg 1024w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-300x200.jpg 300w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-768x511.jpg 768w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-1536x1022.jpg 1536w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-2048x1362.jpg 2048w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-625x415.jpg 625w" data-lazy-sizes="(max-width: 640px) 100vw, 640px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/./sheyla2-1-1024x681.jpg"><noscript><img loading="lazy" decoding="async" width="640" height="426" src="https://regulatedunitedeurope.com/wp-content/uploads/./sheyla2-1-1024x681.jpg" class="vc_single_image-img attachment-large" alt="Sheyla" title="sheyla" srcset="https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-1024x681.jpg 1024w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-300x200.jpg 300w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-768x511.jpg 768w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-1536x1022.jpg 1536w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-2048x1362.jpg 2048w, https://regulatedunitedeurope.com/wp-content/uploads/sheyla2-1-625x415.jpg 625w" sizes="(max-width: 640px) 100vw, 640px"></noscript>
            </div>
          </figure>
        </div>
      </div>
    </div>
  </div>

</div>

		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1706300570716 vc_row-o-content-middle vc_row-flex"><div class="persona wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1706300637379"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1715928496926" >
		<div class="wpb_wrapper">
			  <div class="persona3 vc_row wpb_row vc_row-fluid vc_custom_1706272799082 vc_row-has-fill vc_row-o-content-middle vc_row-flex"><div class="persona wpb_column vc_column_container vc_col-sm-5"><div class="vc_column-inner vc_custom_1706269383762"><div class="wpb_wrapper">
<div class="wpb_single_image wpb_content_element vc_align_left">
<figure class="wpb_wrapper vc_figure">
<div class="vc_single_image-wrapper   vc_box_border_grey"><img decoding="async" width="640" height="426" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20640%20426'%3E%3C/svg%3E" class="vc_single_image-img attachment-large" alt="Diana" title="IMG_0030" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-1024x682.jpg 1024w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-300x200.jpg 300w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-768x511.jpg 768w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-1536x1022.jpg 1536w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-2048x1363.jpg 2048w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-625x415.jpg 625w" data-lazy-sizes="(max-width: 640px) 100vw, 640px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/./IMG_0030-1024x682.jpg"><noscript><img loading="lazy" decoding="async" width="640" height="426" src="https://regulatedunitedeurope.com/wp-content/uploads/./IMG_0030-1024x682.jpg" class="vc_single_image-img attachment-large" alt="Diana" title="IMG_0030" srcset="https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-1024x682.jpg 1024w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-300x200.jpg 300w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-768x511.jpg 768w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-1536x1022.jpg 1536w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-2048x1363.jpg 2048w, https://regulatedunitedeurope.com/wp-content/uploads/IMG_0030-625x415.jpg 625w" sizes="(max-width: 640px) 100vw, 640px"></noscript></div>
</figure>
</div>
</div></div></div><div class="info wpb_column vc_column_container vc_col-sm-7"><div class="vc_column-inner"><div class="wpb_wrapper">
<div class="wpb_text_column wpb_content_element  vc_custom_1706273115641">
<div class="wpb_wrapper">
<div class="h2" style="text-align: center;">Diana</div>
<p><em>“Hello, my name is Diana and I specialise in assisting clients in many questions. Contact me and I will be able to provide you efficient support in your request.”</em></p>
<div class="vc_btn3-container btn vc_btn3-center vc_custom_1706266820546"><a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-rounded vc_btn3-style-custom" style="background-color: #f5a700; color: #000000;" title="" href="mailto:diana.p@regulatedunitedeurope.com">diana.p@regulatedunitedeurope.com</a></div>
</div>
</div>
</div></div></div></div>




		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1706300570716 vc_row-o-content-middle vc_row-flex"><div class="persona wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1706300637379"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1710415542371" >
		<div class="wpb_wrapper">
			<div class="persona4 vc_row wpb_row vc_row-fluid vc_custom_1706272914855 vc_row-has-fill vc_row-o-content-middle vc_row-flex reverse-order">
  <div class="info wpb_column vc_column_container vc_col-sm-7">
    <div class="vc_column-inner vc_custom_1706273083616">
      <div class="wpb_wrapper">
        <div class="wpb_text_column wpb_content_element vc_custom_1706273122037">
          <div class="wpb_wrapper">
            <div class="h2" style="text-align: center;">Polina</div>
            <p><em>“Hello, my name is Polina. I will be happy to provide you with the necessary information to launch your project in the chosen jurisdiction – contact me for more information!”</em></p>
            <div class="vc_btn3-container btn vc_btn3-center vc_custom_1706266820546">
              <a class="vc_general vc_btn3 vc_btn3-size-md vc_btn3-shape-rounded vc_btn3-style-custom" style="background-color: #f5a700; color: #000000;" title="" href="mailto:polina.m@regulatedunitedeurope.com">polina.m@regulatedunitedeurope.com</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="info persona wpb_column vc_column_container vc_col-sm-5">
    <div class="vc_column-inner vc_custom_1706272742432">
      <div class="wpb_wrapper">
        <div class="wpb_single_image wpb_content_element vc_align_right">
          <figure class="wpb_wrapper vc_figure">
            <div class="vc_single_image-wrapper vc_box_border_grey">
              <img decoding="async" width="640" height="426" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20640%20426'%3E%3C/svg%3E" class="vc_single_image-img attachment-large" alt="Polina" title="Polina" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-1024x682.jpg 1024w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-300x200.jpg 300w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-768x511.jpg 768w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-1536x1022.jpg 1536w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-625x415.jpg 625w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517.jpg 2048w" data-lazy-sizes="(max-width: 640px) 100vw, 640px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/./23-05-03-Company-In-Estonia-@-Fahle-Workland-517-1024x682.jpg"><noscript><img loading="lazy" decoding="async" width="640" height="426" src="https://regulatedunitedeurope.com/wp-content/uploads/./23-05-03-Company-In-Estonia-@-Fahle-Workland-517-1024x682.jpg" class="vc_single_image-img attachment-large" alt="Polina" title="Polina" srcset="https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-1024x682.jpg 1024w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-300x200.jpg 300w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-768x511.jpg 768w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-1536x1022.jpg 1536w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517-625x415.jpg 625w, https://regulatedunitedeurope.com/wp-content/uploads/23-05-03-Company-In-Estonia-@-Fahle-Workland-517.jpg 2048w" sizes="(max-width: 640px) 100vw, 640px"></noscript>
            </div>
          </figure>
        </div>
      </div>
    </div>
  </div>
</div>
		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1669967156586"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1669970601511" >
		<div class="wpb_wrapper">
			<h2  class="decorated"><span style="color:#936502; font-family:'Alice';font-weight:400 !important">CONTACT US</span></h2>

		</div>
	</div>

	<div class="wpb_text_column wpb_content_element  smallfont" >
		<div class="wpb_wrapper">
			<p class="stretched" style="font-size: 19px;">At the moment, the main services of our company are legal and compliance solutions for FinTech projects. Our offices are located in Vilnius, Prague, and Warsaw. The legal team can assist with legal analysis, project structuring, and legal regulation.</p>

		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid smallfont vc_custom_1705048853015"><div class="wpb_column vc_column_container vc_col-sm-3"><div class="vc_column-inner vc_custom_1669967156586"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div style="color: #936502; font-family: 'Alice', serif; font-size: 20px;"><strong>Company in Lithuania UAB</strong></div>
<div class="wpb_text_column wpb_content_element ">
<div class="wpb_wrapper">
<p style="text-align: left; font-size: 16px !important;">Registration number: 304377400<br />
Anno: 30.08.2016<br />
Phone: <a href="tel:+370 661 75988"><strong>+370 661 75988</strong></a><br />
Email: <strong><a href="mailto:lithuania@regulatedunitedeurope.com">lithuania@regulatedunitedeurope.com</a></strong><br />
Address: <strong><a href="https://www.google.ru/maps/place/Company+in+Lithuania+UAB+-+lithuania+crypto+license,+lithuania+company+registration/@54.6967109,25.2770014,17z/data=!3m1!4b1!4m5!3m4!1s0x46dd95041e8c3e71:0xfabe7eabdaa6d3eb!8m2!3d54.6967109!4d25.2791954" target="_blank" rel="noopener">Lvovo g. 25 &#8211; 702, 7th floor, Vilnius,<br />
09320, Lithuania</a></strong></p>
</div>
</div>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-3"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div style="color: #936502; font-family: 'Alice', serif; font-size: 20px;"><strong>Company in Poland Sp. z o.o</strong></div>
<div class="wpb_text_column wpb_content_element ">
<div class="wpb_wrapper">
<p style="text-align: left; font-size: 16px !important;">Registration number: 38421992700000<br />
Anno: 28.08.2019<br />
Phone: <a href="tel:+48506335087"><strong>+48 50 633 5087</strong></a><br />
Email: <strong><a href="mailto:poland@regulatedunitedeurope.com">poland@regulatedunitedeurope.com</a></strong><br />
Address: <a href="https://goo.gl/maps/jxP3xMDcgouVW79Z9" target="_blank" rel="noopener"><strong>Twarda 18, 15th floor, Warsaw, 00-824, Poland</strong></a></p>
</div>
</div>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-3"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div style="color: #936502; font-family: 'Alice', serif; font-size: 20px;"><strong>Regulated United Europe OÜ</strong></div>
<div class="wpb_text_column wpb_content_element ">
<div class="wpb_wrapper">
<p style="text-align: left; font-size: 16px !important;">Registration number: 14153440&#8211;<br />
Anno: 16.11.2016<br />
Phone: <a href="tel:+37256966260"><strong>+372 56 966 260</strong></a><br />
Email: <strong><a href="mailto: estonia@regulatedunitedeurope.com"> estonia@regulatedunitedeurope.com</a></strong><br />
Address: <a href="https://maps.app.goo.gl/x3wuRua3TpkAxnBs7" target="_blank" rel="noopener"><strong> Laeva 2, Tallinn, 10111, Estonia</strong></a></p>
</div>
</div>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-3"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div style="color: #936502; font-family: 'Alice', serif; font-size: 20px;"><strong>Company in Czech Republic s.r.o.</strong></div>
<div class="wpb_text_column wpb_content_element ">
<div class="wpb_wrapper">
<p style="text-align: left; font-size: 16px !important;">Registration number: 08620563<br />
Anno: 21.10.2019<br />
Phone: <a href="tel:+420775524175"><strong>+420 775 524 175</strong></a><br />
Email: <strong><a href="mailto: czech@regulatedunitedeurope.com"> czech@regulatedunitedeurope.com</a></strong><br />
Address: <a href="https://goo.gl/maps/njnc7UKfuG5EasV66" target="_blank" rel="noopener"><strong>Na Perštýně 342/1, Staré Město, 110 00 Prague</strong></a></p>
</div>
</div>

		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid vc_custom_1694514838501"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1669966066689"><div class="wpb_wrapper">
	<div class="wpb_raw_code wpb_content_element wpb_raw_html vc_custom_1669966118603" >
		<div class="wpb_wrapper">
			<h2  class="decorated"><span style="color:#936502; font-family:'Alice';font-weight:400 !important">Please leave your request</span></h2>
		</div>
	</div>
</div></div></div></div><div class="vc_row wpb_row vc_row-fluid contactforms vc_custom_1669966024069"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner vc_custom_1651133499182"><div class="wpb_wrapper">
<div class="wpcf7 no-js" id="wpcf7-f13-p2877-o2" lang="en-US" dir="ltr">
<div class="screen-reader-response"><p role="status" aria-live="polite" aria-atomic="true"></p> <ul></ul></div>
<form action="/#wpcf7-f13-p2877-o2" method="post" class="wpcf7-form init" aria-label="Contact form" novalidate="novalidate" data-status="init">
<div style="display: none;">
<input type="hidden" name="_wpcf7" value="13" />
<input type="hidden" name="_wpcf7_version" value="5.8.6" />
<input type="hidden" name="_wpcf7_locale" value="en_US" />
<input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f13-p2877-o2" />
<input type="hidden" name="_wpcf7_container_post" value="2877" />
<input type="hidden" name="_wpcf7_posted_data_hash" value="" />
<input type="hidden" name="_wpcf7_recaptcha_response" value="" />
</div>
<div class="content-column one_half" style="padding:"0;">
	<p><span class="wpcf7-form-control-wrap" data-name="your-name"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Your name" value="" type="text" name="your-name" /></span>
	</p>
	<p><span class="wpcf7-form-control-wrap" data-name="your-email"><input size="40" class="wpcf7-form-control wpcf7-email wpcf7-validates-as-required wpcf7-text wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Your email" value="" type="email" name="your-email" /></span>
	</p>
	<p><span class="wpcf7-form-control-wrap" data-name="your-subject"><input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Subject" value="" type="text" name="your-subject" /></span>
	</p>
</div>
<div class="content-column one_half" style="padding:"0;">
	<p><span class="wpcf7-form-control-wrap" data-name="your-message"><textarea cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="Message" name="your-message"></textarea></span>
	</p>

	<div class="button1" style="float:left; ">
		<p><input class="wpcf7-form-control wpcf7-submit has-spinner" type="submit" value="Send" />
		</p>
	</div>
</div>
<div style="margin-bottom:20px !important" class="clear_column">
</div><div class="wpcf7-response-output" aria-hidden="true"></div>
</form>
</div>
</div></div></div></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid footerlinks vc_custom_1705042534782 vc_row-has-fill"><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-has-fill"><div class="vc_column-inner vc_custom_1698905600328"><div class="wpb_wrapper"><div class="vc_row wpb_row vc_inner vc_row-fluid footercols vc_custom_1698905616897 vc_row-o-content-top vc_row-flex"><div class="wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element  footerlinks" >
		<div class="wpb_wrapper">
			<p><strong style="color: #936502; font-size: 24px;">Main Services</strong></p>
<ul>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/crypto-licence/">Crypto License </a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/gambling-license/">Gambling License </a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/forex-license/">Forex License </a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/emi-psp-license/">EMI/PSP License </a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/jurisdictions/">Jurisdictions</a></li>
</ul>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner vc_custom_1693902566495"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element  footerlinks" >
		<div class="wpb_wrapper">
			<p><strong style="color: #936502; font-size: 24px;">Terms of Cooperation</strong></p>
<ul>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/GDPR/">GDPR</a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/terms-of-use/">Terms of Use</a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/cookies-policy/">Cookies Policy</a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/privacy-policy/">Privacy Policy</a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/structure-of-payment/">Structure of Payment</a></li>
</ul>

		</div>
	</div>
</div></div></div><div class="wpb_column vc_column_container vc_col-sm-4"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element  footerlinks" >
		<div class="wpb_wrapper">
			<p><strong style="color: #936502; font-size: 24px;">Regulated United Europe<br />
</strong></p>
<ul>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/blog/">Blog</a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/our-team/">Company History</a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/customer-review-form/">Customer Review Form</a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/complaint-form/">Complaint Form</a></li>
<li style="text-align: left;"><a href="https://regulatedunitedeurope.com/contact-us/">Contacts</a></li>
</ul>

		</div>
	</div>
</div></div></div></div></div></div></div></div><div class="vc_row-full-width vc_clearfix"></div><div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid footerlinks vc_custom_1705042545472 vc_row-has-fill"><div class="wpb_column vc_column_container vc_col-sm-12 vc_col-has-fill"><div class="vc_column-inner vc_custom_1698905600328"><div class="wpb_wrapper"><div class="vc_row wpb_row vc_inner vc_row-fluid footercols vc_custom_1698905616897 vc_row-o-content-top vc_row-flex"><style type="text/css" data-type="vc_custom-css">.services-border img{border:0 !important;}
.services-border:hover {background:none !important;}
.services-border img:hover {background:#936502;}
.bordergold {margin-top:0 !important;}

@media (max-width:768px){.navbar-header .col-md-3, .navbar .row{width:100% !important;}}

/*box styles*/
.img-wrap img {border:1px solid #936502;border-radius:50% !important;}

.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}

label {
  display: inline-block;
}


 .radio-div .img-wrap {
  margin-right: 10px;
}
.d-ib {
  display: inline-block;
  vertical-align: middle;
}
 .radio-div h3 {
  font-weight: 600;
  font-size: 22px;
  line-height: 28px;
  color: #000000;
  margin-bottom: 8px;
  transition: all 0.3s ease-in-out;
}
.radio-div span.duration {
  font-weight: 400;
  font-size: 15px;
  line-height: 15px;
  text-align: right;
  color: #936502;
  margin-left: 5px;
  transition: all 0.3s ease-in-out;
}

 .radio-div .price-box {
  margin-top: 25px;
}
.align-items-center {
  align-items: center !important;
}
.justify-content-between {
  justify-content: space-between !important;
}
.d-flex {
  display: flex !important;
}
 .radio-div .price-box h5 {
  font-weight: 400;
  font-size: 15px;
  line-height: 19px;
  color: #936502;
  opacity: 0.8;
  margin-bottom: 4px;
  transition: all 0.3s ease-in-out;
}
.radio-block .radio-div span.duration {
  font-weight: 400;
  font-size: 15px !important;
  line-height: 15px;
  font-family: 'Nunito';
  text-align: right;
  color: #000000;
  margin-left: 5px;
  transition: all 0.3s ease-in-out;
}
 label:hover .radio-div {
  color: #FFFFFF;
  transition: all 0.3s ease-in-out;
}




.radio-box label:hover .radio-div .selected {
  background: #000000;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}
.radio-box label:hover .radio-div .selected span::before {
  color: #FFF;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'Select';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-box input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-box label {
  height: 100%;
  display: block;
  background: #EAEEFA;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-box .radio-div .selected {
  background: #CED6EB;
  border-radius: 48px;
  padding: 7px 14px;
  margin: 12px 0;
  transition: all 0.3s ease-in-out;
  position: relative;
  width: 94px;
}


.d-ib .img-wrap img {width:46px; height:46px;}

 label:hover {
  background: #936502;
  transition: all 0.3s ease-in-out;
  color:white;
}

label:hover {
  background: #004CE0;
  transition: all 0.3s ease-in-out;
}

 label {
  height: 100%;
  display: block;
  background: rgba(191, 161, 97, 0.1) !important;
  border-radius: 6px;
  padding: 1rem;
  margin-bottom: 2rem;
  position: relative;
  padding: 24px;
  transition: all 0.3s ease-in-out;
}
.radio-block input[type="radio"] {
  display: none;
}
.radio-block input[type="radio"]:not(:disabled) ~ label {
  cursor: pointer;
}
.radio-block label:hover {
  background: #936502 !important;
  color:white !important;
  transition: all 0.3s ease-in-out;
}



.radio-block .radio-div .selected span::before {
  font-weight: 500;
  font-size: 16px;
  line-height: 20px;
  color: #004CE0;
  margin-left: 4px;
  transition: all 0.3s ease-in-out;
  position: absolute;
  content: 'more';
  top: 9px;
  left: 32px;
  transition: all 0.3s ease-in-out;
}
.radio-block label:hover .radio-div .calendar, .radio-block label:hover .radio-div .check {
  fill: #FFFFFF;
  filter: brightness(0) invert(1);
  transition: all 0.3s ease-in-out;
}

.radio-block label:hover .radio-div h3, .radio-block h3:hover,.renew-cost:hover,  .radio-block label:hover .radio-div .price-box h5, .radio-block label:hover .radio-div .price-box h6, .radio-block label:hover .radio-div span.duration, .radio-block label:hover .radio-div .selected span, .radio-block label:hover .radio-div .renew-cost {
  color: #FFFFFF !important;
  transition: all 0.3s ease-in-out;
}
.total-cost h6 {color:#936502;font-weight:600;}
.total-cost h5 {color:black !important;}
.radio-block label:hover .radio-div .renew-cost {color:white !important; border:1px solid white;border-radius:50px;padding:10px;}
.renew-cost {color:#936502; border:1px solid #936502;border-radius:50px;padding:10px;}
.duration, .title-box {align-content:left; text-align:left;}
.d-ib {
  display: inline-block !important;
  vertical-align: middle;
}
.home .radio-block h3, .duration, .d-ib span{text-align:left !important; align-content:middle;}









/* Стили для подменю второго уровня */
#navbar .sub-menu {
  background: #f5f5f5; /* Фон меню */
  box-shadow: 0 0 10px rgba(37, 37, 37, 0.12);
  text-align: left;
  opacity: 0; /* Скрываем подменю по умолчанию */
  position: absolute;
  width: 250px;
  top: 100%; /* Отображаем подменю под родительским элементом */
  transition: all 250ms ease-in-out;
  visibility: hidden; /* Скрываем подменю по умолчанию */
  padding: 5px;
  z-index: 9999; /* Устанавливаем высокий z-index для подменю */
}

/* Показываем подменю второго уровня при наведении на соответствующий родительский элемент */
#navbar .menu-item:hover > .sub-menu {
  opacity: 1; /* Показываем подменю при наведении */
  visibility: visible;
}

/* Стили для подменю третьего уровня */
#navbar .sub-menu .sub-menu {
  left: 100%; /* Подменю третьего уровня сдвигается вправо от родительского меню */
  top: 0; /* Меню третьего уровня отображается слева от родительского элемента */
  opacity: 0; /* Скрываем подменю по умолчанию */
  visibility: hidden; /* Скрываем подменю по умолчанию */
}

/* Показываем подменю третьего уровня при наведении на соответствующий родительский элемент */
#navbar .sub-menu .menu-item:hover > .sub-menu {
  opacity: 1; /* Показываем подменю третьего уровня при наведении */
  visibility: visible;
}

#navbar .sub-menu li {
  display: block !important;
}
#navbar .sub-menu li {
  position: relative !important;
  float: none !important;
}

.values {font-family: 'Alice',serif;
  color: #936502;
  font-size: 33px !important;
  margin-bottom: 15px;}</style><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner"><div class="wpb_wrapper"><div class="vc_row wpb_row vc_row-fluid socicons"><div class="wpb_column vc_column_container vc_col-sm-12"><div class="vc_column-inner"><div class="wpb_wrapper">
	<div class="wpb_text_column wpb_content_element " >
		<div class="wpb_wrapper">
			<div style="margin: 0 auto; text-align: centre;"><a title="Instagram" href="https://www.instagram.com/regulated.united.europe/" target="_blank" rel="noopener"><img decoding="async" class=" social alignnone wp-image-5840" style="margin-right: 10px;" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2035%2035'%3E%3C/svg%3E" alt="Instagram" width="35" height="35" title="RegulatedUnitedEurope /en 6" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads//2022/06/insta.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/insta.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/insta.svg 1024w" data-lazy-sizes="(max-width: 35px) 100vw, 35px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/insta.svg" /><noscript><img decoding="async" class=" social alignnone wp-image-5840" style="margin-right: 10px;" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/insta.svg" alt="Instagram" width="35" height="35" title="RegulatedUnitedEurope /en 6" srcset="https://regulatedunitedeurope.com/wp-content/uploads//2022/06/insta.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/insta.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/insta.svg 1024w" sizes="(max-width: 35px) 100vw, 35px" /></noscript></a><a title="Youtube" href="https://www.youtube.com/channel/UCiPMu9vonrUXTZEKUG1Ua9A/videos" target="_blank" rel="noopener"><img decoding="async" class="social alignnone wp-image-5841" style="margin-right: 10px;" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2035%2035'%3E%3C/svg%3E" alt="Youtube" width="35" height="35" title="RegulatedUnitedEurope /en 7" data-lazy-srcset="https://regulatedunitedeurope.com/wp-content/uploads//2022/06/youtube.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/youtube.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/youtube.svg 1024w" data-lazy-sizes="(max-width: 35px) 100vw, 35px" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/youtube.svg" /><noscript><img decoding="async" class="social alignnone wp-image-5841" style="margin-right: 10px;" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/06/youtube.svg" alt="Youtube" width="35" height="35" title="RegulatedUnitedEurope /en 7" srcset="https://regulatedunitedeurope.com/wp-content/uploads//2022/06/youtube.svg 150w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/youtube.svg 300w, https://regulatedunitedeurope.com/wp-content/uploads//2022/06/youtube.svg 1024w" sizes="(max-width: 35px) 100vw, 35px" /></noscript></a><a title="LinkedIn" href="https://www.linkedin.com/company/regulated-united-europe/" target="_blank" rel="noopener"><img decoding="async" class="social alignnone wp-image-5841" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2035%2035'%3E%3C/svg%3E" alt="LinkedIn" width="35" height="35" title="RegulatedUnitedEurope /en 8" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/2022/07/linkedin.svg"><noscript><img decoding="async" class="social alignnone wp-image-5841" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/07/linkedin.svg" alt="LinkedIn" width="35" height="35" title="RegulatedUnitedEurope /en 8"></noscript></a></div>

		</div>
	</div>
</div></div></div></div>
<style type="text/css" data-type="rcb-_wpb_post_custom_css-5876">.socicons .wpb_wrapper {
    display: flex;
    justify-content: center;
}</style>
	<div class="wpb_text_column wpb_content_element  socicons" >
		<div class="wpb_wrapper">
			<div class="bottom-icons"><a style="margin-right: 5px !important;" href="https://chambers.com/" target="_blank" rel="noopener noreferrer"><img decoding="async" class="alignnone size-full " style="margin-right: 5px !important;" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%20120%2035'%3E%3C/svg%3E" alt="chambers" width="120" height="35" title="RegulatedUnitedEurope /en 9" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/2022/07/chambers.svg"><noscript><img decoding="async" class="alignnone size-full " style="margin-right: 5px !important;" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/07/chambers.svg" alt="chambers" width="120" height="35" title="RegulatedUnitedEurope /en 9"></noscript></a><a href="https://www.legal500.com/" target="_blank" rel="noopener noreferrer"><img decoding="async" class="alignnone size-full " style="margin-right: 5px !important;" src="data:image/svg+xml,%3Csvg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2035%2035'%3E%3C/svg%3E" alt="legal500" width="35" height="35" title="RegulatedUnitedEurope /en 10" data-lazy-src="https://regulatedunitedeurope.com/wp-content/uploads/2022/07/legal500.svg"><noscript><img decoding="async" class="alignnone size-full " style="margin-right: 5px !important;" src="https://regulatedunitedeurope.com/wp-content/uploads/2022/07/legal500.svg" alt="legal500" width="35" height="35" title="RegulatedUnitedEurope /en 10"></noscript></a></div>

		</div>
	</div>
</div></div></div></div></div></div></div></div><div class="vc_row-full-width vc_clearfix"></div>
<style type="text/css" data-type="rcb-_wpb_shortcodes_custom_css-19876">.vc_custom_1710398858108{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706299564500{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706300570716{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706300570716{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706300570716{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1706300570716{margin-top: 20px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-left: 0px !important;}.vc_custom_1705048853015{margin-top: 20px !important;}.vc_custom_1694514838501{margin-top: 40px !important;margin-bottom: 0px !important;}.vc_custom_1669966024069{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1705042534782{margin-top: 20px !important;margin-bottom: 0px !important;border-top-width: 4px !important;border-bottom-width: 0px !important;padding-right: 0px !important;padding-bottom: 20px !important;padding-left: 0px !important;background-color: #1a1919 !important;border-top-color: #936502 !important;border-top-style: solid !important;border-bottom-color: #936502 !important;border-bottom-style: solid !important;}.vc_custom_1705042545472{margin-bottom: 0px !important;border-top-width: 1px !important;border-bottom-width: 0px !important;padding-right: 0px !important;padding-bottom: 20px !important;padding-left: 0px !important;background-color: #1a1919 !important;border-top-color: #936502 !important;border-top-style: solid !important;border-bottom-color: #936502 !important;border-bottom-style: solid !important;}.vc_custom_1706299609686{margin-top: 20px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 20px !important;padding-left: 0px !important;}.vc_custom_1706299609686{margin-top: 20px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 20px !important;padding-left: 0px !important;}.vc_custom_1706273403015{margin-top: 0px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;}.vc_custom_1706300637379{margin-top: 0px !important;margin-right: 0px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1710415496436{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 20px !important;padding-bottom: 0px !important;padding-left: 20px !important;}.vc_custom_1706300637379{margin-top: 0px !important;margin-right: 0px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1710415517602{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 20px !important;padding-bottom: 0px !important;padding-left: 20px !important;}.vc_custom_1706300637379{margin-top: 0px !important;margin-right: 0px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1715928496926{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 20px !important;padding-bottom: 0px !important;padding-left: 20px !important;}.vc_custom_1706300637379{margin-top: 0px !important;margin-right: 0px !important;margin-left: 0px !important;padding-top: 0px !important;padding-right: 0px !important;padding-bottom: 0px !important;padding-left: 0px !important;}.vc_custom_1710415542371{margin-bottom: 0px !important;padding-top: 0px !important;padding-right: 20px !important;padding-bottom: 0px !important;padding-left: 20px !important;}.vc_custom_1669967156586{margin-right: 0px !important;margin-left: 0px !important;}.vc_custom_1669970601511{margin-top: 0px !important;margin-right: 0px !important;margin-bottom: 20px !important;margin-left: 0px !important;}.vc_custom_1669967156586{margin-right: 0px !important;margin-left: 0px !important;}.vc_custom_1669966066689{margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1669966118603{margin-top: 0px !important;margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1651133499182{margin-top: 0px !important;padding-top: 0px !important;}.vc_custom_1698905600328{margin-bottom: 0px !important;border-bottom-width: 0px !important;padding-bottom: 0px !important;}.vc_custom_1698905616897{margin-top: 20px !important;margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1693902566495{margin-bottom: 0px !important;padding-bottom: 0px !important;}.vc_custom_1698905600328{margin-bottom: 0px !important;border-bottom-width: 0px !important;padding-bottom: 0px !important;}.vc_custom_1698905616897{margin-top: 20px !important;margin-bottom: 0px !important;padding-bottom: 0px !important;}</style></div></div></div></div>
	
			</div><!-- .entry-content -->

	</article><!-- #post-## -->
                        
                                    </main>
            </div>
        </div>
    </div>


            <!-- BACK TO TOP BUTTON -->
        <a class="back-to-top modeltheme-is-visible modeltheme-fade-out" href="#0">
            <i class="fa fa-long-arrow-up" aria-hidden="true"></i>
        </a>
    

    <!-- FOOTER -->
        <footer class="footer1">

        <!-- FOOTER TOP -->
        <div class="row footer-top">
            <div class="container">
            <div class="row"><div class="col-md-12 footer-row-1"><div class="row"><div class="col-md-4 sidebar-1"><aside id="custom_html-4" class="widget_text widget vc_column_vc_container widget_custom_html"><div class="textwidget custom-html-widget"></div></aside></div><div class="col-md-4 sidebar-2"></div><div class="col-md-4 sidebar-3"></div></div></div></div><div class="row"><div class="col-md-12 footer-row-2"><div class="row"></div></div></div><div class="row"><div class="col-md-12 footer-row-3"><div class="row"></div></div></div>            </div>
        </div>

		
		
		
		
	
	
		
		
		
		
		
		
		
        <!-- FOOTER BOTTOM -->
        <div class="row footer-div-parent">
            <div class="footer">
            	<p class="copyright text-center">
                                            <p style="text-align: center;color: #ccc;padding: 15px 0">Copyright © 2017-2024 RegulatedUnitedEurope Regulated United Europe OÜ (14153440). All Rights Reserved.</p>                                    </p>
            </div>
        </div>
    </footer>
</div>

<script type="application/ld+json">
    { "@context": "http://schema.org",
      "@type": "Product",
      "name": "RegulatedUnitedEurope /en",
      "aggregateRating":
        {"@type": "AggregateRating",
         "ratingValue": "5",
         "reviewCount": "21"
        }
    }
</script>
<script type="rocketlazyloadscript">
// Wait for the page to fully load
window.addEventListener('load', function() {
  // Delay for 1000 milliseconds (1 second)
  setTimeout(function() {
    // Get the element with id "productview"
    var productView = document.getElementById('productview');
    
    // Check if the element exists
    if (productView) {
      // Remove the inline CSS property "position"
      productView.style.removeProperty('position');
    }
  }, 1000); // 1000 milliseconds (1 second)
});
</script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" async data-rocket-src="//api.venyoo.ru/wnew.js?wc=venyoo/default/science&widget_id=6755342139797596"></script>

		<script type="rocketlazyloadscript" data-rocket-type="text/javascript">
			window.RS_MODULES = window.RS_MODULES || {};
			window.RS_MODULES.modules = window.RS_MODULES.modules || {};
			window.RS_MODULES.waiting = window.RS_MODULES.waiting || [];
			window.RS_MODULES.defered = true;
			window.RS_MODULES.moduleWaiting = window.RS_MODULES.moduleWaiting || {};
			window.RS_MODULES.type = 'compiled';
		</script>
		<script type="rocketlazyloadscript">
// Добавление класса при клике на .mt-search-icon
document.querySelector('.mt-search-icon').addEventListener('click', function() {
    document.querySelector('.fixed-search-overlay').classList.add('search-show');
});

// Удаление класса при клике на .fixed-search-overlay.icon-close
document.querySelector('.fixed-search-overlay .icon-close').addEventListener('click', function() {
    document.querySelector('.fixed-search-overlay').classList.remove('search-show');
});
</script>
<style>
	.fixed-search-overlay.search-show {
		z-index: 999;
		opacity: 1;
		visibility: visible;
	}
	.fixed-search-overlay.search-show .search-input {
		color:#000;
		text-transform: lowercase;
		padding: 0 5px;
	}
	a.mt-search-icon {
		color: #936502 !important;
		padding: 28px 10px !important;
	}
	.fixed-search-overlay.search-show .fa-search {
		display:none;
	}
</style>		<script type="rocketlazyloadscript" data-rocket-type="text/javascript">
			var ajaxRevslider;
			function rsCustomAjaxContentLoadingFunction() {
				// CUSTOM AJAX CONTENT LOADING FUNCTION
				ajaxRevslider = function(obj) {
				
					// obj.type : Post Type
					// obj.id : ID of Content to Load
					// obj.aspectratio : The Aspect Ratio of the Container / Media
					// obj.selector : The Container Selector where the Content of Ajax will be injected. It is done via the Essential Grid on Return of Content
					
					var content	= '';
					var data	= {
						action:			'revslider_ajax_call_front',
						client_action:	'get_slider_html',
						token:			'0b888fa316',
						type:			obj.type,
						id:				obj.id,
						aspectratio:	obj.aspectratio
					};
					
					// SYNC AJAX REQUEST
					jQuery.ajax({
						type:		'post',
						url:		'https://regulatedunitedeurope.com/wp-admin/admin-ajax.php',
						dataType:	'json',
						data:		data,
						async:		false,
						success:	function(ret, textStatus, XMLHttpRequest) {
							if(ret.success == true)
								content = ret.data;								
						},
						error:		function(e) {
							console.log(e);
						}
					});
					
					 // FIRST RETURN THE CONTENT WHEN IT IS LOADED !!
					 return content;						 
				};
				
				// CUSTOM AJAX FUNCTION TO REMOVE THE SLIDER
				var ajaxRemoveRevslider = function(obj) {
					return jQuery(obj.selector + ' .rev_slider').revkill();
				};


				// EXTEND THE AJAX CONTENT LOADING TYPES WITH TYPE AND FUNCTION				
				if (jQuery.fn.tpessential !== undefined) 					
					if(typeof(jQuery.fn.tpessential.defaults) !== 'undefined') 
						jQuery.fn.tpessential.defaults.ajaxTypes.push({type: 'revslider', func: ajaxRevslider, killfunc: ajaxRemoveRevslider, openAnimationSpeed: 0.3});   
						// type:  Name of the Post to load via Ajax into the Essential Grid Ajax Container
						// func: the Function Name which is Called once the Item with the Post Type has been clicked
						// killfunc: function to kill in case the Ajax Window going to be removed (before Remove function !
						// openAnimationSpeed: how quick the Ajax Content window should be animated (default is 0.3)					
			}
			
			var rsCustomAjaxContent_Once = false
			if (document.readyState === "loading") 
				document.addEventListener('readystatechange',function(){
					if ((document.readyState === "interactive" || document.readyState === "complete") && !rsCustomAjaxContent_Once) {
						rsCustomAjaxContent_Once = true;
						rsCustomAjaxContentLoadingFunction();
					}
				});
			else {
				rsCustomAjaxContent_Once = true;
				rsCustomAjaxContentLoadingFunction();
			}					
		</script>
		<link rel='stylesheet' id='css-10-css' href='https://regulatedunitedeurope.com/wp-content/cache/background-css/regulatedunitedeurope.com/wp-content/mmr/5a9807d6-1627998055.min.css' type='text/css' media='all' />
<style id='css-10-inline-css' type='text/css'>
#rs-demo-id {}
</style>
<script type="text/javascript" id="js-8-js-extra">
/* <![CDATA[ */
var wpcf7 = {"api":{"root":"https:\/\/regulatedunitedeurope.com\/wp-json\/","namespace":"contact-form-7\/v1"},"cached":"1"};var wpilFrontend = {"ajaxUrl":"\/wp-admin\/admin-ajax.php","postId":"2877","postType":"post","openInternalInNewTab":"0","openExternalInNewTab":"0","disableClicks":"0","openLinksWithJS":"0","trackAllElementClicks":"0","clicksI18n":{"imageNoText":"Image in link: No Text","imageText":"Image Title: ","noText":"No Anchor Text Found"}};
/* ]]> */
</script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" id="js-8-js-before">
/* <![CDATA[ */
var cf7GASendActions = {"mail_sent":"true"}, cf7FormIDs = {"ID_57586":"Complaint form Iran","ID_57569":"Contact form 1_contact page Iran","ID_57550":"Contact form 1 Iran","ID_55537":"reviews Turkey","ID_54733":"Complaint form Turkey","ID_54727":"Contact form 1_contact page Turkey","ID_54724":"Contact form 1 Turkey","ID_54496":"Complaint form_Fr123","ID_46980":"reviews It","ID_46132":"Contact form 1_contact page IT","ID_46128":"Complaint form IT","ID_46120":"Contact form 1 TI","ID_44358":"reviews_copy_fr","ID_44343":"Contact form 1_contact page_fr","ID_44076":"Contact form 1_fr","ID_44055":"Complaint form_fr_withAttachment","ID_34302":"Complaint form_copy HI","ID_34214":"reviews_copy HI","ID_34169":"Contact form 1_contact page_copy HI","ID_32871":"Contact form 1_copy HI","ID_32819":"reviews KO","ID_32814":"Complaint form KO","ID_32811":"Contact form 1_contact page KO","ID_32769":"Contact form 1 KO","ID_31433":"reviews_pt","ID_31390":"Contact form 1_contact page_PT","ID_31389":"Complaint form_PT_withAttachment","ID_31327":"Contact form 1_PT","ID_25127":"Complaint form China","ID_25116":"reviews China","ID_25098":"Contact form 1_Cn","ID_21463":"Complaint form PH","ID_21446":"reviews PH","ID_21279":"Contact form 1_contact page_copy PH","ID_20737":"Contact form 1 PH","ID_20044":"Complaint form_copy Jp","ID_20036":"reviews_copy Jp","ID_19894":"Contact form 1_Jp_copy","ID_19891":"Contact form 1_contact page_copy Jp","ID_19621":"Complaint form_de_withAttachment","ID_19523":"reviews_de","ID_19378":"Contact form 1_contact page_DE","ID_19293":"Contact form 1_DE","ID_16741":"reviews","ID_15014":"Complaint form","ID_12614":"Contact form 1_contact page_es","ID_12436":"Contact form 1_contact page_cn","ID_12435":"Contact form 1_copy_copy","ID_10264":"Contact form 1_contact page","ID_9678":"Contact form 1_copy","ID_7209":"Contact form 1_es","ID_2260":"Contact form 2","ID_13":"Contact form 1"}

function heateorSssLoadEvent(e) {var t=window.onload;if (typeof window.onload!="function") {window.onload=e}else{window.onload=function() {t();e()}}};	var heateorSssSharingAjaxUrl = 'https://regulatedunitedeurope.com/wp-admin/admin-ajax.php', heateorSssCloseIconPath = 'https://regulatedunitedeurope.com/wp-content/plugins/sassy-social-share/public/../images/close.png', heateorSssPluginIconPath = 'https://regulatedunitedeurope.com/wp-content/plugins/sassy-social-share/public/../images/logo.png', heateorSssHorizontalSharingCountEnable = 0, heateorSssVerticalSharingCountEnable = 0, heateorSssSharingOffset = -10; var heateorSssMobileStickySharingEnabled = 0;var heateorSssCopyLinkMessage = "Link copied.";var heateorSssUrlCountFetched = [], heateorSssSharesText = 'Shares', heateorSssShareText = 'Share';function heateorSssPopup(e) {window.open(e,"popUpWindow","height=400,width=600,left=400,top=100,resizable,scrollbars,toolbar=0,personalbar=0,menubar=no,location=no,directories=no,status")}
/* ]]> */
</script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" data-rocket-src="https://regulatedunitedeurope.com/wp-content/mmr/9c5fb959-1715937398.min.js" id="js-8-js" defer></script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" data-rocket-src="https://www.google.com/recaptcha/api.js?render=6LfZtKMiAAAAAE2V-zjkfqXgOT0NPFufFCjDCcPx&amp;ver=3.0" id="google-recaptcha-js"></script>
<script type="text/javascript" id="js-9-js-extra">
/* <![CDATA[ */
var wpcf7_recaptcha = {"sitekey":"6LfZtKMiAAAAAE2V-zjkfqXgOT0NPFufFCjDCcPx","actions":{"homepage":"homepage","contactform":"contactform"}};var vcData = {"currentTheme":{"slug":"hostcluster"}};
/* ]]> */
</script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" data-rocket-src="https://regulatedunitedeurope.com/wp-content/mmr/ac1b37ab-1706863211.min.js" id="js-9-js" defer></script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" id="rocket-browser-checker-js-after">
/* <![CDATA[ */
"use strict";var _createClass=function(){function defineProperties(target,props){for(var i=0;i<props.length;i++){var descriptor=props[i];descriptor.enumerable=descriptor.enumerable||!1,descriptor.configurable=!0,"value"in descriptor&&(descriptor.writable=!0),Object.defineProperty(target,descriptor.key,descriptor)}}return function(Constructor,protoProps,staticProps){return protoProps&&defineProperties(Constructor.prototype,protoProps),staticProps&&defineProperties(Constructor,staticProps),Constructor}}();function _classCallCheck(instance,Constructor){if(!(instance instanceof Constructor))throw new TypeError("Cannot call a class as a function")}var RocketBrowserCompatibilityChecker=function(){function RocketBrowserCompatibilityChecker(options){_classCallCheck(this,RocketBrowserCompatibilityChecker),this.passiveSupported=!1,this._checkPassiveOption(this),this.options=!!this.passiveSupported&&options}return _createClass(RocketBrowserCompatibilityChecker,[{key:"_checkPassiveOption",value:function(self){try{var options={get passive(){return!(self.passiveSupported=!0)}};window.addEventListener("test",null,options),window.removeEventListener("test",null,options)}catch(err){self.passiveSupported=!1}}},{key:"initRequestIdleCallback",value:function(){!1 in window&&(window.requestIdleCallback=function(cb){var start=Date.now();return setTimeout(function(){cb({didTimeout:!1,timeRemaining:function(){return Math.max(0,50-(Date.now()-start))}})},1)}),!1 in window&&(window.cancelIdleCallback=function(id){return clearTimeout(id)})}},{key:"isDataSaverModeOn",value:function(){return"connection"in navigator&&!0===navigator.connection.saveData}},{key:"supportsLinkPrefetch",value:function(){var elem=document.createElement("link");return elem.relList&&elem.relList.supports&&elem.relList.supports("prefetch")&&window.IntersectionObserver&&"isIntersecting"in IntersectionObserverEntry.prototype}},{key:"isSlowConnection",value:function(){return"connection"in navigator&&"effectiveType"in navigator.connection&&("2g"===navigator.connection.effectiveType||"slow-2g"===navigator.connection.effectiveType)}}]),RocketBrowserCompatibilityChecker}();
/* ]]> */
</script>
<script type="text/javascript" id="rocket-preload-links-js-extra">
/* <![CDATA[ */
var RocketPreloadLinksConfig = {"excludeUris":"\/(?:.+\/)?feed(?:\/(?:.+\/?)?)?$|\/(?:.+\/)?embed\/|\/(index.php\/)?(.*)wp-json(\/.*|$)|\/refer\/|\/go\/|\/recommend\/|\/recommends\/","usesTrailingSlash":"1","imageExt":"jpg|jpeg|gif|png|tiff|bmp|webp|avif|pdf|doc|docx|xls|xlsx|php","fileExt":"jpg|jpeg|gif|png|tiff|bmp|webp|avif|pdf|doc|docx|xls|xlsx|php|html|htm","siteUrl":"https:\/\/regulatedunitedeurope.com","onHoverDelay":"100","rateThrottle":"3"};
/* ]]> */
</script>
<script type="rocketlazyloadscript" data-rocket-type="text/javascript" id="rocket-preload-links-js-after">
/* <![CDATA[ */
(function() {
"use strict";var r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},e=function(){function i(e,t){for(var n=0;n<t.length;n++){var i=t[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(e,i.key,i)}}return function(e,t,n){return t&&i(e.prototype,t),n&&i(e,n),e}}();function i(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}var t=function(){function n(e,t){i(this,n),this.browser=e,this.config=t,this.options=this.browser.options,this.prefetched=new Set,this.eventTime=null,this.threshold=1111,this.numOnHover=0}return e(n,[{key:"init",value:function(){!this.browser.supportsLinkPrefetch()||this.browser.isDataSaverModeOn()||this.browser.isSlowConnection()||(this.regex={excludeUris:RegExp(this.config.excludeUris,"i"),images:RegExp(".("+this.config.imageExt+")$","i"),fileExt:RegExp(".("+this.config.fileExt+")$","i")},this._initListeners(this))}},{key:"_initListeners",value:function(e){-1<this.config.onHoverDelay&&document.addEventListener("mouseover",e.listener.bind(e),e.listenerOptions),document.addEventListener("mousedown",e.listener.bind(e),e.listenerOptions),document.addEventListener("touchstart",e.listener.bind(e),e.listenerOptions)}},{key:"listener",value:function(e){var t=e.target.closest("a"),n=this._prepareUrl(t);if(null!==n)switch(e.type){case"mousedown":case"touchstart":this._addPrefetchLink(n);break;case"mouseover":this._earlyPrefetch(t,n,"mouseout")}}},{key:"_earlyPrefetch",value:function(t,e,n){var i=this,r=setTimeout(function(){if(r=null,0===i.numOnHover)setTimeout(function(){return i.numOnHover=0},1e3);else if(i.numOnHover>i.config.rateThrottle)return;i.numOnHover++,i._addPrefetchLink(e)},this.config.onHoverDelay);t.addEventListener(n,function e(){t.removeEventListener(n,e,{passive:!0}),null!==r&&(clearTimeout(r),r=null)},{passive:!0})}},{key:"_addPrefetchLink",value:function(i){return this.prefetched.add(i.href),new Promise(function(e,t){var n=document.createElement("link");n.rel="prefetch",n.href=i.href,n.onload=e,n.onerror=t,document.head.appendChild(n)}).catch(function(){})}},{key:"_prepareUrl",value:function(e){if(null===e||"object"!==(void 0===e?"undefined":r(e))||!1 in e||-1===["http:","https:"].indexOf(e.protocol))return null;var t=e.href.substring(0,this.config.siteUrl.length),n=this._getPathname(e.href,t),i={original:e.href,protocol:e.protocol,origin:t,pathname:n,href:t+n};return this._isLinkOk(i)?i:null}},{key:"_getPathname",value:function(e,t){var n=t?e.substring(this.config.siteUrl.length):e;return n.startsWith("/")||(n="/"+n),this._shouldAddTrailingSlash(n)?n+"/":n}},{key:"_shouldAddTrailingSlash",value:function(e){return this.config.usesTrailingSlash&&!e.endsWith("/")&&!this.regex.fileExt.test(e)}},{key:"_isLinkOk",value:function(e){return null!==e&&"object"===(void 0===e?"undefined":r(e))&&(!this.prefetched.has(e.href)&&e.origin===this.config.siteUrl&&-1===e.href.indexOf("?")&&-1===e.href.indexOf("#")&&!this.regex.excludeUris.test(e.href)&&!this.regex.images.test(e.href))}}],[{key:"run",value:function(){"undefined"!=typeof RocketPreloadLinksConfig&&new n(new RocketBrowserCompatibilityChecker({capture:!0,passive:!0}),RocketPreloadLinksConfig).init()}}]),n}();t.run();
}());
/* ]]> */
</script>
<script type="text/javascript" id="rocket_lazyload_css-js-extra">
/* <![CDATA[ */
var rocket_lazyload_css_data = {"threshold":"300"};
/* ]]> */
</script>
<script type="text/javascript" id="rocket_lazyload_css-js-after">
/* <![CDATA[ */
!function o(n,c,s){function i(t,e){if(!c[t]){if(!n[t]){var r="function"==typeof require&&require;if(!e&&r)return r(t,!0);if(u)return u(t,!0);throw(r=new Error("Cannot find module '"+t+"'")).code="MODULE_NOT_FOUND",r}r=c[t]={exports:{}},n[t][0].call(r.exports,function(e){return i(n[t][1][e]||e)},r,r.exports,o,n,c,s)}return c[t].exports}for(var u="function"==typeof require&&require,e=0;e<s.length;e++)i(s[e]);return i}({1:[function(e,t,r){"use strict";!function(){const r="undefined"==typeof rocket_pairs?[]:rocket_pairs,o=document.querySelector("#wpr-lazyload-bg");var e=rocket_lazyload_css_data.threshold||300;const n=new IntersectionObserver(e=>{e.forEach(t=>{if(t.isIntersecting){const e=r.filter(e=>t.target.matches(e.selector));e.map(t=>{t&&(o.innerHTML+=t.style,t.elements.forEach(e=>{n.unobserve(e),e.setAttribute("data-rocket-lazy-bg-".concat(t.hash),"loaded")}))})}})},{rootMargin:e+"px"});function t(){0<(0<arguments.length&&void 0!==arguments[0]?arguments[0]:[]).length&&r.forEach(t=>{try{const e=document.querySelectorAll(t.selector);e.forEach(e=>{"loaded"!==e.getAttribute("data-rocket-lazy-bg-".concat(t.hash))&&(n.observe(e),(t.elements||(t.elements=[])).push(e))})}catch(e){console.error(e)}})}t();const c=function(){const o=window.MutationObserver;return function(e,t){if(e&&1===e.nodeType){const r=new o(t);return r.observe(e,{attributes:!0,childList:!0,subtree:!0}),r}}}();e=document.querySelector("body"),c(e,t)}()},{}]},{},[1]);
/* ]]> */
</script>
    <script type="rocketlazyloadscript">
    const cols = document.querySelectorAll('.wpcf7-form input[name=_wpcf7_container_post]');
    [].forEach.call(cols, (e)=>{
        e.value = 2877;
    });
    document.cookie = 'screen=' + screen.width+'x'+screen.height;;
    </script>
    <script type="rocketlazyloadscript" data-rocket-type="text/javascript">
(function() {
				var expirationDate = new Date();
				expirationDate.setTime( expirationDate.getTime() + 31536000 * 1000 );
				document.cookie = "pll_language=en; expires=" + expirationDate.toUTCString() + "; path=/; secure; SameSite=Lax";
			}());

</script>
    <script type="rocketlazyloadscript" data-rocket-type="text/javascript">
        jQuery(document).ready(function ($) {

            for (let i = 0; i < document.forms.length; ++i) {
                let form = document.forms[i];
				if ($(form).attr("method") != "get") { $(form).append('<input type="hidden" name="pOtIjhUgPwV" value="Vtg5FZdfq" />'); }
if ($(form).attr("method") != "get") { $(form).append('<input type="hidden" name="EkedGcItu" value="ZMQ0dE[v" />'); }
            }

            $(document).on('submit', 'form', function () {
				if ($(this).attr("method") != "get") { $(this).append('<input type="hidden" name="pOtIjhUgPwV" value="Vtg5FZdfq" />'); }
if ($(this).attr("method") != "get") { $(this).append('<input type="hidden" name="EkedGcItu" value="ZMQ0dE[v" />'); }
                return true;
            });

            jQuery.ajaxSetup({
                beforeSend: function (e, data) {

                    if (data.type !== 'POST') return;

                    if (typeof data.data === 'object' && data.data !== null) {
						data.data.append("pOtIjhUgPwV", "Vtg5FZdfq");
data.data.append("EkedGcItu", "ZMQ0dE[v");
                    }
                    else {
                        data.data = data.data + '&pOtIjhUgPwV=Vtg5FZdfq&EkedGcItu=ZMQ0dE[v';
                    }
                }
            });

        });
    </script>
	<script>window.lazyLoadOptions=[{elements_selector:"img[data-lazy-src],.rocket-lazyload,iframe[data-lazy-src]",data_src:"lazy-src",data_srcset:"lazy-srcset",data_sizes:"lazy-sizes",class_loading:"lazyloading",class_loaded:"lazyloaded",threshold:300,callback_loaded:function(element){if(element.tagName==="IFRAME"&&element.dataset.rocketLazyload=="fitvidscompatible"){if(element.classList.contains("lazyloaded")){if(typeof window.jQuery!="undefined"){if(jQuery.fn.fitVids){jQuery(element).parent().fitVids()}}}}}},{elements_selector:".rocket-lazyload",data_src:"lazy-src",data_srcset:"lazy-srcset",data_sizes:"lazy-sizes",class_loading:"lazyloading",class_loaded:"lazyloaded",threshold:300,}];window.addEventListener('LazyLoad::Initialized',function(e){var lazyLoadInstance=e.detail.instance;if(window.MutationObserver){var observer=new MutationObserver(function(mutations){var image_count=0;var iframe_count=0;var rocketlazy_count=0;mutations.forEach(function(mutation){for(var i=0;i<mutation.addedNodes.length;i++){if(typeof mutation.addedNodes[i].getElementsByTagName!=='function'){continue}
if(typeof mutation.addedNodes[i].getElementsByClassName!=='function'){continue}
images=mutation.addedNodes[i].getElementsByTagName('img');is_image=mutation.addedNodes[i].tagName=="IMG";iframes=mutation.addedNodes[i].getElementsByTagName('iframe');is_iframe=mutation.addedNodes[i].tagName=="IFRAME";rocket_lazy=mutation.addedNodes[i].getElementsByClassName('rocket-lazyload');image_count+=images.length;iframe_count+=iframes.length;rocketlazy_count+=rocket_lazy.length;if(is_image){image_count+=1}
if(is_iframe){iframe_count+=1}}});if(image_count>0||iframe_count>0||rocketlazy_count>0){lazyLoadInstance.update()}});var b=document.getElementsByTagName("body")[0];var config={childList:!0,subtree:!0};observer.observe(b,config)}},!1)</script><script data-no-minify="1" async src="https://regulatedunitedeurope.com/wp-content/plugins/wp-rocket/assets/js/lazyload/17.8.3/lazyload.min.js"></script><script>function lazyLoadThumb(e,alt){var t='<img data-lazy-src="https://i.ytimg.com/vi/ID/hqdefault.jpg" alt="" width="480" height="360"><noscript><img src="https://i.ytimg.com/vi/ID/hqdefault.jpg" alt="" width="480" height="360"></noscript>',a='<button class="play" aria-label="play Youtube video"></button>';t=t.replace('alt=""','alt="'+alt+'"');return t.replace("ID",e)+a}function lazyLoadYoutubeIframe(){var e=document.createElement("iframe"),t="ID?autoplay=1";t+=0===this.parentNode.dataset.query.length?'':'&'+this.parentNode.dataset.query;e.setAttribute("src",t.replace("ID",this.parentNode.dataset.src)),e.setAttribute("frameborder","0"),e.setAttribute("allowfullscreen","1"),e.setAttribute("allow", "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"),this.parentNode.parentNode.replaceChild(e,this.parentNode)}document.addEventListener("DOMContentLoaded",function(){var e,t,p,a=document.getElementsByClassName("rll-youtube-player");for(t=0;t<a.length;t++)e=document.createElement("div"),e.setAttribute("data-id",a[t].dataset.id),e.setAttribute("data-query", a[t].dataset.query),e.setAttribute("data-src", a[t].dataset.src),e.innerHTML=lazyLoadThumb(a[t].dataset.id,a[t].dataset.alt),a[t].appendChild(e),p=e.querySelector('.play'),p.onclick=lazyLoadYoutubeIframe});</script></body>
</html>
<!-- This website is like a Rocket, isn't it? Performance optimized by WP Rocket. Learn more: https://wp-rocket.me - Debug: cached@1722598246 -->