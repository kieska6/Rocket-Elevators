"function"!=typeof Object.create&&(Object.create=function(t){function e(){}return e.prototype=t,new e}),function(t,e,o){var n={init:function(e,o){var n=this;n.$elem=t(o),n.options=t.extend({},t.fn.owlCarousel.options,n.$elem.data(),e),n.userOptions=e,n.loadContent()},loadContent:function(){function e(t){var e,o="";if("function"==typeof n.options.jsonSuccess)n.options.jsonSuccess.apply(this,[t]);else{for(e in t.owl)t.owl.hasOwnProperty(e)&&(o+=t.owl[e].item);n.$elem.html(o)}n.logIn()}var o,n=this;"function"==typeof n.options.beforeInit&&n.options.beforeInit.apply(this,[n.$elem]),"string"==typeof n.options.jsonPath?(o=n.options.jsonPath,t.getJSON(o,e)):n.logIn()},logIn:function(){var t=this;t.$elem.data("owl-originalStyles",t.$elem.attr("style")),t.$elem.data("owl-originalClasses",t.$elem.attr("class")),t.$elem.css({opacity:0}),t.orignalItems=t.options.items,t.checkBrowser(),t.wrapperWidth=0,t.checkVisible=null,t.setVars()},setVars:function(){var t=this;if(0===t.$elem.children().length)return!1;t.baseClass(),t.eventTypes(),t.$userItems=t.$elem.children(),t.itemsAmount=t.$userItems.length,t.wrapItems(),t.$owlItems=t.$elem.find(".owl-item"),t.$owlWrapper=t.$elem.find(".owl-wrapper"),t.playDirection="next",t.prevItem=0,t.prevArr=[0],t.currentItem=0,t.customEvents(),t.onStartup()},onStartup:function(){var t=this;t.updateItems(),t.calculateAll(),t.buildControls(),t.updateControls(),t.response(),t.moveEvents(),t.stopOnHover(),t.owlStatus(),!1!==t.options.transitionStyle&&t.transitionTypes(t.options.transitionStyle),!0===t.options.autoPlay&&(t.options.autoPlay=5e3),t.play(),t.$elem.find(".owl-wrapper").css("display","block"),t.$elem.is(":visible")?t.$elem.css("opacity",1):t.watchVisibility(),t.onstartup=!1,t.eachMoveUpdate(),"function"==typeof t.options.afterInit&&t.options.afterInit.apply(this,[t.$elem])},eachMoveUpdate:function(){var t=this;!0===t.options.lazyLoad&&t.lazyLoad(),!0===t.options.autoHeight&&t.autoHeight(),t.onVisibleItems(),"function"==typeof t.options.afterAction&&t.options.afterAction.apply(this,[t.$elem])},updateVars:function(){var t=this;"function"==typeof t.options.beforeUpdate&&t.options.beforeUpdate.apply(this,[t.$elem]),t.watchVisibility(),t.updateItems(),t.calculateAll(),t.updatePosition(),t.updateControls(),t.eachMoveUpdate(),"function"==typeof t.options.afterUpdate&&t.options.afterUpdate.apply(this,[t.$elem])},reload:function(){var t=this;e.setTimeout(function(){t.updateVars()},0)},watchVisibility:function(){var t=this;if(!1!==t.$elem.is(":visible"))return!1;t.$elem.css({opacity:0}),e.clearInterval(t.autoPlayInterval),e.clearInterval(t.checkVisible),t.checkVisible=e.setInterval(function(){t.$elem.is(":visible")&&(t.reload(),t.$elem.animate({opacity:1},200),e.clearInterval(t.checkVisible))},500)},wrapItems:function(){var t=this;t.$userItems.wrapAll('<div class="owl-wrapper">').wrap('<div class="owl-item"></div>'),t.$elem.find(".owl-wrapper").wrap('<div class="owl-wrapper-outer">'),t.wrapperOuter=t.$elem.find(".owl-wrapper-outer"),t.$elem.css("display","block")},baseClass:function(){var t=this,e=t.$elem.hasClass(t.options.baseClass),o=t.$elem.hasClass(t.options.theme);e||t.$elem.addClass(t.options.baseClass),o||t.$elem.addClass(t.options.theme)},updateItems:function(){var e,o,n=this;if(!1===n.options.responsive)return!1;if(!0===n.options.singleItem)return n.options.items=n.orignalItems=1,n.options.itemsCustom=!1,n.options.itemsDesktop=!1,n.options.itemsDesktopSmall=!1,n.options.itemsTablet=!1,n.options.itemsTabletSmall=!1,n.options.itemsMobile=!1,!1;if((e=t(n.options.responsiveBaseWidth).width())>(n.options.itemsDesktop[0]||n.orignalItems)&&(n.options.items=n.orignalItems),!1!==n.options.itemsCustom)for(n.options.itemsCustom.sort(function(t,e){return t[0]-e[0]}),o=0;o<n.options.itemsCustom.length;o+=1)n.options.itemsCustom[o][0]<=e&&(n.options.items=n.options.itemsCustom[o][1]);else e<=n.options.itemsDesktop[0]&&!1!==n.options.itemsDesktop&&(n.options.items=n.options.itemsDesktop[1]),e<=n.options.itemsDesktopSmall[0]&&!1!==n.options.itemsDesktopSmall&&(n.options.items=n.options.itemsDesktopSmall[1]),e<=n.options.itemsTablet[0]&&!1!==n.options.itemsTablet&&(n.options.items=n.options.itemsTablet[1]),e<=n.options.itemsTabletSmall[0]&&!1!==n.options.itemsTabletSmall&&(n.options.items=n.options.itemsTabletSmall[1]),e<=n.options.itemsMobile[0]&&!1!==n.options.itemsMobile&&(n.options.items=n.options.itemsMobile[1]);n.options.items>n.itemsAmount&&!0===n.options.itemsScaleUp&&(n.options.items=n.itemsAmount)},response:function(){var o,n,i=this;if(!0!==i.options.responsive)return!1;n=t(e).width(),i.resizer=function(){t(e).width()!==n&&(!1!==i.options.autoPlay&&e.clearInterval(i.autoPlayInterval),e.clearTimeout(o),o=e.setTimeout(function(){n=t(e).width(),i.updateVars()},i.options.responsiveRefreshRate))},t(e).resize(i.resizer)},updatePosition:function(){var t=this;t.jumpTo(t.currentItem),!1!==t.options.autoPlay&&t.checkAp()},appendItemsSizes:function(){var e=this,o=0,n=e.itemsAmount-e.options.items;e.$owlItems.each(function(i){var s=t(this);s.css({width:e.itemWidth}).data("owl-item",Number(i)),i%e.options.items!=0&&i!==n||i>n||(o+=1),s.data("owl-roundPages",o)})},appendWrapperSizes:function(){var t=this,e=t.$owlItems.length*t.itemWidth;t.$owlWrapper.css({width:2*e,left:0}),t.appendItemsSizes()},calculateAll:function(){var t=this;t.calculateWidth(),t.appendWrapperSizes(),t.loops(),t.max()},calculateWidth:function(){var t=this;t.itemWidth=Math.round(t.$elem.width()/t.options.items)},max:function(){var t=this,e=-1*(t.itemsAmount*t.itemWidth-t.options.items*t.itemWidth);return t.options.items>t.itemsAmount?(t.maximumItem=0,e=0,t.maximumPixels=0):(t.maximumItem=t.itemsAmount-t.options.items,t.maximumPixels=e),e},min:function(){return 0},loops:function(){var e,o,n=this,i=0,s=0;for(n.positionsInArray=[0],n.pagesInArray=[],e=0;e<n.itemsAmount;e+=1)s+=n.itemWidth,n.positionsInArray.push(-s),!0===n.options.scrollPerPage&&(o=t(n.$owlItems[e]).data("owl-roundPages"))!==i&&(n.pagesInArray[i]=n.positionsInArray[e],i=o)},buildControls:function(){var e=this;!0!==e.options.navigation&&!0!==e.options.pagination||(e.owlControls=t('<div class="owl-controls"/>').toggleClass("clickable",!e.browser.isTouch).appendTo(e.$elem)),!0===e.options.pagination&&e.buildPagination(),!0===e.options.navigation&&e.buildButtons()},buildButtons:function(){var e=this,o=t('<div class="owl-buttons"/>');e.owlControls.append(o),e.buttonPrev=t("<div/>",{"class":"owl-prev",html:e.options.navigationText[0]||""}),e.buttonNext=t("<div/>",{"class":"owl-next",html:e.options.navigationText[1]||""}),o.append(e.buttonPrev).append(e.buttonNext),o.on("touchstart.owlControls mousedown.owlControls",'div[class^="owl"]',function(t){t.preventDefault()}),o.on("touchend.owlControls mouseup.owlControls",'div[class^="owl"]',function(o){o.preventDefault(),t(this).hasClass("owl-next")?e.next():e.prev()})},buildPagination:function(){var e=this;e.paginationWrapper=t('<div class="owl-pagination"/>'),e.owlControls.append(e.paginationWrapper),e.paginationWrapper.on("touchend.owlControls mouseup.owlControls",".owl-page",function(o){o.preventDefault(),Number(t(this).data("owl-page"))!==e.currentItem&&e.goTo(Number(t(this).data("owl-page")),!0)})},updatePagination:function(){var e,o,n,i,s,a,r=this;if(!1===r.options.pagination)return!1;for(r.paginationWrapper.html(""),e=0,o=r.itemsAmount-r.itemsAmount%r.options.items,i=0;i<r.itemsAmount;i+=1)i%r.options.items==0&&(e+=1,o===i&&(n=r.itemsAmount-r.options.items),s=t("<div/>",{"class":"owl-page"}),a=t("<span></span>",{text:!0===r.options.paginationNumbers?e:"","class":!0===r.options.paginationNumbers?"owl-numbers":""}),s.append(a),s.data("owl-page",o===i?n:i),s.data("owl-roundPages",e),r.paginationWrapper.append(s));r.checkPagination()},checkPagination:function(){var e=this;if(!1===e.options.pagination)return!1;e.paginationWrapper.find(".owl-page").each(function(){t(this).data("owl-roundPages")===t(e.$owlItems[e.currentItem]).data("owl-roundPages")&&(e.paginationWrapper.find(".owl-page").removeClass("active"),t(this).addClass("active"))})},checkNavigation:function(){var t=this;if(!1===t.options.navigation)return!1;!1===t.options.rewindNav&&(0===t.currentItem&&0===t.maximumItem?(t.buttonPrev.addClass("disabled"),t.buttonNext.addClass("disabled")):0===t.currentItem&&0!==t.maximumItem?(t.buttonPrev.addClass("disabled"),t.buttonNext.removeClass("disabled")):t.currentItem===t.maximumItem?(t.buttonPrev.removeClass("disabled"),t.buttonNext.addClass("disabled")):0!==t.currentItem&&t.currentItem!==t.maximumItem&&(t.buttonPrev.removeClass("disabled"),t.buttonNext.removeClass("disabled")))},updateControls:function(){var t=this;t.updatePagination(),t.checkNavigation(),t.owlControls&&(t.options.items>=t.itemsAmount?t.owlControls.hide():t.owlControls.show())},destroyControls:function(){var t=this;t.owlControls&&t.owlControls.remove()},next:function(t){var e=this;if(e.isTransition)return!1;if(e.currentItem+=!0===e.options.scrollPerPage?e.options.items:1,e.currentItem>e.maximumItem+(!0===e.options.scrollPerPage?e.options.items-1:0)){if(!0!==e.options.rewindNav)return e.currentItem=e.maximumItem,!1;e.currentItem=0,t="rewind"}e.goTo(e.currentItem,t)},prev:function(t){var e=this;if(e.isTransition)return!1;if(!0===e.options.scrollPerPage&&e.currentItem>0&&e.currentItem<e.options.items?e.currentItem=0:e.currentItem-=!0===e.options.scrollPerPage?e.options.items:1,e.currentItem<0){if(!0!==e.options.rewindNav)return e.currentItem=0,!1;e.currentItem=e.maximumItem,t="rewind"}e.goTo(e.currentItem,t)},goTo:function(t,o,n){var i,s=this;return!s.isTransition&&("function"==typeof s.options.beforeMove&&s.options.beforeMove.apply(this,[s.$elem]),t>=s.maximumItem?t=s.maximumItem:t<=0&&(t=0),s.currentItem=s.owl.currentItem=t,!1!==s.options.transitionStyle&&"drag"!==n&&1===s.options.items&&!0===s.browser.support3d?(s.swapSpeed(0),!0===s.browser.support3d?s.transition3d(s.positionsInArray[t]):s.css2slide(s.positionsInArray[t],1),s.afterGo(),s.singleItemTransition(),!1):(i=s.positionsInArray[t],!0===s.browser.support3d?(s.isCss3Finish=!1,!0===o?(s.swapSpeed("paginationSpeed"),e.setTimeout(function(){s.isCss3Finish=!0},s.options.paginationSpeed)):"rewind"===o?(s.swapSpeed(s.options.rewindSpeed),e.setTimeout(function(){s.isCss3Finish=!0},s.options.rewindSpeed)):(s.swapSpeed("slideSpeed"),e.setTimeout(function(){s.isCss3Finish=!0},s.options.slideSpeed)),s.transition3d(i)):!0===o?s.css2slide(i,s.options.paginationSpeed):"rewind"===o?s.css2slide(i,s.options.rewindSpeed):s.css2slide(i,s.options.slideSpeed),void s.afterGo()))},jumpTo:function(t){var e=this;"function"==typeof e.options.beforeMove&&e.options.beforeMove.apply(this,[e.$elem]),t>=e.maximumItem||-1===t?t=e.maximumItem:t<=0&&(t=0),e.swapSpeed(0),!0===e.browser.support3d?e.transition3d(e.positionsInArray[t]):e.css2slide(e.positionsInArray[t],1),e.currentItem=e.owl.currentItem=t,e.afterGo()},afterGo:function(){var t=this;this.currentItem,t.prevArr.push(t.currentItem),t.prevItem=t.owl.prevItem=t.prevArr[t.prevArr.length-2],t.prevArr.shift(0),t.prevItem!==t.currentItem&&(t.checkPagination(),t.checkNavigation(),t.eachMoveUpdate(),!1!==t.options.autoPlay&&t.checkAp()),"function"==typeof t.options.afterMove&&t.prevItem!==t.currentItem&&t.options.afterMove.apply(this,[t.$elem])},stop:function(){var t=this;t.apStatus="stop",e.clearInterval(t.autoPlayInterval)},checkAp:function(){var t=this;"stop"!==t.apStatus&&t.play()},play:function(){var t=this;if(t.apStatus="play",!1===t.options.autoPlay)return!1;e.clearInterval(t.autoPlayInterval),t.autoPlayInterval=e.setInterval(function(){t.next(!0)},t.options.autoPlay)},swapSpeed:function(t){var e=this;"slideSpeed"===t?e.$owlWrapper.css(e.addCssSpeed(e.options.slideSpeed)):"paginationSpeed"===t?e.$owlWrapper.css(e.addCssSpeed(e.options.paginationSpeed)):"string"!=typeof t&&e.$owlWrapper.css(e.addCssSpeed(t))},addCssSpeed:function(t){return{"-webkit-transition":"all "+t+"ms ease","-moz-transition":"all "+t+"ms ease","-o-transition":"all "+t+"ms ease",transition:"all "+t+"ms ease"}},removeTransition:function(){return{"-webkit-transition":"","-moz-transition":"","-o-transition":"",transition:""}},doTranslate:function(t){return{"-webkit-transform":"translate3d("+t+"px, 0px, 0px)","-moz-transform":"translate3d("+t+"px, 0px, 0px)","-o-transform":"translate3d("+t+"px, 0px, 0px)","-ms-transform":"translate3d("+t+"px, 0px, 0px)",transform:"translate3d("+t+"px, 0px,0px)"}},transition3d:function(t){var e=this;e.$owlWrapper.css(e.doTranslate(t))},css2move:function(t){this.$owlWrapper.css({left:t})},css2slide:function(t,e){var o=this;o.isCssFinish=!1,o.$owlWrapper.stop(!0,!0).animate({left:t},{duration:e||o.options.slideSpeed,complete:function(){o.isCssFinish=!0}})},checkBrowser:function(){var t,n,i,s=this,a="translate3d(0px, 0px, 0px)",r=o.createElement("div"),l=o.documentElement.style;r.style.cssText="  -moz-transform:"+a+"; -ms-transform:"+a+"; -o-transform:"+a+"; -webkit-transform:"+a+"; transform:"+a,t=/translate3d\(0px, 0px, 0px\)/g,r.style.cssText.match(t),n=l.webkitTransition!==undefined||l.MozTransition!==undefined||l.OTransition!==undefined||l.transition!==undefined,i="ontouchstart"in e||e.navigator.msMaxTouchPoints,s.browser={support3d:n,isTouch:i}},moveEvents:function(){var t=this;!1===t.options.mouseDrag&&!1===t.options.touchDrag||(t.gestures(),t.disabledEvents())},eventTypes:function(){var t=this,e=["s","e","x"];t.ev_types={},!0===t.options.mouseDrag&&!0===t.options.touchDrag?e=["touchstart.owl mousedown.owl","touchmove.owl mousemove.owl","touchend.owl touchcancel.owl mouseup.owl"]:!1===t.options.mouseDrag&&!0===t.options.touchDrag?e=["touchstart.owl","touchmove.owl","touchend.owl touchcancel.owl"]:!0===t.options.mouseDrag&&!1===t.options.touchDrag&&(e=["mousedown.owl","mousemove.owl","mouseup.owl"]),t.ev_types.start=e[0],t.ev_types.move=e[1],t.ev_types.end=e[2]},disabledEvents:function(){var e=this;e.$elem.on("dragstart.owl",function(t){t.preventDefault()}),e.$elem.on("mousedown.disableTextSelect",function(e){return t(e.target).is("input, textarea, select, option")})},gestures:function(){function n(t){if(t.touches!==undefined)return{x:t.touches[0].pageX,y:t.touches[0].pageY};if(t.touches===undefined){if(t.pageX!==undefined)return{x:t.pageX,y:t.pageY};if(t.pageX===undefined)return{x:t.clientX,y:t.clientY}}}function i(e){"on"===e?(t(o).on(l.ev_types.move,a),t(o).on(l.ev_types.end,r)):"off"===e&&(t(o).off(l.ev_types.move),t(o).off(l.ev_types.end))}function s(o){var s,a=o.originalEvent||o||e.event;if(3===a.which)return!1;if(!(l.itemsAmount<=l.options.items)){if(!1===l.isCssFinish&&!l.options.dragBeforeAnimFinish)return!1;if(!1===l.isCss3Finish&&!l.options.dragBeforeAnimFinish)return!1;!1!==l.options.autoPlay&&e.clearInterval(l.autoPlayInterval),!0===l.browser.isTouch||l.$owlWrapper.hasClass("grabbing")||l.$owlWrapper.addClass("grabbing"),l.newPosX=0,l.newRelativeX=0,t(this).css(l.removeTransition()),s=t(this).position(),p.relativePos=s.left,p.offsetX=n(a).x-s.left,p.offsetY=n(a).y-s.top,i("on"),p.sliding=!1,p.targetElement=a.target||a.srcElement}}function a(i){var s,a,r=i.originalEvent||i||e.event;l.newPosX=n(r).x-p.offsetX,l.newPosY=n(r).y-p.offsetY,l.newRelativeX=l.newPosX-p.relativePos,"function"==typeof l.options.startDragging&&!0!==p.dragging&&0!==l.newRelativeX&&(p.dragging=!0,l.options.startDragging.apply(l,[l.$elem])),(l.newRelativeX>8||l.newRelativeX<-8)&&!0===l.browser.isTouch&&(r.preventDefault!==undefined?r.preventDefault():r.returnValue=!1,p.sliding=!0),(l.newPosY>10||l.newPosY<-10)&&!1===p.sliding&&t(o).off("touchmove.owl"),s=function(){return l.newRelativeX/5},a=function(){return l.maximumPixels+l.newRelativeX/5},l.newPosX=Math.max(Math.min(l.newPosX,s()),a()),!0===l.browser.support3d?l.transition3d(l.newPosX):l.css2move(l.newPosX)}function r(o){var n,s,a,r=o.originalEvent||o||e.event;r.target=r.target||r.srcElement,p.dragging=!1,!0!==l.browser.isTouch&&l.$owlWrapper.removeClass("grabbing"),l.newRelativeX<0?l.dragDirection=l.owl.dragDirection="left":l.dragDirection=l.owl.dragDirection="right",0!==l.newRelativeX&&(n=l.getNewPosition(),l.goTo(n,!1,"drag"),p.targetElement===r.target&&!0!==l.browser.isTouch&&(t(r.target).on("click.disable",function(e){e.stopImmediatePropagation(),e.stopPropagation(),e.preventDefault(),t(e.target).off("click.disable")}),a=(s=t._data(r.target,"events").click).pop(),s.splice(0,0,a))),i("off")}var l=this,p={offsetX:0,offsetY:0,baseElWidth:0,relativePos:0,position:null,minSwipe:null,maxSwipe:null,sliding:null,dargging:null,targetElement:null};l.isCssFinish=!0,l.$elem.on(l.ev_types.start,".owl-wrapper",s)},getNewPosition:function(){var t=this,e=t.closestItem();return e>t.maximumItem?(t.currentItem=t.maximumItem,e=t.maximumItem):t.newPosX>=0&&(e=0,t.currentItem=0),e},closestItem:function(){var e=this,o=!0===e.options.scrollPerPage?e.pagesInArray:e.positionsInArray,n=e.newPosX,i=null;return t.each(o,function(s,a){n-e.itemWidth/20>o[s+1]&&n-e.itemWidth/20<a&&"left"===e.moveDirection()?(i=a,!0===e.options.scrollPerPage?e.currentItem=t.inArray(i,e.positionsInArray):e.currentItem=s):n+e.itemWidth/20<a&&n+e.itemWidth/20>(o[s+1]||o[s]-e.itemWidth)&&"right"===e.moveDirection()&&(!0===e.options.scrollPerPage?(i=o[s+1]||o[o.length-1],e.currentItem=t.inArray(i,e.positionsInArray)):(i=o[s+1],e.currentItem=s+1))}),e.currentItem},moveDirection:function(){var t,e=this;return e.newRelativeX<0?(t="right",e.playDirection="next"):(t="left",e.playDirection="prev"),t},customEvents:function(){var t=this;t.$elem.on("owl.next",function(){t.next()}),t.$elem.on("owl.prev",function(){t.prev()}),t.$elem.on("owl.play",function(e,o){t.options.autoPlay=o,t.play(),t.hoverStatus="play"}),t.$elem.on("owl.stop",function(){t.stop(),t.hoverStatus="stop"}),t.$elem.on("owl.goTo",function(e,o){t.goTo(o)}),t.$elem.on("owl.jumpTo",function(e,o){t.jumpTo(o)})},stopOnHover:function(){var t=this;!0===t.options.stopOnHover&&!0!==t.browser.isTouch&&!1!==t.options.autoPlay&&(t.$elem.on("mouseover",function(){t.stop()}),t.$elem.on("mouseout",function(){"stop"!==t.hoverStatus&&t.play()}))},lazyLoad:function(){var e,o,n,i,s=this;if(!1===s.options.lazyLoad)return!1;for(e=0;e<s.itemsAmount;e+=1)"loaded"!==(o=t(s.$owlItems[e])).data("owl-loaded")&&(n=o.data("owl-item"),"string"==typeof(i=o.find(".lazyOwl")).data("src")?(o.data("owl-loaded")===undefined&&(i.hide(),o.addClass("loading").data("owl-loaded","checked")),(!0!==s.options.lazyFollow||n>=s.currentItem)&&n<s.currentItem+s.options.items&&i.length&&s.lazyPreload(o,i)):o.data("owl-loaded","loaded"))},lazyPreload:function(t,o){function n(){t.data("owl-loaded","loaded").removeClass("loading"),o.removeAttr("data-src"),"fade"===a.options.lazyEffect?o.fadeIn(400):o.show(),"function"==typeof a.options.afterLazyLoad&&a.options.afterLazyLoad.apply(this,[a.$elem])}function i(){r+=1,a.completeImg(o.get(0))||!0===s?n():r<=100?e.setTimeout(i,100):n()}var s,a=this,r=0;"DIV"===o.prop("tagName")?(o.css("background-image","url("+o.data("src")+")"),s=!0):o[0].src=o.data("src"),i()},autoHeight:function(){function o(){var o=t(s.$owlItems[s.currentItem]).height();s.wrapperOuter.css("height",o+"px"),s.wrapperOuter.hasClass("autoHeight")||e.setTimeout(function(){s.wrapperOuter.addClass("autoHeight")},0)}function n(){i+=1,s.completeImg(a.get(0))?o():i<=100?e.setTimeout(n,100):s.wrapperOuter.css("height","")}var i,s=this,a=t(s.$owlItems[s.currentItem]).find("img");a.get(0)!==undefined?(i=0,n()):o()},completeImg:function(t){return!!t.complete&&("undefined"===typeof t.naturalWidth||0!==t.naturalWidth)},onVisibleItems:function(){var e,o=this;for(!0===o.options.addClassActive&&o.$owlItems.removeClass("active"),o.visibleItems=[],e=o.currentItem;e<o.currentItem+o.options.items;e+=1)o.visibleItems.push(e),!0===o.options.addClassActive&&t(o.$owlItems[e]).addClass("active");o.owl.visibleItems=o.visibleItems},transitionTypes:function(t){var e=this;e.outClass="owl-"+t+"-out",e.inClass="owl-"+t+"-in"},singleItemTransition:function(){function t(t){return{position:"relative",left:t+"px"}}var e=this,o=e.outClass,n=e.inClass,i=e.$owlItems.eq(e.currentItem),s=e.$owlItems.eq(e.prevItem),a=Math.abs(e.positionsInArray[e.currentItem])+e.positionsInArray[e.prevItem],r=Math.abs(e.positionsInArray[e.currentItem])+e.itemWidth/2,l="webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend";e.isTransition=!0,e.$owlWrapper.addClass("owl-origin").css({"-webkit-transform-origin":r+"px","-moz-perspective-origin":r+"px","perspective-origin":r+"px"}),s.css(t(a,10)).addClass(o).on(l,function(){e.endPrev=!0,s.off(l),e.clearTransStyle(s,o)}),i.addClass(n).on(l,function(){e.endCurrent=!0,i.off(l),e.clearTransStyle(i,n)})},clearTransStyle:function(t,e){var o=this;t.css({position:"",left:""}).removeClass(e),o.endPrev&&o.endCurrent&&(o.$owlWrapper.removeClass("owl-origin"),o.endPrev=!1,o.endCurrent=!1,o.isTransition=!1)},owlStatus:function(){var t=this;t.owl={userOptions:t.userOptions,baseElement:t.$elem,userItems:t.$userItems,owlItems:t.$owlItems,currentItem:t.currentItem,prevItem:t.prevItem,visibleItems:t.visibleItems,isTouch:t.browser.isTouch,browser:t.browser,dragDirection:t.dragDirection}},clearEvents:function(){var n=this;n.$elem.off(".owl owl mousedown.disableTextSelect"),t(o).off(".owl owl"),t(e).off("resize",n.resizer)},unWrap:function(){var t=this;0!==t.$elem.children().length&&(t.$owlWrapper.unwrap(),t.$userItems.unwrap().unwrap(),t.owlControls&&t.owlControls.remove()),t.clearEvents(),t.$elem.attr("style",t.$elem.data("owl-originalStyles")||"").attr("class",t.$elem.data("owl-originalClasses"))},destroy:function(){var t=this;t.stop(),e.clearInterval(t.checkVisible),t.unWrap(),t.$elem.removeData()},reinit:function(e){var o=this,n=t.extend({},o.userOptions,e);o.unWrap(),o.init(n,o.$elem)},addItem:function(t,e){var o,n=this;return!!t&&(0===n.$elem.children().length?(n.$elem.append(t),n.setVars(),!1):(n.unWrap(),(o=e===undefined||-1===e?-1:e)>=n.$userItems.length||-1===o?n.$userItems.eq(-1).after(t):n.$userItems.eq(o).before(t),void n.setVars()))},removeItem:function(t){var e,o=this;if(0===o.$elem.children().length)return!1;e=t===undefined||-1===t?-1:t,o.unWrap(),o.$userItems.eq(e).remove(),o.setVars()}};t.fn.owlCarousel=function(e){return this.each(function(){if(!0===t(this).data("owl-init"))return!1;t(this).data("owl-init",!0);var o=Object.create(n);o.init(e,this),t.data(this,"owlCarousel",o)})},t.fn.owlCarousel.options={items:5,itemsCustom:!1,itemsDesktop:[1199,4],itemsDesktopSmall:[979,3],itemsTablet:[768,2],itemsTabletSmall:!1,itemsMobile:[479,1],singleItem:!1,itemsScaleUp:!1,slideSpeed:200,paginationSpeed:800,rewindSpeed:1e3,autoPlay:!1,stopOnHover:!1,navigation:!1,navigationText:["prev","next"],rewindNav:!0,scrollPerPage:!1,pagination:!0,paginationNumbers:!1,responsive:!0,responsiveRefreshRate:200,responsiveBaseWidth:e,baseClass:"owl-carousel",theme:"owl-theme",lazyLoad:!1,lazyFollow:!0,lazyEffect:"fade",autoHeight:!1,jsonPath:!1,jsonSuccess:!1,dragBeforeAnimFinish:!0,mouseDrag:!0,touchDrag:!0,addClassActive:!1,transitionStyle:!1,beforeUpdate:!1,afterUpdate:!1,beforeInit:!1,afterInit:!1,beforeMove:!1,afterMove:!1,afterAction:!1,startDragging:!1,afterLazyLoad:!1}}(jQuery,window,document);