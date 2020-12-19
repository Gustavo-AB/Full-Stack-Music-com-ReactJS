; 
/* 
** Unobtrusive Ajax support library for jQuery 
** Copyright (C) Microsoft Corporation. All rights reserved. 
*/
(function (a) { var b = "unobtrusiveAjaxClick", g = "unobtrusiveValidation"; function c(d, b) { var a = window, c = (d || "").split("."); while (a && c.length) a = a[c.shift()]; if (typeof a === "function") return a; b.push(d); return Function.constructor.apply(null, b) } function d(a) { return a === "GET" || a === "POST" } function f(b, a) { !d(a) && b.setRequestHeader("X-HTTP-Method-Override", a) } function h(c, b, e) { var d; if (e.indexOf("application/x-javascript") !== -1) return; d = (c.getAttribute("data-ajax-mode") || "").toUpperCase(); a(c.getAttribute("data-ajax-update")).each(function (f, c) { var e; switch (d) { case "BEFORE": e = c.firstChild; a("<div />").html(b).contents().each(function () { c.insertBefore(this, e) }); break; case "AFTER": a("<div />").html(b).contents().each(function () { c.appendChild(this) }); break; default: a(c).html(b) } }) } function e(b, e) { var j, k, g, i; j = b.getAttribute("data-ajax-confirm"); if (j && !window.confirm(j)) return; k = a(b.getAttribute("data-ajax-loading")); i = b.getAttribute("data-ajax-loading-duration") || 0; a.extend(e, { type: b.getAttribute("data-ajax-method") || undefined, url: b.getAttribute("data-ajax-url") || undefined, beforeSend: function (d) { var a; f(d, g); a = c(b.getAttribute("data-ajax-begin"), ["xhr"]).apply(this, arguments); a !== false && k.show(i); return a }, complete: function () { k.hide(i); c(b.getAttribute("data-ajax-complete"), ["xhr", "status"]).apply(this, arguments) }, success: function (a, e, d) { h(b, a, d.getResponseHeader("Content-Type") || "text/html"); c(b.getAttribute("data-ajax-success"), ["data", "status", "xhr"]).apply(this, arguments) }, error: c(b.getAttribute("data-ajax-failure"), ["xhr", "status", "error"]) }); e.data.push({ name: "X-Requested-With", value: "XMLHttpRequest" }); g = e.type.toUpperCase(); if (!d(g)) { e.type = "POST"; e.data.push({ name: "X-HTTP-Method-Override", value: g }) } a.ajax(e) } function i(c) { var b = a(c).data(g); return !b || !b.validate || b.validate() } a("a[data-ajax=true]").live("click", function (a) { a.preventDefault(); e(this, { url: this.href, type: "GET", data: [] }) }); a("form[data-ajax=true] input[type=image]").live("click", function (c) { var g = c.target.name, d = a(c.target), f = d.parents("form")[0], e = d.offset(); a(f).data(b, [{ name: g + ".x", value: Math.round(c.pageX - e.left) }, { name: g + ".y", value: Math.round(c.pageY - e.top)}]); setTimeout(function () { a(f).removeData(b) }, 0) }); a("form[data-ajax=true] :submit").live("click", function (c) { var e = c.target.name, d = a(c.target).parents("form")[0]; a(d).data(b, e ? [{ name: e, value: c.target.value}] : []); setTimeout(function () { a(d).removeData(b) }, 0) }); a("form[data-ajax=true]").live("submit", function (d) { var c = a(this).data(b) || []; d.preventDefault(); if (!i(this)) return; e(this, { url: this.action, type: this.method || "GET", data: c.concat(a(this).serializeArray()) }) }) })(jQuery);
; 
/**
 * jQuery Validation Plugin 1.8.1
 *
 * http://bassistance.de/jquery-plugins/jquery-plugin-validation/
 * http://docs.jquery.com/Plugins/Validation
 *
 * Copyright (c) 2006 - 2011 Jörn Zaefferer
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */
(function(c){c.extend(c.fn,{validate:function(a){if(this.length){var b=c.data(this[0],"validator");if(b)return b;b=new c.validator(a,this[0]);c.data(this[0],"validator",b);if(b.settings.onsubmit){this.find("input, button").filter(".cancel").click(function(){b.cancelSubmit=true});b.settings.submitHandler&&this.find("input, button").filter(":submit").click(function(){b.submitButton=this});this.submit(function(d){function e(){if(b.settings.submitHandler){if(b.submitButton)var f=c("<input type='hidden'/>").attr("name",
b.submitButton.name).val(b.submitButton.value).appendTo(b.currentForm);b.settings.submitHandler.call(b,b.currentForm);b.submitButton&&f.remove();return false}return true}b.settings.debug&&d.preventDefault();if(b.cancelSubmit){b.cancelSubmit=false;return e()}if(b.form()){if(b.pendingRequest){b.formSubmitted=true;return false}return e()}else{b.focusInvalid();return false}})}return b}else a&&a.debug&&window.console&&console.warn("nothing selected, can't validate, returning nothing")},valid:function(){if(c(this[0]).is("form"))return this.validate().form();
else{var a=true,b=c(this[0].form).validate();this.each(function(){a&=b.element(this)});return a}},removeAttrs:function(a){var b={},d=this;c.each(a.split(/\s/),function(e,f){b[f]=d.attr(f);d.removeAttr(f)});return b},rules:function(a,b){var d=this[0];if(a){var e=c.data(d.form,"validator").settings,f=e.rules,g=c.validator.staticRules(d);switch(a){case "add":c.extend(g,c.validator.normalizeRule(b));f[d.name]=g;if(b.messages)e.messages[d.name]=c.extend(e.messages[d.name],b.messages);break;case "remove":if(!b){delete f[d.name];
return g}var h={};c.each(b.split(/\s/),function(j,i){h[i]=g[i];delete g[i]});return h}}d=c.validator.normalizeRules(c.extend({},c.validator.metadataRules(d),c.validator.classRules(d),c.validator.attributeRules(d),c.validator.staticRules(d)),d);if(d.required){e=d.required;delete d.required;d=c.extend({required:e},d)}return d}});c.extend(c.expr[":"],{blank:function(a){return!c.trim(""+a.value)},filled:function(a){return!!c.trim(""+a.value)},unchecked:function(a){return!a.checked}});c.validator=function(a,
b){this.settings=c.extend(true,{},c.validator.defaults,a);this.currentForm=b;this.init()};c.validator.format=function(a,b){if(arguments.length==1)return function(){var d=c.makeArray(arguments);d.unshift(a);return c.validator.format.apply(this,d)};if(arguments.length>2&&b.constructor!=Array)b=c.makeArray(arguments).slice(1);if(b.constructor!=Array)b=[b];c.each(b,function(d,e){a=a.replace(RegExp("\\{"+d+"\\}","g"),e)});return a};c.extend(c.validator,{defaults:{messages:{},groups:{},rules:{},errorClass:"error",
validClass:"valid",errorElement:"p",focusInvalid:true,errorContainer:c([]),errorLabelContainer:c([]),onsubmit:true,ignore:[],ignoreTitle:false,onfocusin:function(a){this.lastActive=a;if(this.settings.focusCleanup&&!this.blockFocusCleanup){this.settings.unhighlight&&this.settings.unhighlight.call(this,a,this.settings.errorClass,this.settings.validClass);this.addWrapper(this.errorsFor(a)).hide()}},onfocusout:function(a){if(!this.checkable(a)&&(a.name in this.submitted||!this.optional(a)))this.element(a)},
onkeyup:function(a){if(a.name in this.submitted||a==this.lastElement)this.element(a)},onclick:function(a){if(a.name in this.submitted)this.element(a);else a.parentNode.name in this.submitted&&this.element(a.parentNode)},highlight:function(a,b,d){a.type==="radio"?this.findByName(a.name).addClass(b).removeClass(d):c(a).addClass(b).removeClass(d)},unhighlight:function(a,b,d){a.type==="radio"?this.findByName(a.name).removeClass(b).addClass(d):c(a).removeClass(b).addClass(d)}},setDefaults:function(a){c.extend(c.validator.defaults,
a)},messages:{required:"This field is required.",remote:"Please fix this field.",email:"Please enter a valid email address.",url:"Please enter a valid URL.",date:"Please enter a valid date.",dateISO:"Please enter a valid date (ISO).",number:"Please enter a valid number.",digits:"Please enter only digits.",creditcard:"Please enter a valid credit card number.",equalTo:"Please enter the same value again.",accept:"Please enter a value with a valid extension.",maxlength:c.validator.format("Please enter no more than {0} characters."),
minlength:c.validator.format("Please enter at least {0} characters."),rangelength:c.validator.format("Please enter a value between {0} and {1} characters long."),range:c.validator.format("Please enter a value between {0} and {1}."),max:c.validator.format("Please enter a value less than or equal to {0}."),min:c.validator.format("Please enter a value greater than or equal to {0}.")},autoCreateRanges:false,prototype:{init:function(){function a(e){var f=c.data(this[0].form,"validator");e="on"+e.type.replace(/^validate/,
"");f.settings[e]&&f.settings[e].call(f,this[0])}this.labelContainer=c(this.settings.errorLabelContainer);this.errorContext=this.labelContainer.length&&this.labelContainer||c(this.currentForm);this.containers=c(this.settings.errorContainer).add(this.settings.errorLabelContainer);this.submitted={};this.valueCache={};this.pendingRequest=0;this.pending={};this.invalid={};this.reset();var b=this.groups={};c.each(this.settings.groups,function(e,f){c.each(f.split(/\s/),function(g,h){b[h]=e})});var d=this.settings.rules;
c.each(d,function(e,f){d[e]=c.validator.normalizeRule(f)});c(this.currentForm).validateDelegate(":text, :password, :file, select, textarea","focusin focusout keyup",a).validateDelegate(":radio, :checkbox, select, option","click",a);this.settings.invalidHandler&&c(this.currentForm).bind("invalid-form.validate",this.settings.invalidHandler)},form:function(){this.checkForm();c.extend(this.submitted,this.errorMap);this.invalid=c.extend({},this.errorMap);this.valid()||c(this.currentForm).triggerHandler("invalid-form",
[this]);this.showErrors();return this.valid()},checkForm:function(){this.prepareForm();for(var a=0,b=this.currentElements=this.elements();b[a];a++)this.check(b[a]);return this.valid()},element:function(a){this.lastElement=a=this.clean(a);this.prepareElement(a);this.currentElements=c(a);var b=this.check(a);if(b)delete this.invalid[a.name];else this.invalid[a.name]=true;if(!this.numberOfInvalids())this.toHide=this.toHide.add(this.containers);this.showErrors();return b},showErrors:function(a){if(a){c.extend(this.errorMap,
a);this.errorList=[];for(var b in a)this.errorList.push({message:a[b],element:this.findByName(b)[0]});this.successList=c.grep(this.successList,function(d){return!(d.name in a)})}this.settings.showErrors?this.settings.showErrors.call(this,this.errorMap,this.errorList):this.defaultShowErrors()},resetForm:function(){c.fn.resetForm&&c(this.currentForm).resetForm();this.submitted={};this.prepareForm();this.hideErrors();this.elements().removeClass(this.settings.errorClass)},numberOfInvalids:function(){return this.objectLength(this.invalid)},
objectLength:function(a){var b=0,d;for(d in a)b++;return b},hideErrors:function(){this.addWrapper(this.toHide).hide()},valid:function(){return this.size()==0},size:function(){return this.errorList.length},focusInvalid:function(){if(this.settings.focusInvalid)try{c(this.findLastActive()||this.errorList.length&&this.errorList[0].element||[]).filter(":visible").focus().trigger("focusin")}catch(a){}},findLastActive:function(){var a=this.lastActive;return a&&c.grep(this.errorList,function(b){return b.element.name==
a.name}).length==1&&a},elements:function(){var a=this,b={};return c(this.currentForm).find("input, select, textarea").not(":submit, :reset, :image, [disabled]").not(this.settings.ignore).filter(function(){!this.name&&a.settings.debug&&window.console&&console.error("%o has no name assigned",this);if(this.name in b||!a.objectLength(c(this).rules()))return false;return b[this.name]=true})},clean:function(a){return c(a)[0]},errors:function(){return c(this.settings.errorElement+"."+this.settings.errorClass,
this.errorContext)},reset:function(){this.successList=[];this.errorList=[];this.errorMap={};this.toShow=c([]);this.toHide=c([]);this.currentElements=c([])},prepareForm:function(){this.reset();this.toHide=this.errors().add(this.containers)},prepareElement:function(a){this.reset();this.toHide=this.errorsFor(a)},check:function(a){a=this.clean(a);if(this.checkable(a))a=this.findByName(a.name).not(this.settings.ignore)[0];var b=c(a).rules(),d=false,e;for(e in b){var f={method:e,parameters:b[e]};try{var g=
c.validator.methods[e].call(this,a.value.replace(/\r/g,""),a,f.parameters);if(g=="dependency-mismatch")d=true;else{d=false;if(g=="pending"){this.toHide=this.toHide.not(this.errorsFor(a));return}if(!g){this.formatAndAdd(a,f);return false}}}catch(h){this.settings.debug&&window.console&&console.log("exception occured when checking element "+a.id+", check the '"+f.method+"' method",h);throw h;}}if(!d){this.objectLength(b)&&this.successList.push(a);return true}},customMetaMessage:function(a,b){if(c.metadata){var d=
this.settings.meta?c(a).metadata()[this.settings.meta]:c(a).metadata();return d&&d.messages&&d.messages[b]}},customMessage:function(a,b){var d=this.settings.messages[a];return d&&(d.constructor==String?d:d[b])},findDefined:function(){for(var a=0;a<arguments.length;a++)if(arguments[a]!==undefined)return arguments[a]},defaultMessage:function(a,b){return this.findDefined(this.customMessage(a.name,b),this.customMetaMessage(a,b),!this.settings.ignoreTitle&&a.title||undefined,c.validator.messages[b],"<strong>Warning: No message defined for "+
a.name+"</strong>")},formatAndAdd:function(a,b){var d=this.defaultMessage(a,b.method),e=/\$?\{(\d+)\}/g;if(typeof d=="function")d=d.call(this,b.parameters,a);else if(e.test(d))d=jQuery.format(d.replace(e,"{$1}"),b.parameters);this.errorList.push({message:d,element:a});this.errorMap[a.name]=d;this.submitted[a.name]=d},addWrapper:function(a){if(this.settings.wrapper)a=a.add(a.parent(this.settings.wrapper));return a},defaultShowErrors:function(){for(var a=0;this.errorList[a];a++){var b=this.errorList[a];
this.settings.highlight&&this.settings.highlight.call(this,b.element,this.settings.errorClass,this.settings.validClass);this.showLabel(b.element,b.message)}if(this.errorList.length)this.toShow=this.toShow.add(this.containers);if(this.settings.success)for(a=0;this.successList[a];a++)this.showLabel(this.successList[a]);if(this.settings.unhighlight){a=0;for(b=this.validElements();b[a];a++)this.settings.unhighlight.call(this,b[a],this.settings.errorClass,this.settings.validClass)}this.toHide=this.toHide.not(this.toShow);
this.hideErrors();this.addWrapper(this.toShow).show()},validElements:function(){return this.currentElements.not(this.invalidElements())},invalidElements:function(){return c(this.errorList).map(function(){return this.element})},showLabel:function(a,b){var d=this.errorsFor(a);if(d.length){d.removeClass().addClass(this.settings.errorClass);d.attr("generated")&&d.html(b)}else{d=c("<"+this.settings.errorElement+"/>").attr({"for":this.idOrName(a),generated:true}).addClass(this.settings.errorClass).html(b||
"");if(this.settings.wrapper)d=d.hide().show().wrap("<"+this.settings.wrapper+"/>").parent();this.labelContainer.append(d).length||(this.settings.errorPlacement?this.settings.errorPlacement(d,c(a)):d.insertAfter(a))}if(!b&&this.settings.success){d.text("");typeof this.settings.success=="string"?d.addClass(this.settings.success):this.settings.success(d)}this.toShow=this.toShow.add(d)},errorsFor:function(a){var b=this.idOrName(a);return this.errors().filter(function(){return c(this).attr("for")==b})},
idOrName:function(a){return this.groups[a.name]||(this.checkable(a)?a.name:a.id||a.name)},checkable:function(a){return/radio|checkbox/i.test(a.type)},findByName:function(a){var b=this.currentForm;return c(document.getElementsByName(a)).map(function(d,e){return e.form==b&&e.name==a&&e||null})},getLength:function(a,b){switch(b.nodeName.toLowerCase()){case "select":return c("option:selected",b).length;case "input":if(this.checkable(b))return this.findByName(b.name).filter(":checked").length}return a.length},
depend:function(a,b){return this.dependTypes[typeof a]?this.dependTypes[typeof a](a,b):true},dependTypes:{"boolean":function(a){return a},string:function(a,b){return!!c(a,b.form).length},"function":function(a,b){return a(b)}},optional:function(a){return!c.validator.methods.required.call(this,c.trim(a.value),a)&&"dependency-mismatch"},startRequest:function(a){if(!this.pending[a.name]){this.pendingRequest++;this.pending[a.name]=true}},stopRequest:function(a,b){this.pendingRequest--;if(this.pendingRequest<
0)this.pendingRequest=0;delete this.pending[a.name];if(b&&this.pendingRequest==0&&this.formSubmitted&&this.form()){c(this.currentForm).submit();this.formSubmitted=false}else if(!b&&this.pendingRequest==0&&this.formSubmitted){c(this.currentForm).triggerHandler("invalid-form",[this]);this.formSubmitted=false}},previousValue:function(a){return c.data(a,"previousValue")||c.data(a,"previousValue",{old:null,valid:true,message:this.defaultMessage(a,"remote")})}},classRuleSettings:{required:{required:true},
email:{email:true},url:{url:true},date:{date:true},dateISO:{dateISO:true},dateDE:{dateDE:true},number:{number:true},numberDE:{numberDE:true},digits:{digits:true},creditcard:{creditcard:true}},addClassRules:function(a,b){a.constructor==String?this.classRuleSettings[a]=b:c.extend(this.classRuleSettings,a)},classRules:function(a){var b={};(a=c(a).attr("class"))&&c.each(a.split(" "),function(){this in c.validator.classRuleSettings&&c.extend(b,c.validator.classRuleSettings[this])});return b},attributeRules:function(a){var b=
{};a=c(a);for(var d in c.validator.methods){var e=a.attr(d);if(e)b[d]=e}b.maxlength&&/-1|2147483647|524288/.test(b.maxlength)&&delete b.maxlength;return b},metadataRules:function(a){if(!c.metadata)return{};var b=c.data(a.form,"validator").settings.meta;return b?c(a).metadata()[b]:c(a).metadata()},staticRules:function(a){var b={},d=c.data(a.form,"validator");if(d.settings.rules)b=c.validator.normalizeRule(d.settings.rules[a.name])||{};return b},normalizeRules:function(a,b){c.each(a,function(d,e){if(e===
false)delete a[d];else if(e.param||e.depends){var f=true;switch(typeof e.depends){case "string":f=!!c(e.depends,b.form).length;break;case "function":f=e.depends.call(b,b)}if(f)a[d]=e.param!==undefined?e.param:true;else delete a[d]}});c.each(a,function(d,e){a[d]=c.isFunction(e)?e(b):e});c.each(["minlength","maxlength","min","max"],function(){if(a[this])a[this]=Number(a[this])});c.each(["rangelength","range"],function(){if(a[this])a[this]=[Number(a[this][0]),Number(a[this][1])]});if(c.validator.autoCreateRanges){if(a.min&&
a.max){a.range=[a.min,a.max];delete a.min;delete a.max}if(a.minlength&&a.maxlength){a.rangelength=[a.minlength,a.maxlength];delete a.minlength;delete a.maxlength}}a.messages&&delete a.messages;return a},normalizeRule:function(a){if(typeof a=="string"){var b={};c.each(a.split(/\s/),function(){b[this]=true});a=b}return a},addMethod:function(a,b,d){c.validator.methods[a]=b;c.validator.messages[a]=d!=undefined?d:c.validator.messages[a];b.length<3&&c.validator.addClassRules(a,c.validator.normalizeRule(a))},
methods:{required:function(a,b,d){if(!this.depend(d,b))return"dependency-mismatch";switch(b.nodeName.toLowerCase()){case "select":return(a=c(b).val())&&a.length>0;case "input":if(this.checkable(b))return this.getLength(a,b)>0;default:return c.trim(a).length>0}},remote:function(a,b,d){if(this.optional(b))return"dependency-mismatch";var e=this.previousValue(b);this.settings.messages[b.name]||(this.settings.messages[b.name]={});e.originalMessage=this.settings.messages[b.name].remote;this.settings.messages[b.name].remote=
e.message;d=typeof d=="string"&&{url:d}||d;if(this.pending[b.name])return"pending";if(e.old===a)return e.valid;e.old=a;var f=this;this.startRequest(b);var g={};g[b.name]=a;c.ajax(c.extend(true,{url:d,mode:"abort",port:"validate"+b.name,dataType:"json",data:g,success:function(h){f.settings.messages[b.name].remote=e.originalMessage;var j=h===true;if(j){var i=f.formSubmitted;f.prepareElement(b);f.formSubmitted=i;f.successList.push(b);f.showErrors()}else{i={};h=h||f.defaultMessage(b,"remote");i[b.name]=
e.message=c.isFunction(h)?h(a):h;f.showErrors(i)}e.valid=j;f.stopRequest(b,j)}},d));return"pending"},minlength:function(a,b,d){return this.optional(b)||this.getLength(c.trim(a),b)>=d},maxlength:function(a,b,d){return this.optional(b)||this.getLength(c.trim(a),b)<=d},rangelength:function(a,b,d){a=this.getLength(c.trim(a),b);return this.optional(b)||a>=d[0]&&a<=d[1]},min:function(a,b,d){return this.optional(b)||a>=d},max:function(a,b,d){return this.optional(b)||a<=d},range:function(a,b,d){return this.optional(b)||
a>=d[0]&&a<=d[1]},email:function(a,b){return this.optional(b)||/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test(a)},
url:function(a,b){return this.optional(b)||/^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(a)},
date:function(a,b){return this.optional(b)||!/Invalid|NaN/.test(new Date(a))},dateISO:function(a,b){return this.optional(b)||/^\d{4}[\/-]\d{1,2}[\/-]\d{1,2}$/.test(a)},number:function(a,b){return this.optional(b)||/^-?(?:\d+|\d{1,3}(?:,\d{3})+)(?:\.\d+)?$/.test(a)},digits:function(a,b){return this.optional(b)||/^\d+$/.test(a)},creditcard:function(a,b){if(this.optional(b))return"dependency-mismatch";if(/[^0-9-]+/.test(a))return false;var d=0,e=0,f=false;a=a.replace(/\D/g,"");for(var g=a.length-1;g>=
0;g--){e=a.charAt(g);e=parseInt(e,10);if(f)if((e*=2)>9)e-=9;d+=e;f=!f}return d%10==0},accept:function(a,b,d){d=typeof d=="string"?d.replace(/,/g,"|"):"png|jpe?g|gif";return this.optional(b)||a.match(RegExp(".("+d+")$","i"))},equalTo:function(a,b,d){d=c(d).unbind(".validate-equalTo").bind("blur.validate-equalTo",function(){c(b).valid()});return a==d.val()}}});c.format=c.validator.format})(jQuery);
(function(c){var a={};if(c.ajaxPrefilter)c.ajaxPrefilter(function(d,e,f){e=d.port;if(d.mode=="abort"){a[e]&&a[e].abort();a[e]=f}});else{var b=c.ajax;c.ajax=function(d){var e=("port"in d?d:c.ajaxSettings).port;if(("mode"in d?d:c.ajaxSettings).mode=="abort"){a[e]&&a[e].abort();return a[e]=b.apply(this,arguments)}return b.apply(this,arguments)}}})(jQuery);
(function(c){!jQuery.event.special.focusin&&!jQuery.event.special.focusout&&document.addEventListener&&c.each({focus:"focusin",blur:"focusout"},function(a,b){function d(e){e=c.event.fix(e);e.type=b;return c.event.handle.call(this,e)}c.event.special[b]={setup:function(){this.addEventListener(a,d,true)},teardown:function(){this.removeEventListener(a,d,true)},handler:function(e){arguments[0]=c.event.fix(e);arguments[0].type=b;return c.event.handle.apply(this,arguments)}}});c.extend(c.fn,{validateDelegate:function(a,
b,d){return this.bind(b,function(e){var f=c(e.target);if(f.is(a))return d.apply(f,arguments)})}})})(jQuery);

; 
var fbits = {
  //Configurações do ecommerce
  ecommerce: {
    nome: 'Made in Brazil',
    urlEcommerce: 'https://www.madeinbrazil.com.br/',
    urlCarrinho: 'https://checkout.madeinbrazil.com.br/',
    urlRecursos: 'https://recursos.madeinbrazil.com.br/',
    urlImplantacao: '',
    urlImplantacaoCarrinho: '',
    urlRequest: '{{fbits.ecommerce.urlRequest}}',
    urlCustom: 'https://pub-custom.fbits.net/api/checkout',
    nomeModificado: 'madeinbrazil'
  },
  parceiro:{
      _parceiroAtivo: null
  },
  //Configurações do google analytics
  google: {
    analytics: {
      id: 'UA-102019484-1',
      domain: 'madeinbrazil.com.br'
    }
  },
  search: {
      placeholder: 'O que você procura?'
  }
}

$(function () {
    if (document.cookie.indexOf('fbits-manutencao') >= 0)
        $("#fbits-hora").show();
});
; 
/// <reference path="jquery-1.8.3.min.js" />

/*!
* JavaScript fbits.produto.atributos Library v1.0.0
* Copyright 2012, Fbits e-Partner Business
*
* Modificado 
* Date: 04/09/2012
* Por: Maykol Rypka
* 
*Funções:
*		adicionaEventosASelecaoAtributos
*   appendHtmlSelectedAttrGroup
*		carregarOpcoes
*		changeEventsSelQuantidade
*		checkOpcoesSelecionadas
*   initProdutoAtributos
*   hideErrors
*   removeHtmlSelectedAttrGroup		
*		selectedUnits
*   showError
*		showSelectedUnits
*/
var Fbits = Fbits || { __namespace: true };
Fbits.Produto = Fbits.Produto || { __namespace: true };
Fbits.Produto.Atributos = Fbits.Produto.Atributos || {};
Fbits.Produto.Atributos.urlAtualizar = fbits.ecommerce.urlEcommerce + 'Produto/AtualizarProduto';

/**
* Para identificar as classes no visual studio
*/
Fbits.Produto.Atributos.__class = true

//Variaveis
var caminhoProdutoDetalhe = ""; //Caminho Action Atualizar
var produtoId = 0; //Id do produto em questão
var btnRemove = "divRemoveItem-";
var labelErroPartialId = 'mensagem-erro-';

//Configurações das escolhas do produto
var htmlProductOptions = '';
var divOpcoesPartialId = 'divOpcoes-';
var selectAtributoPartialId = 'selAtributo-';
var divItensComboPartialId = 'divItensCombo-';

var divBtnRemove = document.createElement('div');
$(divBtnRemove).attr('id', 'divRemoveItem');
$(divBtnRemove).attr('class', 'delete');
$(divBtnRemove).html('<span>Excluir Seleção</span>');

var divMsgErro = document.createElement('div');
$(divMsgErro).attr('id', 'divMsgErro');
$(divMsgErro).attr('class', 'erro');
$(divMsgErro).text('Você selecionou uma quantidade acima do permitido. Por favor verifique.');

//Adiciona o novo elementento abaixo do elemento passado como parametro.
function appendHtmlSelectedAttrGroup(beforeElement) {
    var divOpcoesId = $(beforeElement).attr('id');
    var divOpcoesContador = parseInt(divOpcoesId.replace(divOpcoesPartialId, ''));
    var tempHtml = htmlProductOptions.clone().addClass('opcoesProdutosFirst');

    tempHtml.attr('id', divOpcoesPartialId + (divOpcoesContador + 1));
    tempHtml.find('#divRemoveItem').attr('id', btnRemove + (divOpcoesContador + 1));

    //tempHtml.find('[id^="' + divItensComboPartialId + '"]').append(labelErro());
    var msgErroNovoId = tempHtml.find('[id^="' + labelErroPartialId + '"]').attr('id').replace(labelErroPartialId, '');
    tempHtml.find('[id^="' + labelErroPartialId + '"]').attr('id', labelErroPartialId + (parseInt(msgErroNovoId) + 1));

    $(beforeElement).after(tempHtml);

    changeEventsSelQuantidade();
}

/*
* A cada mudança de seleção de qualquer uma das comboboxes das 
* opções de produto, realiza uma requisição AJAX
* passando o código do produto (Grade) e as opções selecionadas.
* No retorno da chamada AJAX, atualiza os dados do produto e dos
* atributos	nas "Selects"
*/
function carregarOpcoes(elementOpcoes) {

    if (elementOpcoes.href != undefined) {
        if ($(elementOpcoes).find('div[data-valoratributo]').length > 0)
            elementOpcoes = $(elementOpcoes).find('div[data-valoratributo]');
        else
            return;
    }

    //VARIAVEIS
    var produtoId = $('#hdnProdutoId').val();
    var atributoProduto = [];
    var atributoSelecionado = "";
    var opcaoSelecionada = 0;
    var comboSelecionado = 0;
    var grupoAtributos = 0;
    var optionString = "Selecione";
    var isThumb = false;
    var produtoVarianteIdAdicional = 0;
    var isCompreJunto = false;

    //INICIALIZAÇÃO DAS VARIAVEIS
    var domOpcoes = $(elementOpcoes);
    opcaoSelecionada = domOpcoes.parents('div[id^="divOpcoes-"]').attr('id').replace('divOpcoes-', '');
    comboSelecionado = domOpcoes.parents('li[id^="liComboItem-"]').attr('id').replace('liComboItem-', '');
    produtoId = domOpcoes.parents('div[id^="dvGrupoSelecaoAtributos-"]').find('input[id="hdnProdutoId"]').val();
    ///troca do id da div do produto

    var assinaturaSelecionada = $("input[name=tipo-produto]:radio:checked", domOpcoes.parents('[id^=produto-item]')).val()

    if (!assinaturaSelecionada)
        assinaturaSelecionada = false;

    if (domOpcoes.is('select')) { // domopcoes é o objeto select.
        domOpcoes = domOpcoes.children("option:selected")  // atribui o "option" selecionado para o domOpcoes.
    }

    // Marca o valor dos outros atributo como não selecionado.
    domOpcoes.parents('[data-codigoatributo]').find('[data-valoratributo]').attr("data-atributoSelecionado", "False");

    // Marca o valor do atributo atual como selecionado.
    domOpcoes.attr('data-atributoSelecionado', 'True');

    //Verifica se é um tumb, somente quando selecionar dados do veja tambem ou compre junto.
    if (domOpcoes.parents('div[id^="spotVejaTambem-"]').length > 0) {
        produtoId = domOpcoes.parents('div[id^="divSpotProdutoRecomendado"]').find('input[id="hdnProdutoId"]').val();

        //Verifica id do produto variante, somente para o veja tambem ou compre junto.
        var idSpotRecomendadoSelecionado = domOpcoes.parents('div[id^="spotVejaTambem-"]').attr('id');
        $.each(domOpcoes
            .parents('[id^=liGrupoProduto]')
            .find('div[id^="spotVejaTambem-"]'), function (index, item) {
                if ($(item).attr('id') != idSpotRecomendadoSelecionado) {
                    produtoVarianteIdAdicional = $(item).find('#hdnProdutoVarianteId').val();
                }
            });

        if (domOpcoes.parents('div[id^="spotVejaTambem-"]').find('div[id^="divFotosProduto-"]').length > 0) {
            isThumb = domOpcoes.parents('div[id^="spotVejaTambem-"]').find('div[id^="divFotosProduto-"]').attr('data-isthumb');
            isThumb = (isThumb == 'undefined' || isThumb == undefined) ? false : isThumb;
        }
    }

    //Pega os dados dos elementos do combo.
    domOpcoes
        .parents('li[id^="liComboItem-' + comboSelecionado + '"]')
        .find('[data-codigoatributo]')
        .each(function () {
            //$(this) = elemento da iteração

            var codigoAtributo = $(this).attr('data-codigoAtributo');
            var valorAtributo = 'Selecione';

            if ($(this).find('[data-atributoSelecionado="True"]').length == 1) {
                valorAtributo = $($(this).find('[data-atributoSelecionado="True"]')[0]).attr('data-valoratributo');
            }

            atributoProduto.push(valorAtributo + ";" + codigoAtributo);
        });



    // Último elemento selecionado.
    if (domOpcoes.attr('data-valorAtributo') != "") {

        var valorAtributo = domOpcoes.attr('data-valorAtributo');
        var codigoAtributo = domOpcoes.parent().attr('data-codigoAtributo');
        if (domOpcoes.attr('data-produtoId') != "" && domOpcoes.attr('data-produtoId') != undefined) {
            produtoId = domOpcoes.attr('data-produtoId');
        }

        if (codigoAtributo == undefined)
            codigoAtributo = domOpcoes.parents('[data-codigoatributo]').attr('data-codigoatributo');

        atributoSelecionado = valorAtributo + ";" + codigoAtributo;
    }

    // Indica se a seleção se refere aos atributos principais da página do produto (E não de produtos relacionados, lista de desejos, etc).
    var isPagProduto = false;

    if (domOpcoes.parents('li[id^="liComboItem-' + comboSelecionado + '"]').find('[data-atributospagproduto="True"]').length > 0)
        isPagProduto = true;

    //Verifica se elemento contem div compre junto
    if (domOpcoes.parents('div[id^="divCompreJunto"]').length > 0) {
        isThumb = true;
        isCompreJunto = true;
        isPagProduto = false;
    }
    var quantidade = 1;
    var sellerId = 0;

    if ((typeof isBuyBox !== 'undefined' && isBuyBox.toLocaleLowerCase() == "true") && $("input[name='checkBuyBox']:checked").length > 0) {
        sellerId = $("input[name='checkBuyBox']:checked").data("resellerid");
    }

    //if ($("#item-quantidade-1").length > 0)
    //    quantidade = $("#item-quantidade-1").val();

    if ($('[id^="item-quantidade-"]').length > 0)
        quantidade = $('[id^="item-quantidade-"]').val();

    //seta o valor do produto id caso tenha mudado 
    domOpcoes.parents('div[id^="dvGrupoSelecaoAtributos-"]').find('input[id="hdnProdutoId"]').val(produtoId);
    domOpcoes.parents("[id^=produto-item]").first()[0].id = "produto-item-0-" + produtoId;
    if ($("#hdnProdutoId").first().val() != produtoId)
        domOpcoes.parents('div[id^="dvGrupoSelecaoAtributos-"]').first()[0].id = "dvGrupoSelecaoAtributos-" + produtoId;

    $.ajax({
        type: 'POST',
        url: Fbits.Produto.Atributos.urlAtualizar,
        data: {
            "atributoProduto": atributoProduto.join("|")
            , "atributoSelecionado": atributoSelecionado
            , "produtoId": produtoId
            , "comboIdSelecionado": comboSelecionado
            , "opcaoParalelaSelecionada": opcaoSelecionada
            , "optionString": optionString
            , "isThumb": isThumb
            , "produtoVarianteIdAdicional": produtoVarianteIdAdicional
            , "assinaturaSelecionada": assinaturaSelecionada
            , "isPagProduto": isPagProduto
            , "quantidade": quantidade
            , "sellerId": sellerId
        },
        success: function (data) {

            if (data.redirecionar)
                window.location = data.urlRedirecionamento;

            // Se o produto variante estiver indisponível, desabilita o botão de compra
            if (data.disponivel) {
                $('[id^=produto-comprar-]', domOpcoes).show();
                $('body').removeClass('fbits-produto-indisponivel');
            }
            else {
                $('[id^=produto-comprar-]', domOpcoes).hide();
            }

            ////Verifica a necessidade de renderizar as views opcionais
            if (data.renderizarOpcao) {
                // substitui o sku do produto
                if (!isCompreJunto)
                    domOpcoes.parents('div[id^="produto-item"]').find(".fbits-sku").html("SKU " + data.SKU);

                if ($("#componentePrecoCalculado.fbits-preco-calculado-precopor").length > 0 && data.precoCalculado != "") {
                    $("#componentePrecoCalculado.fbits-preco-calculado-precopor #spanPrecoCalculadoComponente").text(data.precoCalculado);
                }

                if ($("#componentePrecoCalculado.fbits-preco-calculado-precodesconto").length > 0 && data.precoCalculadoComDesconto != "") {
                    $("#componentePrecoCalculado.fbits-preco-calculado-precodesconto #spanPrecoCalculadoComponente").text(data.precoCalculadoComDesconto);
                }

                if ($("#fbits-buyBox").length > 0 && data.partialBuyBox != "") {
                    $("#fbits-buyBox").replaceWith(data.partialBuyBox);
                }

                if (isThumb) {
                    // Verifica se é compre junto do tipo produto
                    if (domOpcoes.parents('div[id^="spotVejaTambem-"]').length > 0) {
                        //Verifica se é a mesma foto, se for não recarrega.
                        var fotoProdutoThumbId = domOpcoes.parents('div[id^="spotVejaTambem-"]').find('div[id^="divFotosProduto"]').find('input[id="FotoProdutoId"]').val();

                        // Verifica se o produto variante está indisponível, imprimindo a div "avisoIndisponivel", senão imprime as formas de pagamento
                        if (data.fotoProdutoId != fotoProdutoThumbId) {
                            domOpcoes.parents('div[id^="spotVejaTambem-"]').find('div[id^="divFotosProduto-"]').html(data.partialImagens);
                        }
                        domOpcoes.parents('div[id^="spotVejaTambem-"]').find('[id^="produto-nome-"]').text(data.nomeProdutoVariante);

                        domOpcoes.parents('div[id^="spotVejaTambem-"]').find('#hdnProdutoVarianteId').val(data.produtoVarianteId).trigger('change');
                        var opcaoResult = domOpcoes.parents('div[id^="divOpcoes-"]').attr("id").replace("divOpcoes-", "");
                        domOpcoes.parents('div[id^="spotVejaTambem-"]').find('#hdnProdutoVarianteId-' + opcaoResult).val(data.produtoVarianteId);

                        var valorTotalProdutos = 0;

                        domOpcoes.parents('[id^=liGrupoProduto]').find('span[id="spnValorTotal"]').text(data.precoProduto);
                        domOpcoes.parents('[id^=liGrupoProduto]').find('span[id="spnValorTotalParcelado"]').text(data.precoProdutoParcelado);

                    } else {
                        var fotoProdutoThumbId = domOpcoes.parents('div[id^="produto-item-"]').first().find("#divFotosProduto-Principal").find('input[id="FotoProdutoId"]').val();
                        // Verifica se o produto variante está indisponível, imprimindo a div "avisoIndisponivel", senão imprime as formas de pagamento
                        if (data.fotoProdutoId != fotoProdutoThumbId) {
                            domOpcoes.parents('div[id^="produto-item-"]').first().find("#divFotosProduto-Principal").html(data.partialImagens);
                        }

                        if (novoCheckout) {
                            var opcaoResult = domOpcoes.parents('div[id^="divOpcoes-"]').attr("id").replace("divOpcoes-", "");
                            domOpcoes.parents('div[id^="produto-item-"]').first().find("#hdnProdutoVarianteId-" + opcaoResult).val(data.produtoVarianteId).trigger('change');
                        }
                        else
                            domOpcoes.parents('div[id^="produto-item-"]').first().find("#hdnProdutoVarianteId-").val(data.produtoVarianteId).trigger('change');

                        // Atualiza o nome do produto variante.
                        domOpcoes.parents('[id^="produto-item-"]').first().find('[id^="produto-nome-"]').text(data.nomeProdutoVariante);
                        var valorTotalProdutos = 0;
                        domOpcoes.parents('[id^=liGrupoProduto]').find('span[id="spnValorTotal"]').text(data.precoProduto);
                        domOpcoes.parents('[id^=liGrupoProduto]').find('span[id="spnValorTotalParcelado"]').text(data.precoProdutoParcelado);
                    }

                } else {


                    // Atualiza o hidden do produtoVarianteId
                    if (novoCheckout) {
                        var opcaoResult = domOpcoes.parents('div[id^="divOpcoes-"]').attr("id").replace("divOpcoes-", "");
                        domOpcoes.parents('div[id^="produto-item-"]').first().find("#hdnProdutoVarianteId-" + opcaoResult).val(data.produtoVarianteId).trigger('change');
                    }
                    else
                        domOpcoes.parents('div[id^="produto-item-"]').first().find('[id^="hdnProdutoVarianteId-"]').first().val(data.produtoVarianteId).trigger('change');


                    // Atualiza o nome do produto variante.
                    domOpcoes.parents('[id^="produto-item-"]').first().find('[id^="produto-nome-"]').first().text(data.nomeProdutoVariante);

                    domOpcoes.parents('[id^="produto-item-"]').first().find('[id^="produto-pagamentoparcelamento-"]').html(data.partialParcelamentoPadrao);
                    domOpcoes.parents('[id^="produto-item-"]').first().find('[id^="fbits-componente-parcelamento-"]').html(data.partialParcelamento);
                    adicionaEventoParcelamento();

                    //Verifica se é a mesma foto, se for não recarrega. 
                    //          var fotoProdutoId = domOpcoes.parents('div[id^="produto-item-"]').find('div[id="divFotosProduto"]').find('input[id="FotoProdutoId"]').val();
                    var fotoProdutoId = domOpcoes.parents('[id^="produto-item-"]').find('[id^="produto-imagem-"]').find('input[id="FotoProdutoId"]').val();
                    /*if (domOpcoes.parents('[id^="produto-item-"]').first().find('[id^="produto-imagem-"]').length > 0)
                        fotoProdutoId = */

                    if (data.fotoProdutoId != fotoProdutoId) {
                        domOpcoes.parents('[id^="produto-item-"]').find('[id^="produto-imagem-"]').html(data.partialImagens);

                        if ($('#zoomImagemProduto').length > 0) {
                            adicionaEventosImagens();
                            adicionaEventosImagensModal();
                        }
                    }

                    //TODO: VERIFICAR CÓDIGO REPLICADO: PAGINA DE PRODUTO UTILIZANDO O MÉTODO ANTIGO DE INCLUIR PRODUTO NO CARRINHO.
                    // Se produto variante não estiver disponível, substitui a divFormaPagamento pela avisoIndisponivel
                }

                atualizaPartialGateway(data, produtoId);
                // Combinação de atributos não existe em nenhum variante.
                if (data.combinacaoInexistente != "") {
                    showCombinacaoIndexistente(domOpcoes.parents('[id^="produto-item-"]'), data);
                }
                else {
                    if (typeof isBuyBox !== 'undefined' && isBuyBox.toLocaleLowerCase() == "false") {
                        if (data.disponivel) {
                            if (isCompreJunto)
                                showComprar(domOpcoes.parents('[id^="produto-item-"]').first(), data);
                            else {
                                var el = domOpcoes.parents('[id^="produto-item-"]');
                                el.find('[id^="combinacao-inexistente"]').first().hide();
                                if (window.location.href.includes("checkout") && el.find('[id^="produto-variante"]').length != 0) {
                                    el = el.find('[id^="produto-variante"]');
                                }

                                showComprar(el, data);
                            }
                        }
                        else {
                            showAviseme(domOpcoes.parents('[id^="produto-item-"]').first(), data);
                        }
                    }
                }
            }

            domOpcoes.parents('[id^="produto-item-"]').find('[id^="produto-variante"]').html(data.partialComplete);

            //Tem 3 tipos de quantidade, só estava mudando o 1
            if (domOpcoes.parents('[id^="produto-item-"]').find('[id^="item-quantidade-"]').first().length > 0) {
                domOpcoes.parents('[id^="produto-item-"]').find('[id^="item-quantidade-"]').first().focus();
                domOpcoes.parents('[id^="produto-item-"]').find('[id^="item-quantidade-"]').first().val('');
                domOpcoes.parents('[id^="produto-item-"]').find('[id^="item-quantidade-"]').first().val(quantidade);
            }
            //if (domOpcoes.parents('[id^="produto-item-"]').find('[id=item-quantidade-1]').length > 0) {
            //    domOpcoes.parents('[id^="produto-item-"]').find('[id=item-quantidade-1]').val(quantidade);
            //}
            

            //Eventos comprar do produto
            $('[id^=produto-botao-comprar-]').unbind('click');
            if ($(elementOpcoes).closest("div[id^='produto-modal-']").length > 0) {
                $('[id^=produto-botao-comprar-]').bind('click', function () {
                    comprarProdutoModal($(this).parents('[id^="produto-item-"]'), true, $(this));
                });
            } else {
                $('[id^=produto-botao-comprar-]').bind('click', function () {
                    comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), "botaoComprar");
                });
            }

            $('[id^=produto-servico-botao-comprar-]').unbind('click');
            $('[id^=produto-servico-botao-comprar-]').bind('click', function () {
                comprarComServico($(this).parents('[id^="produto-servico-item-"]'), true, $(this));
            });
            //Eventos comprar do produto
            $('[id^=produto-assinatura-botao-comprar-]').unbind('click');
            $('[id^=produto-assinatura-botao-comprar-]').bind('click', function () {                
                if (novoCheckout) {
                    if (vincularAssinaturaRecorrencia) {
                        vincularAssinaturaRecorrencia();
                    }
                    comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), "botaoComprar");
                } else {
                    comprarComAssinatura($(this).parents('[id^="produto-item-"]'), true, $(this));
                }
            });

            $('#msgEstoqueDisponivel').html(data.msgEstoqueDisponivel);
            //Retorna a partialView de opções
            domOpcoes.parents('div[id^="divOpcoes-"]').find('li[id^="liComboItem-' + comboSelecionado + '"]').html(data.partialAtributos);

            // atribui o evento de carrossel nas imagens do mobile
            if ($("#imagensProduto") != null && $("#imagensProduto").children().length > 1) {
                $("#imagensProduto").slidesjs(produtoArgs());
            }

            /*Imagens e vídeo*/
            $('[id="thumbItem"]').click(function () {
                clickImagemThumb(this);
            });

            if (typeof details_shim !== 'undefined' && $.isFunction(details_shim)) { details_shim.init(); }

            if (typeof (atualizaEtiquetaAtacado) !== typeof (undefined))
                atualizaEtiquetaAtacado(data);

            ajustaTamanhoDivCores();

            $.each(loadEvents, function (_, f) { f(); });
        }

    });

} // FIM carregarOpcoes

function ajustaTamanhoDivCores() {
    for (var i = 0; i < $('[class*="valorAtributo valorAtributoCor"]').length; i++) {
        var url = $('[class*="valorAtributo valorAtributoCor"]')[i].style.background.split("=")
        var newUrl = url[0] + "=" + url[1] + "=" + $('[class*="valorAtributo valorAtributoCor"]')[0].scrollWidth + url[2].substring(url[2].indexOf("&")) + "=" + $('[class*="valorAtributoCor"]')[0].scrollHeight + "\")";
        $('[class*="valorAtributo valorAtributoCor"]')[i].style.background = newUrl;
    }
}

function atualizaPartialGateway(data, produtoId) {
    if ($('div[id^="produto-parcelamento-gateway"]').length > 0) {
        var urlAtualizaBoleto = fbits.ecommerce.urlEcommerce + 'Produto/AtualizarProdutoVarianteBoleto';
        var precoPor = data.precoProduto.replace(" ", "").replace("R$", "").replace(".", "").replace(",", ".");
        precoPor = parseFloat(precoPor);
        //$('div[id^="produto-variante"').first().find('class=precoPor').val();
        $("div[id^='produto-parcelamento-gateway-']").each(function (index) {
            var grupo = $(this);
            var config = grupo.data('componente-fbits-config');

            $.ajax({
                type: 'POST',
                url: urlAtualizaBoleto,
                data: JSON.stringify({ "produtoId": produtoId, "config": config, "precoPor": precoPor }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (data) {
                    if (data.ParcelamentoGateway.trim() != "") {
                        grupo.replaceWith(data.ParcelamentoGateway);

                        $(".summary").click(function (event) {
                            $(this).parent().find('.details-content').slideToggle(200);
                            $(this).parent().find('.details-content').prev().toggleClass("opened");

                            event.stopImmediatePropagation();
                        });
                    }
                }
            });

        });
    }
}
/**
* Mostra o combinação inexistente na pagina de produtos, lista de desejos e carrinho
*/
function showCombinacaoIndexistente(produtoItemElement, data) {
    //Site: Pagina de produto.
    produtoItemElement.find('[id^=produto-comprar-]').hide();
    produtoItemElement.find('[id^="produto-aviseme-"]').hide();
    produtoItemElement.find('[id^="combinacao-inexistente"]').replaceWith(data.combinacaoInexistente);
    produtoItemElement.find('[id^="combinacao-inexistente"]').show();
    produtoItemElement.find('[id^=produto-servicos-]').hide();
    produtoItemElement.find('[id=fbits-produto-promocao-divulgacao]').hide();

    produtoItemElement.find('[id^="produto-botao-adicionar-carrinho-"]').hide();

    //Site: Lista de desejos.
    produtoItemElement.find('td[id^=produto-preco-]').replaceWith(data.combinacaoInexistente);
    produtoItemElement.find('[id^="produto-comprar-"]').hide();

    //Carrinho: Produto brinde.
    produtoItemElement.find('[id^=produto-brinde-quantidade-]').hide();
    produtoItemElement.find('[id^=produto-brinde-validar-]').hide();
    produtoItemElement.find('[id^=produto-brinde-texto-]').hide();
    produtoItemElement.find('[id^=produto-brinde-combinacao-inexistente-]').show();
    produtoItemElement.find('[id^=produto-brinde-aviseme-]').hide();

    //Produto: Produto recomendado.
    produtoItemElement.find('[id^=produto-recomendado-aviseme-]').hide();
    produtoItemElement.find('[id^=produto-recomendado-comprar-]').hide();
    produtoItemElement.find('[id^=produto-recomendado-combinacao-inexistente-]').show();
}

function adicionaEventoParcelamento() {
    var togView = false;
    $("#summary").on('click', function () {
        if (togView == false) {
            $(this).parent().find('.details-content').slideToggle(200);
            $(this).parent().find('.details-content').prev().toggleClass("opened");
            togView = true;
            return false;
        }
        togView = false;
    });
}

/**
* Mostra o avise-me na pagina de produtos, lista de desejos e carrinho
*/
function showAviseme(produtoItemElement, data) {
    //Generico
    produtoItemElement.find('[id^=produto-comprar-]').hide();
    $('.fbits-comprar[data-componente-fbits-id=27]').hide();

    //Site: Pagina de produto.
    produtoItemElement.find('[id="divFormaPagamento"]').replaceWith(data.partialFormaPagamento);
    produtoItemElement.find('[id^="produto-aviseme-"]').replaceWith(data.partialAviseMe);
    produtoItemElement.find('[id^="produto-aviseme-"]').show();
    produtoItemElement.find('[id^="combinacao-inexistente"]').hide();
    produtoItemElement.find('[id^=produto-servicos-]').hide();
    produtoItemElement.find('[id=fbits-produto-promocao-divulgacao]').hide();
    //atualiza preço do produto mesmo quando estiver indisponível
    $('.fbits-preco[data-componente-fbits-id=26]').replaceWith(data.partialPreco);

    //Site: Lista de desejos.
    produtoItemElement.find('[id^=produto-preco-]').replaceWith(data.partialAviseMe);
    produtoItemElement.find('[id^="produto-comprar-"]').hide();

    //Carrinho: Produto brinde.
    produtoItemElement.find('[id^=produto-brinde-quantidade-]').hide();
    produtoItemElement.find('[id^=produto-brinde-validar-]').hide();
    produtoItemElement.find('[id^=produto-brinde-texto-]').hide();
    produtoItemElement.find('[id^=produto-brinde-combinacao-inexistente-]').hide();

    produtoItemElement.find('[id^=produto-brinde-aviseme-]').html(data.partialAviseMe);
    produtoItemElement.find('[id^=produto-brinde-aviseme-]').show();

    //Produto: Produto recomendado.
    produtoItemElement.find('[id^=produto-recomendado-aviseme-]').html(data.partialAviseMe);
    produtoItemElement.find('[id^=produto-recomendado-aviseme-]').show();
    produtoItemElement.find('[id^=produto-recomendado-comprar-]').hide();
    produtoItemElement.find('[id^=produto-recomendado-combinacao-inexistente-]').hide();
}

/**
* Mostra as opçoes de compra do produto e esconde views como avise-me e combinação inexistente.
*/
function showComprar(produtoItemElement, data) {
    //Genericos
    produtoItemElement.find('[id^=produto-comprar-]').show();
    $('.fbits-comprar[data-componente-fbits-id=27]').show();

    //Site: Pagina de produto.
    produtoItemElement.find('[id="divFormaPagamento"]').replaceWith(data.partialFormaPagamento);
    $('.fbits-preco[data-componente-fbits-id=26]').replaceWith(data.partialPreco);
    //produtoItemElement.find('[id^="produto-pagamentoparcelamento-"]').html(data.partialParcelamentoPadrao);

    if (produtoItemElement.find('div[id="precoCompreJuntoPorProduto"]').length == 1)
        produtoItemElement.find('div[id="precoCompreJuntoPorProduto"]').html(data.partialFormaPagamento);

    if (Fbits.Evento && Fbits.Evento.TemEventoAtivo && data.partialBotaoComprar !== undefined)
        produtoItemElement.find("[id^=produto-comprar-]").first().replaceWith(data.partialBotaoComprar);

    produtoItemElement.find('[id^=produto-servicos-]').html(data.partialServicos);
    produtoItemElement.find('[id=fbits-produto-promocao-divulgacao]').show();
    produtoItemElement.find('[id=fbits-produto-promocao-divulgacao]').html(data.partialDivulgacao);
    produtoItemElement.find('[id=fbits-div-preco-off]').html(data.partialDesconto);

    $("[id^=produto-servico-botao-comprar-]").unbind("click");
    $("[id^=produto-servico-botao-comprar-]").bind("click", function () {
        comprarComServico($(this).parents('[id^="produto-servico-item-"]'), true, $(this));
    });

    produtoItemElement.find('[id^="produto-aviseme-"]').hide();
    produtoItemElement.find('[id^="combinacao-inexistente"]').hide();

    //Site: Lista de desejos.
    produtoItemElement.find('[id^=produto-preco-]').html(data.partialFormaPagamento);
    produtoItemElement.find('td[id^="produto-preco-"]').attr('colspan', 1);

    //Carrinho: Produto brinde.
    produtoItemElement.find('[id^=produto-brinde-quantidade-]').show();
    produtoItemElement.find('[id^=produto-brinde-validar-]').show();
    produtoItemElement.find('[id^=produto-brinde-texto-]').show();
    produtoItemElement.find('[id^=produto-servicos-]').show();
    produtoItemElement.find('[id^=produto-brinde-aviseme-]').hide();
    produtoItemElement.find('[id^=produto-brinde-combinacao-inexistente-]').hide();

    //Produto: Produto recomendado.
    produtoItemElement.find('[id^=produto-recomendado-aviseme-]').hide();
    produtoItemElement.find('[id^=produto-recomendado-combinacao-inexistente-]').hide();
    produtoItemElement.find('[id^=produto-recomendado-comprar-]').show();

    produtoItemElement.find('[id^="produto-botao-adicionar-carrinho-"]').show();
}

//Elemento do change dos atributos
function changeEventsSelQuantidade() {

    $('div[id="' + $(divBtnRemove).attr('id') + '"]').unbind();
    $('div[id^="' + $(divBtnRemove).attr('id') + '"]').click(function () { removeProductOptions(this); });


    //Atribui evento de change nos selects de quantidade
    $('div[id^="dvGrupoSelecaoAtributos"]').find('select[id="selQuantidade"]').unbind('change');


    $('div[id^="dvGrupoSelecaoAtributos"]')
        .find('select[id="selQuantidade"]')
        .change(function () {
            var domGrupoSelecaoAtributos = $(this).parents('div[id^="dvGrupoSelecaoAtributos-"]');
            var ultimaQuantidadeSelecionada = $(this).val();
            var quantidadeSelecionada = selectedUnits(domGrupoSelecaoAtributos);
            var quantidadePermitida = $(this).parents('div[id^="divItensCombo-"]').find('input[id^="hdnMaxItemCombo-"]').val();
            var quantidadeNaoSelecionada = $(domGrupoSelecaoAtributos).children('div[id^="' + divOpcoesPartialId + '"]').find('select[id="selQuantidade"][value="0"] :selected ').length;

            showSelectedUnits(quantidadeSelecionada);
            if (quantidadePermitida > 0) {
                if (ultimaQuantidadeSelecionada > 0) {
                    if (quantidadeSelecionada < quantidadePermitida) {

                        if (quantidadeNaoSelecionada <= 0) {
                            appendHtmlSelectedAttrGroup($(this).parents('div[id^="' + divOpcoesPartialId + '"]').first());

                        }
                    }
                    else {
                        if (quantidadeNaoSelecionada > 0) {
                            removeHtmlSelectedAttrGroup(this);
                        }
                    }

                    //Insere a frase de erro
                    if (quantidadeSelecionada > quantidadePermitida && quantidadePermitida > 0 /*&& $(this).parents('div[id^="divItensCombo-"]').children('div[id="' + $(divMsgErro).attr('id') + '"]').length <= 0*/) {
                        //$(this).parents('div[id^="divItensCombo-"]').after(divMsgErro).fadeIn('slow', 100);
                        showError($(this).parents('div[id^="divItensCombo-"]'), 'Você selecionou uma quantidade acima do permitido. Por favor verifique.');
                        if (quantidadeNaoSelecionada > 0) {
                            removeHtmlSelectedAttrGroup(this);
                        }
                    }
                }
                else {
                    if (quantidadeSelecionada >= quantidadePermitida) {
                        if (quantidadeNaoSelecionada > 0) {
                            removeHtmlSelectedAttrGroup(this);
                        }
                    }
                    else {
                        if (quantidadeNaoSelecionada > 1) {
                            removeHtmlSelectedAttrGroup(this);
                        }
                    }
                }

                if ($('div[id^="' + btnRemove + '"]').length >= $('div[id^="' + divOpcoesPartialId + '"]').length) {
                    $('div[id^="' + btnRemove + '"]').first().remove();
                }
            }
        });
}

/**
* Valida as opções selecionadas.
*/
function checkOpcoesSelecionadas(domGrupoSelecaoAtributos) {
    var quantidadeSelecionada = selectedUnits(domGrupoSelecaoAtributos);                                       //Quantidade selecionada
    var quantidadePermitida = $(domGrupoSelecaoAtributos).find('input[id^="hdnMaxItemCombo-"]').first().val(); //Limite de compra utilizado para produtos combo

    //Validação para kits de produtos
    if (quantidadePermitida > 0) {
        if (quantidadeSelecionada == 0) {
            showError($(domGrupoSelecaoAtributos).find('[id^="' + labelErroPartialId + '"]').last(), "Por favor selecione as opções para completar este Produto.");
            return false;
        } else if (quantidadeSelecionada > quantidadePermitida) {
            showError($(domGrupoSelecaoAtributos).find('[id^="' + labelErroPartialId + '"]').last(), "Você deve selecionar no máximo " + quantidadePermitida + " opções para completar este Produto.");
            return false;
        } else if (quantidadeSelecionada < quantidadePermitida) {
            showError($(domGrupoSelecaoAtributos).find('[id^="' + labelErroPartialId + '"]').last(), "Por favor selecione mais " + (quantidadePermitida - quantidadeSelecionada) + " opções para completar este Produto.");
            return false;
        } else {
            if ($(domGrupoSelecaoAtributos).find('select[id^="selAtributo-"][value="Selecione"] :selected').length > 0) {
                showError($(domGrupoSelecaoAtributos).find('[id^="' + labelErroPartialId + '"]').last(), "Por favor selecione as opções para completar este Produto.");
                return false;
            }
        }
    }
    return true;
}

/**
* Método responsavel por esconder mensagens de erro
* @method hideErrors
*/
function hideErrors() {
    $('[id^="' + labelErroPartialId + '"]').html('').fadeOut('slow');
}

//Inicializa a pagina de produtos, carregando o zoom se necessario e adicionando a função as dropdown
function initProdutoAtributos() {
    var domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]');
    if (domGrupoSelecaoAtributos.find('#hdnQuantidadeOpcoes').val() == 1) {
        var atrbs = domGrupoSelecaoAtributos.find('#divOpcoes-0').find('.optionAtributos');
        if (atrbs.length == 0) {
            domGrupoSelecaoAtributos.find('#divOpcoes-0').find("#selQuantidade[value=0]").val(1);
            domGrupoSelecaoAtributos.find('#divOpcoes-0').find("#selQuantidade option[value=0]").hide();
            showSelectedUnits(1);
        }
    }
    changeEventsSelQuantidade();

    //Copia o html de opções dos produtos
    htmlProductOptions = $('div[id^="' + divOpcoesPartialId + '"]').first().clone();
    htmlProductOptions.find('div[id^="divItensCombo-"]').children().first().before(divBtnRemove);


} // FIM InitProduto

//Remove os atributos - Verificar
function removeHtmlSelectedAttrGroup(obj) {
    $(obj).parents('div[id^="dvGrupoSelecaoAtributos-"]').children('div[id^="' + divOpcoesPartialId + '"]')
        .find('select[id="selQuantidade"][value="0"] :selected ')
        .last()
        .parents('div[id^="' + divOpcoesPartialId + '"]')
        .remove();
}

/**
* Método responsável por remover as div´s de opções de atributos.
* @method removeProductOptions
*/
function removeProductOptions(btnRemoveElement) {
    $(btnRemoveElement).parents('div[id^="' + divOpcoesPartialId + '"]').remove();
    showSelectedUnits(selectedUnits());
}

/**
* Método responsavel por demonstrar as mensagens de erro na tela.
* @method showError
*/
function showError(errorObj, msg) {
    var obj;
    var objId = errorObj.attr('id');

    if (obj == undefined && objId == undefined) {
        obj = $("#mensagem-erro");
    }
    else {
        if (objId.replace(labelErroPartialId) != objId) {
            obj = errorObj;
        }
        else {
            obj = errorObj.parents('[id^="' + divOpcoesPartialId + '"]').find('[id^="' + labelErroPartialId + '"]');
        }
    }

    obj.first().stop().html(msg).fadeTo('slow', 1.0).delay(7000).fadeOut('slow');
}

/**
* Método responsável por verificar a quantidade de produtos selecionados.
* @method selectedUnits
*/
function selectedUnits(domGrupoSelecaoAtributos) {
    var quantidade = 0;
    $(domGrupoSelecaoAtributos).find('[id="selQuantidade"]').each(function (index) {
        if ($(this).val() == undefined || $(this).val() == 'undefined' || $(this).val() < 0) quantidade = 0;
        quantidade += parseInt($(this).val());
    });

    return quantidade;
}

/**
* Método responsável por demonstrar a quantidade de produtos selecionada selecionada.
* @method selectedUnits
*/
function showSelectedUnits(quantidade) {
    $('div[id="productAmount-Principal"]').find('span[id="spnQuantidade"]').text(quantidade);
}

/*
* Atualiza o preço de atacado do produto quando não tem mais de uma variante
*/
function atualizarPrecoAtacado(quantidadeSelecionada) {

    var quantidade = 1;
    var produtoId = $('#hdnProdutoId').val();
    var produtoVarianteId = $('div[id^="produto-item-"]').first().find('[id^="hdnProdutoVarianteId-"]').first().val();

    //if ($("#item-quantidade-1").length > 0) {
    //    quantidade = $("#item-quantidade-1").val();
    //}

    //if ($("#item-quantidade-2").length > 0) {
    //    quantidade = $("#item-quantidade-2").val();
    //}

    if ($(quantidadeSelecionada).length > 0) {
        quantidade = $(quantidadeSelecionada).val();
    }

    $.ajax({
        type: 'POST',
        url: fbits.ecommerce.urlEcommerce + 'Produto/AtualizarPrecoAtacado',
        data: {
            "produtoId": produtoId,
            "quantidade": quantidade,
            "produtoVarianteId": produtoVarianteId
        },
        success: function (data) {
            //$('[id^="produto-item-"]').find('[id=item-quantidade-1]').val(quantidade);
            if (data.disponivel) {
                showComprar($('[id^="produto-item-"]').eq(0), data);
            }

            if (typeof (atualizaEtiquetaAtacado) !== typeof (undefined))
                atualizaEtiquetaAtacado(data);

        }
    });
    if ($('[data-atributoselecionado="True"]').first().length > 0 && $('[id^="divOpcoes-"]').first().is(":hidden") == false) {
        carregarOpcoes($('[data-atributoselecionado="True"]').first());
    }   
    
}

//Adiciona eventos...
$(function () {
    //Função responsavel por adicionar os eventos relacionados aos atributos
    $('body').on('change', 'select[data-codigoatributo]', function (event) {
        carregarOpcoes(this);
    }); // Os elementos select.
    $('body').on('click', 'div[data-codigoatributo] > * > *', function (event) {
        event.preventDefault();
        carregarOpcoes(this);
    }); // Todas as opções div.

    $("body").on("change", "#item-quantidade-1", function () {
        if (Fbits.Produto.EtiquetaAtacado.length > 0)
            atualizarPrecoAtacado(this);
    });

    $("body").on("keyup", "#item-quantidade-2", function () {
        if (Fbits.Produto.EtiquetaAtacado.length > 0)
            atualizarPrecoAtacado(this);
    });
});
; 
$(window).load(function () {
    //
    //  por Rossano M. Szczepanski em 23/02/2015
    //
    //  A chamada do componente slider foi colocada dentro do evento load da página pois o mesmo deverá ser exibido
    //  somente quando todas as imagens já estiverem carregadas. Este procedimento corrige o bug da altura do banner 
    //  apenas na exibição em modo mobile.
    //
    // caso necessário incluir banner rotativo utilizar adicionar o script jquery.slides.min.js
    if ($.fn.slidesjs) {
        var imageHeight = 0;
        // se temos imagens -- Tem flash tbm
        if ($('[data-banner="centro"]>').length > 1) {

            // alteramos a visualização do bloco
            $('[data-banner="centro"] img').css('display', 'block');

            // informamos que o bloco é um slide
            $('[data-banner="centro"]').slidesjs();

            if ($('.fbits-banner-mobile-centro img').length && $('.fbits-banner-mobile-centro img').first().height() > 0) {
                imageHeight = $('.fbits-banner-mobile-centro img').first().height() + 10;

                $('.slidesjs-container', '[data-banner="centro"]').height(imageHeight);

                //Criado para o safari do ios, pois o mesmo fica redimensionando os banners.
                $(window).resize(function () {
                    $('.slidesjs-container', '[data-banner="centro"]').height(imageHeight);
                });
            }

            // se temos ao menos um item
            if ($('.fbits-banner-centro img').first()) {
                // se a altura é maior que 0
                if ($('.fbits-banner-centro img').first().height() > 0) {
                    $('.slidesjs-container', '[data-banner="centro"]').height($('.fbits-banner-centro img').first().height() + 10);
                }
                // se a largura é maior que 0
                if ($('.fbits-banner-centro img').first().width() > 0) {
                    $('.slidesjs-container', '[data-banner="centro"]').width($('.fbits-banner-centro img').first().width() + 10);
                }
            }

        }
        if ($("#imagensProduto") != null && $("#imagensProduto").children().length > 1)
            $("#imagensProduto").slidesjs(produtoArgs());

        //$('.fbits-produto-imagensMinicarrossel').slidesjs({
        //  navigation: { active: true, effect: "slide" },
        //  pagination: { active: false },
        //  width: 400,
        //  height: 40
        //});
    }

    
    var tipoCarrossel = null;//Seta a configuração do carrossel como linear por default  // Marlon 07/01/2016 - linear não existe no novo plugin, null deixa wrap desligado (que é o mesmo comportamento do linear da versão anterior)
    tipoCarrossel = $("#tipoCarrossel").val() != undefined ? $("#tipoCarrossel").val() : tipoCarrossel;
    if ($('div[id=carrossel-fabricantes]').length >= 1 && $.fn.jcarousel)
    {

        $('div[id=carrossel-fabricantes]').jcarousel({ wrap: tipoCarrossel });

        $('.bt-prev-fab')
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '-=3'
            });

        $('.bt-next-fab')
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '+=3'
            });
    }

    //Controle do carrossel do historico de já vistos
    if ($('.fbits-carrossel-historico').length > 0) {

        $('.fbits-carrossel-historico').jcarousel({ wrap: 'circular' });

        $('.jsCarrousel-prev-historico')
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '-=2'
            });

        $('.jsCarrousel-next-historico')
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '+=2'
            });
    }

    });


// CustomSelect - http://adam.co/lab/jquery/customselect/
; (function (a) { a.fn.extend({ customSelect: function (b) { var c = { customClass: null, mapClass: true, mapStyle: true }, d = function (f, i) { var e = f.find(":selected"), h = i.children(":first"), g = e.html() || "&nbsp;"; h.html(g); setTimeout(function () { i.removeClass("customSelectOpen") }, 60) }; if (typeof document.body.style.maxHeight === "undefined") { return this } b = a.extend(c, b); return this.each(function () { var e = a(this), g = a('<span class="customSelectInner" />'), f = a('<span class="customSelect" />'); f.append(g); e.after(f); if (b.customClass) { f.addClass(b.customClass) } if (b.mapClass) { f.addClass(e.attr("class")) } if (b.mapStyle) { f.attr("style", e.attr("style")) } e.addClass("hasCustomSelect").on("update", function () { d(e, f); var i = parseInt(e.outerWidth(), 10) - (parseInt(f.outerWidth(), 10) - parseInt(f.width(), 10)); f.css({ display: "inline-block" }); var h = f.outerHeight(); if (e.attr("disabled")) { f.addClass("customSelectDisabled") } else { f.removeClass("customSelectDisabled") } g.css({ width: i, display: "inline-block" }); e.css({ "-webkit-appearance": "menulist-button", width: f.outerWidth(), position: "absolute", opacity: 0, height: h, fontSize: f.css("font-size") }) }).on("change", function () { f.addClass("customSelectChanged"); d(e, f) }).on("keyup", function () { e.blur(); e.focus() }).on("mousedown", function () { f.removeClass("customSelectChanged").addClass("customSelectOpen") }).focus(function () { f.removeClass("customSelectChanged").addClass("customSelectFocus") }).blur(function () { f.removeClass("customSelectFocus customSelectOpen") }).hover(function () { f.addClass("customSelectHover") }, function () { f.removeClass("customSelectHover") }).trigger("update") }) } }) })(jQuery);

$('.ordenar select').customSelect();

/*
*Banners
*/
function produtoArgs() {
    var args = {
        width: 323,
        height: 323,
        navigation: {
            active: true
        },
        play: {
            active: false,
            auto: false
        }
    }
    return args;
}




/*
* Menu
*/
$('.menuPai').filter(function (index) { return index > 7 }).addClass('rightMenu'); // Joga últimos submenus para esquerda
$('.menuPai:first').addClass('first');

/*
* Paginação
*/
$('.paginacao').find('li:first').addClass('first');
$('.paginacao').find('li:last').addClass('last');

$('.paginacao').find('li:first').each(function () {
    if ($(this).find('a').html() == '&lt;') {
        $(this).addClass('prev');
    }
});

$('.paginacao').find('li:last').each(function () {
    if ($(this).find('a').html() == '&gt;') {
        $(this).addClass('next');
    }
});


/*
* Spot
*/
// Troca de imagens nos thumbnails do spot
$('.spotHover').on('hover', '.jsReplaceImgSpot', function (ev) {
    var spotImg = $(this).parents('.spot').find('.jsImgSpot.imagem-primaria');
    switch (ev.type) {
        case 'mouseenter':
            spotImg.attr('src', $(this).attr('data-image'));
            break;
        case 'mouseleave':
            spotImg.attr('src', spotImg.attr('data-original'));
            break;
    }
});

// Carrossel quando existem muitos thumbs no spot
var isIE = document.all && document.querySelector && !document.addEventListener; // Solução alternativa p/ ie8
$('.spotHover').hover(function () {
    if (isIE)
        $(this).find('.spotHoverPanel').show();
    if ($(this).find('li').length > 4 && !$(this).hasClass('jsCarouselReady')) {
        $(".produtosSimilares").css("position", "relative");
        $(".produtosSimilares > ul").css("position", "relative");
        $(".produtosSimilares > ul > li").css("height", "50px");
        $(this).find('.spotHoverPanel').prepend('<div class="jsSpotPrev"/><div class="jsSpotNext"/>');
        var back = $(this).find('.jsSpotPrev');
        var go = $(this).find('.jsSpotNext');
        var tipoCarrossel = null;//Seta a configuração do carrossel como linear por default // Marlon 07/01/2016 - linear não existe no novo plugin, null deixa wrap desligado (que é o mesmo comportamento do linear da versão anterior)
        tipoCarrossel = $("#tipoCarrossel").val() != undefined ? $("#tipoCarrossel").val() : tipoCarrossel;
        $(this).find('.jsProdutosSimilares').jcarousel({ animation: 'slow', wrap: tipoCarrossel, vertical: true });

        back
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '-=1'
            });

        go
            .on('jcarouselcontrol:active', function () {
                $(this).removeClass('inactive');
            })
            .on('jcarouselcontrol:inactive', function () {
                $(this).addClass('inactive');
            })
            .jcarouselControl({
                target: '+=1'
            });

        //$(this).addClass('jsCarouselReady');
    }
}, function () {
    if (isIE)
        $(this).find('.spotHoverPanel').hide();
});

/*
* Placeholder
*/
// Adiciona funcionalidade Array.filter() em browsers antigos
if (!Array.prototype.filter) { Array.prototype.filter = function (fun) { "use strict"; if (this === void 0 || this === null) throw new TypeError(); var t = Object(this); var len = t.length >>> 0; if (typeof fun !== "function") throw new TypeError(); var res = []; var thisp = arguments[1]; for (var i = 0; i < len; i++) { if (i in t) { var val = t[i]; if (fun.call(thisp, val, i, t)) res.push(val); } } return res; }; }

// Analisa se browser suport placeholders, e se não, o faz por JS
function placeholderIsSupported() {
    var test = document.createElement('input');
    return ('placeholder' in test);
}
if (!placeholderIsSupported()) { $("[placeholder]").focus(function () { var a = $(this); if (a.val() == a.attr("placeholder")) { a.val(""); a.removeClass("placeholder") } }).blur(function () { var a = $(this); if (a.val() == "" || a.val() == a.attr("placeholder")) { a.addClass("placeholder"); a.val(a.attr("placeholder")) } }).blur(); $("[placeholder]").parents("form").submit(function () { $(this).find("[placeholder]").each(function () { var a = $(this); if (a.val() == a.attr("placeholder")) { a.val("") } }) }) };

if (typeof String.prototype.trim !== 'function') {
    String.prototype.trim = function () {
        return this.replace(/^\s+|\s+$/g, '');
    }
}


; 
/// <reference path="jquery-1.8.3.min.js" />

//var produtoId = 0; //Id do produto em questão
var imgOriginal;
var imgOriginalZoom;
var novaImagem = null;
var novaImgOriginalZoom = null;
var totalPersonalizacao = 0;

//On document load
$(function () {
    //Adiciona um método ao plugin de validação de formulários
    $.validator.addMethod("notEqual", function (value, element, param) {
        return this.optional(element) || value != param;
    });

    //Chama os métodos de iniciação da página após o load da página
    InitProduto();
    InitAvaliacoes();
    InitIndicacao();
    InitOutros();
    addCookieHistoricoProduto();

    // seta eventos da personalização nos produtos recomendados

    // Produto Principal
    var personalizacaoProdutoPrincipal = $('div[id^="grupo-produto-personalizacao-"]', '#divSpotProdutoRecomendado').attr('data-personalizacao-obrigatorio')

    if (personalizacaoProdutoPrincipal == "False") {
        $('input[id^="txt-personalizacao-"]', '#divSpotProdutoRecomendado').prop("disabled", true);
        $('select[id^="ddl-personalizacao-"]', '#divSpotProdutoRecomendado').prop("disabled", true);
    }

    $('#divGruposProdutoRecomendado').on("change", ".check-confirma-personalizacao", function () {
        liberaCamposPersonalizacao($('#divSpotProdutoRecomendado'))
    });
    $('#divGruposProdutoRecomendado').on("focusout", 'input[id^="txt-personalizacao-"]', function () {
        somaValorPersonalizacao($('#divSpotProdutoRecomendado'))
    });
    $('#divGruposProdutoRecomendado').on("change", 'select[name^="ddl-personalizacao-"]', function () {
        somaValorPersonalizacao($('#divSpotProdutoRecomendado'))
    });

    //Produto Recomendado
    var personalizacaoProdutoRecomendado = $('div[id^="grupo-produto-personalizacao-"]', '#spotVejaTambem-Recomendado').attr('data-personalizacao-obrigatorio')

    if (personalizacaoProdutoRecomendado == "False") {
        $('input[id^="txt-personalizacao-"]', '#spotVejaTambem-Recomendado').prop("disabled", true);
        $('input[id^="txt-personalizacao-"]', '#spotVejaTambem-Recomendado').prop("disabled", true);
    }

    $('#divGruposProdutoRecomendado').on("change", ".check-confirma-personalizacao", function () {
        liberaCamposPersonalizacao($('#spotVejaTambem-Recomendado'))
    });

    $(' #divGruposProdutoRecomendado').on("focusout", 'input[id^="txt-personalizacao-"]', function () {
        somaValorPersonalizacao($('#spotVejaTambem-Recomendado'))
    });
    $(' #divGruposProdutoRecomendado').on("change", 'select[name^="ddl-personalizacao-"]', function () {
        somaValorPersonalizacao($('#spotVejaTambem-Recomendado'))
    });




    // seta eventos da personalização no produto variante.

    var personalizacaoProdutoVariante = $('.prodVariante div[id^="grupo-produto-personalizacao-"]').attr('data-personalizacao-obrigatorio')

    if (personalizacaoProdutoVariante == "False") {
        $('.prodVariante input[id^="txt-personalizacao-"]').prop("disabled", true);
        $('.prodVariante select[id^="ddl-personalizacao-"]').prop("disabled", true);
    }

    somaValorPersonalizacao($('.prodVariante'));

    $('.prodVariante').on("change", ".check-confirma-personalizacao", function () {
        liberaCamposPersonalizacao($('.prodVariante'));
    });

    $('.prodVariante').on("keyup", 'input[id^="txt-personalizacao-"]', function () {
        somaValorPersonalizacao($('.prodVariante'))
    });
    $('.prodVariante').on("change", 'select[name^="ddl-personalizacao-"]', function () {
        somaValorPersonalizacao($('.prodVariante'))
    });


    //Copia o html de opções dos produtos
    htmlProductOptions = $('div[id^="' + divOpcoesPartialId + '"]').first().clone();
    htmlProductOptions.find('div[id^="divItensCombo-"]').children().first().before(divBtnRemove);

    // Eventos associados no carregamento da página.
    //  $('[id^=produto-botao-comprar-]').unbind();
    //  $('[id^=produto-botao-comprar-]').click(incluirProdutoCarrinho);

    $('#btnCompraClique').click({ compraClique: true }, incluirProdutoCarrinho);
    $(".pagination a").live("click", function () {
        $("html, body").animate({ scrollTop: $("#avaliacao-Produto").offset().top }, "slow");
    });
});

//Página carregada
$(window).on("load", function () {
    preencherDadosUsuarioAvaliacao();

    if ($("#atributoCombo") != undefined && $("#atributoCombo").length > 0 && $("#atributoCombo").is("select")) {
        if ($(".optionProduct") != undefined && $(".optionProduct").length > 0) {
            $(".optionProduct").prop('selectedIndex', 0);
        }
    }
});


/*************************************************************************************************************/
/*INIT SCRIPTS************************************************************************************************/
//Inicializa a pagina de produtos, carregando o zoom se necessario e adicionando a função as dropdown
function InitProduto() {
    var domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]');
    if (domGrupoSelecaoAtributos.find('#hdnQuantidadeOpcoes').val() == 1) {
        var atrbs = domGrupoSelecaoAtributos.find('#divOpcoes-0').find('.optionAtributos');
        if (atrbs.length == 0) {
            domGrupoSelecaoAtributos.find('#divOpcoes-0').find("#selQuantidade").val(1);
            domGrupoSelecaoAtributos.find('#divOpcoes-0').find("#selQuantidade option[value=0]").hide();
            showSelectedUnits(1);
        }
    }

    changeEventsSelQuantidade();

} // FIM InitProduto

//Limita os campos de comentários de Avaliação do produto e Indique a um amigo
function LimitaTexto(campo, limiteMax, campoRetorno) {
    if (campo.value.length >= limiteMax) {
        campo.value = campo.value.substring(0, limiteMax);
        document.getElementById(campoRetorno).style.display = "block";
    } else {
        document.getElementById(campoRetorno).style.display = "none";
    }
}


function InitAvaliacoes() {
    // Coloca o foco no campo nome ao clicar em mais avaliações
    var produtoId = $("#hdnProdutoId").val();
    $("#outrasAvaliacoes").click(function () {
        setTimeout(function () { $("#txtAvaliacaoNome").focus(); }, 50);
    });

    $.validator.addMethod("soLetras", function (qualNome) {
        regex = /^[a-z\u00C0-\u00ff A-Z]+$/;
        return regex.test(qualNome);
    });

    // Validação dos campos de uma Avaliação do Produto
    $('#formAvaliacao').validate({
        rules: {
            txtAvaliacaoNome: {
                notEqual: "Nome",
                required: true,
                minlength: 4,
                soLetras: true
            },
            txtAvaliacaoEmail: {
                notEqual: "E-mail",
                required: true,
                email: true
            },
            txtAvaliacaoDescricao: {
                notEqual: "Comentários",
                required: true
            },
            ddlNota: {
                required: true
            }
        },
        messages: {
            txtAvaliacaoNome: {
                notEqual: "O campo Nome é obrigatório.",
                required: "O campo Nome é obrigatório.",
                minlength: "O campo Nome deve conter no mínimo 4 caracteres.",
                soLetras: "Nome inválido, use apenas letras."
            },
            txtAvaliacaoEmail: {
                notEqual: "O campo E-mail é obrigatório.",
                required: "O campo E-mail é obrigatório.",
                email: "O campo E-mail deve conter um e-mail válido."
            },
            txtAvaliacaoDescricao: {
                notEqual: "O campo Comentário é obrigatório.",
                required: "O campo Comentário é obrigatório."
            },
            ddlNota: {
                required: "Selecione uma Nota."
            }
        },
        submitHandler: function () {
            SalvarAvaliacao($('#hdnProdutoVarianteId').val());
        }
    });
}

function InitIndicacao() {
    // Coloca o foco no campo nome do amigo ao clicar em indicação
    $("#indicaAmigo").click(function () {
        setTimeout(function () { $("#txtNomeIndicado").focus(); }, 50);
    });

    // Validação de uma Indicação de Produto
    $('#formIndica').validate({
        rules: {
            txtNomeIndicador: {
                notEqual: "Meu Nome",
                required: true,
                minlength: 4,
                soLetras: true
            },
            txtEmailIndicador: {
                notEqual: "Seu E-mail",
                required: true,
                email: true
            },
            txtNomeIndicado: {
                notEqual: "Nome de um amigo",
                required: true,
                minlength: 4,
                soLetras: true
            },
            txtEmailIndicado: {
                notEqual: "E-mail do AMIGO",
                required: true,
                email: true
            }
        },
        messages: {
            txtNomeIndicador: {
                notEqual: "O campo 'Nome' é obrigatório.",
                required: "O campo 'Nome' é obrigatório.",
                minlength: "O campo Nome deve conter no mínimo 4 caracteres.",
                soLetras: "Nome inválido, use apenas letras."
            },
            txtEmailIndicador: {
                notEqual: "O campo 'E-mail' é obrigatório.",
                required: "O campo 'E-mail' é obrigatório.",
                email: "O campo E-mail deve conter um e-mail válido."
            },
            txtNomeIndicado: {
                notEqual: "O campo 'Nome do Amigo' é obrigatório.",
                required: "O campo 'Nome do Amigo' é obrigatório.",
                minlength: "O campo 'Nome do Amigo' deve conter no mínimo 4 caracteres.",
                soLetras: "O 'Nome do amigo' é inválido, use apenas letras."
            },
            txtEmailIndicado: {
                notEqual: "O campo 'E-mail do Amigo' é obrigatório.",
                required: "O campo 'E-mail do Amigo' é obrigatório.",
                email: "O campo 'E-mail do Amigo' deve conter um e-mail válido."
            }
        },
        submitHandler: function () {
            EnviarIndicacao();
        }
    });

}

function InitOutros() {
    $(".mousetrap").live('click', function () {
        $(this).prev().trigger('click');
    });

    if ($().fancybox) {
        $('a[id="lnkModalEnvio"]').fancybox({
            autoDimensions: false,
            centerOnScroll: true,
            padding: 0,
            margin: 0,
            width: 902,
            height: 257,
            onComplete: function () {
                var arquivo = fbits.ecommerce.urlEcommerce + 'Html/Entrega.htm';
                $('div[id="divModal-PopUp-Content"]').load(arquivo);
                $('div[id="divModal-PopUp"]').show();
            },
            onClosed: function () {
                $('div[id="divModal-PopUp"]').hide();
            }
        });
    }
}
/*FIM INIT SCRIPTS********************************************************************************************/
/*************************************************************************************************************/
/*************************************************************************************************************/
/*FIM SECTION SCRIPTS RELACIONADOS AO PRODUTO PRINCIPAL*******************************************************/
/*************************************************************************************************************/

// Envia a indicação de um Produto para um Amigo
function EnviarIndicacao() {
    var produtoId = $("#hdnProdutoId").val();
    var nome = $("#txtNomeIndicador").val();
    var email = $("#txtEmailIndicador").val();
    var nomeIndicado = $("#txtNomeIndicado").val();
    var emailIndicado = $("#txtEmailIndicado").val();
    var mensagem = $("#txtMensagem").val();

    // Requisição ajax para atualização das quantidades dos produtos.
    $.ajax({
        type: 'POST',
        url: "/Produto/IndicarAmigo",
        data: { "ProdutoId": produtoId, "NomeIndicador": nome, "EmailIndicador": email, "NomeIndicado": nomeIndicado, "EmailIndicado": emailIndicado, "Mensagem": mensagem },
        success: function (dados) {
            if (dados == "true") {
                // Limpa a mensagem de erro de limite de caracteres no campo de envio de mensagem
                document.getElementById("ErroLimiteTxtMensagem").innerHTML = "";
                alert("Indicação enviada com sucesso!");
            }
            else {
                alert("Ocorreu um erro ao enviar!");
            }
            $("#txtNomeIndicador").val("Seu Nome");
            $("#txtEmailIndicador").val("Seu E-mail");
            $("#txtNomeIndicado").val("Nome do AMIGO");
            $("#txtEmailIndicado").val("E-mail do AMIGO");
            $("#txtMensagem").val("Comentários");
        }
    });

    // Limpa os campos após o envio
    $("#txtNomeIndicador").val("");
    $("#txtEmailIndicador").val("");
    $("#txtNomeIndicado").val("");
    $("#txtEmailIndicado").val("");
    $("#txtMensagem").val("");
}
// Fim da Indicação

// Avaliações de um produto
function SalvarAvaliacao(id) {
    var nome = $("#txtAvaliacaoNome").val();
    var email = $("#txtAvaliacaoEmail").val();
    var descricao = $("#txtAvaliacaoDescricao").val();
    var nota = $("#ddlNota").val();

    $.ajax({
        type: 'POST',
        url: "/Produto/CriarAvaliacao",
        data: { "produtoId": id, "nome": nome, "email": email, "comentario": descricao, "nota": nota },
        success: function (dados) {
            if (dados == "true") {
                // Limpa a mensagem de erro de quantidade de caracteres no campo de comentário da avaliação
                document.getElementById("ErroLimiteTxtAvaliacaoDescricao").innerHTML = "";
                alert("Opinião salva com sucesso!");
            }
            else {
                alert("Problemas ao salvar!");
            }
        }
    });

    // Limpa os campos após o envio
    $("#txtAvaliacaoNome").val("");
    $("#txtAvaliacaoEmail").val("");
    $("#txtAvaliacaoDescricao").val("");
    ResetAvaliacao();
}

function ListarAvaliacaoProduto(produtoId, numeroPagina, quantidadeItensPagina) {
    $.ajax(
        {
            type: 'POST',
            url: '/Produto/ListarAvaliacaoProduto',
            data: { "produtoId": produtoId, "numeroPagina": numeroPagina, "quantidadeItensPagina": quantidadeItensPagina },
            success: function (data) {
                $("#avaliacao-Produto").html(data);
            }
        });
}

// Reseta o formulário de avaliação
function ResetAvaliacao() {
    for (i = 1; i <= 5; i++) {
        document.getElementById("aval" + i).src = (document.getElementById("aval" + i).src.replace("_ok", "_off"));
    }
    $("#ddlNota").val("Avaliação");
}

function Avaliar(nota) {
    for (i = 1; i <= 5; i++) {
        document.getElementById("aval" + i).src = (i <= nota ? document.getElementById("aval" + i).src.replace("_off", "_ok").replace("_on", "_ok") : document.getElementById("aval" + i).src);
    }

    document.getElementById("ddlNota").value = nota;

    ResetPreview();
}

function Preview(nota) {
    for (i = 1; i <= 5; i++) {
        document.getElementById("aval" + i).src = (i > nota ? document.getElementById("aval" + i).src.replace("_on", "_off").replace("_ok", "_off") : document.getElementById("aval" + i).src.replace("_off", "_ok").replace("_on", "_ok"));
    }
    document.getElementById("ddlNota").value = nota;
}

function ResetPreview() {
    var nota = 0;

    if (document.getElementById("ddlNota").value.length > 0) {
        nota = Number(document.getElementById("ddlNota").value);

        for (i = 1; i <= 5; i++) {
            document.getElementById("aval" + i).src = (i <= nota ? document.getElementById("aval" + i).src.replace("_off", "_ok").replace("_on", "_ok") : document.getElementById("aval" + i).src.replace("_on", "_off").replace("_ok", "_off"));
        }
    }
    else {
        for (i = 1; i <= 5; i++) {
            document.getElementById("aval" + i).src = document.getElementById("aval" + i).src.replace("_on", "_off").replace("_ok", "_off");
        }
    }
}

function preencherDadosUsuarioAvaliacao() {
    if (Fbits.Usuario !== null && Fbits.Usuario != undefined && Fbits.Usuario.Nome != null) {
        $("#txtAvaliacaoNome").val(Fbits.Usuario.Nome);
        $("#txtAvaliacaoEmail").val(Fbits.Usuario.Email);
    }
}


// Fim das Avaliações do Produto

/*
*Function responsavel pela inclusão de produtos no carrinho
*Alterada 28/02/2012 para inserir uma lista de produtos
*/
function incluirProdutoCarrinho(event) {

    //DESABILITA COMPRAS
    habilitarCompra(false);

    //DECLARAÇÃO DAS VARIAVEIS
    var compraClique = false;
    var produtoId = 0;
    var produtoComboId = 0;
    var produtoVarianteId = 0;
    var quantidade = 0;
    var quantidadeOpcoesTela = 0;
    var quantidadeOpcoesParalelas = 0;
    var quantidadeOpcoesParalelasSelecionadas = 0
    var optionString = "Selecione";
    var textoPopUpValorReferente = '';
    var domGrupoSelecaoAtributos = '';
    //INICIALIZAÇÃO DAS VARIAVEIS
    compraClique = event.compraClique == undefined ? false : event.compraClique;
    //compraClique = event.data.compraClique == undefined ? false : event.data.compraClique;
    domGrupoSelecaoAtributos = $(this).parents().find('div[id^="dvGrupoSelecaoAtributos-"]');
    produtoId = $('#hdnProdutoId').val();
    produtoComboId = domGrupoSelecaoAtributos.find('input[id="hdnProdutoComboId"]').val();

    quantidadeOpcoesTela = domGrupoSelecaoAtributos.find('div[id^="divOpcoes-"]').length;
    quantidadeOpcoesParalelas = $('#hdnQuantidadeOpcoes').val();
    textoPopUpValorReferente = $('#spnValorReferente').text();

    quantidadeOpcoesTela = quantidadeOpcoesTela != undefined ? quantidadeOpcoesTela : 0;

    //Verifica se o produtoId é válido
    if (produtoId == 0 || produtoId == undefined)
        return;

    //Verifica se é uma quantidade adequada ao kit
    var checkOpcoes = checkOpcoesSelecionadas();
    if (!checkOpcoes) {

        caixa = $('[id^=' + selectAtributoPartialId + '][value="Selecione"] :selected').parents('div[id^=' + divOpcoesPartialId + ']');
        if (caixa.find('[id^="' + labelErroPartialId + '"]').length > 0) {
            showError(caixa.find('[id^="' + labelErroPartialId + '"]').first(), "Selecione uma opção.");
        }
        else {
            caixa = $('[id^="selQuantidade"][value="0"] :selected').parents('div[id^=' + divOpcoesPartialId + ']');
            if (caixa.find('[id^="' + labelErroPartialId + '"]').length > 0)
                showError(caixa.find('[id^="' + labelErroPartialId + '"]').first(), "Selecione a quantidade desejada.");
        }
        habilitarCompra(true);
        return;
    }

    //Lista utilizada para enviar os parametros para a controller
    var listaParametros = new Array();

    //VERIFICA AS QUANDIDADES DE COMPRA PARALELA
    var i = 0;
    do {
        var dadosAtributo = [];
        var quantidade = 0;
        var opcaoSelecionada = true;
        //ADICIONA OS ATRIBUTOS DO PRODUTO

        domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]').find('[data-codigoatributo]').each(function () {

            //$(this) = elemento da iteração

            var attrId = $(this).attr('data-codigoAtributo');
            var attrValor = 'Selecione';
            var comboId = $(this).parents('li[id^="liComboItem-"]').attr('id').replace('liComboItem-', '');

            if ($(this).find('[data-atributoSelecionado="True"]').length == 1) {
                attrValor = $($(this).find('[data-atributoSelecionado="True"]')[0]).attr('data-valoratributo');
            }

            //Insere os dados na lista
            dadosAtributo.push(attrValor + ';' + attrId + ';' + comboId);

            //Verifica se a opção não foi selecionada
            if (attrValor == optionString && opcaoSelecionada == true) { opcaoSelecionada = false; }
        });

        if (opcaoSelecionada) { quantidadeOpcoesParalelasSelecionadas++; }

        //SELECIONA A QUANTIDADE
        quantidade = domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]').find('[id="selQuantidade"]').val();

        //SELECIONA O PRODUTO VARIANTE ID
        produtoVarianteId = domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]').parent().find('input[id="hdnProdutoVarianteId-' + i + '"]').val();

        //ADICIONA OS PARAMETROS NA LISTA
        listaParametros.push({
            DadosAtributo: dadosAtributo.join('|')
            , ProdutoVarianteId: produtoVarianteId
            , ProdutoComboId: produtoComboId
            , ProdutoId: produtoId
            , Quantidade: quantidade
        });

        i++;
    } while (i < quantidadeOpcoesParalelas || i < quantidadeOpcoesTela)

    //Está verificando pelo texto do valor referente pois nao temos
    //um identificador único para este tipo de informação.
    if (quantidadeOpcoesParalelas > 1
        && quantidadeOpcoesParalelasSelecionadas == 1
        && textoPopUpValorReferente) {
        if (!window.confirm('Atenção! \n' + textoPopUpValorReferente)) {
            habilitarCompra(true);
            return;
        }
    }

    //REALIZA A REQUISIÇÃO AJAX
    $.ajax({
        type: 'POST',
        url: "/Produto/IncluirProdutoCarrinho",
        data: { produtoId: produtoId, optionString: optionString, listaParametros: JSON.stringify(listaParametros) },
        traditional: true,
        success: function (data) {
            if (data.erro == 'Erro') {
                //Seta as mensagens de erro.
                $('[id^="divOpcoes-"]').each(function () {
                    //$(this).find('.erro').html('');
                    hideErrors();
                });
                if (data.erroIndex >= 0) {
                    //domGrupoSelecaoAtributos.find('#divOpcoes-' + data.erroIndex).find('.erro').html();
                    showError(domGrupoSelecaoAtributos.find('#divOpcoes-' + data.erroIndex).find('[id^="' + labelErroPartialId + '"]'), data.msgErro)
                }
                else {
                    $('[id^="divOpcoes-"]').each(function () {
                        showError($(this).find('[id^="' + labelErroPartialId + '"]'), data.msgErro);
                    });
                }
                //$('#errosQntd').html(data.msgErro);

                //Seta os eventos do botão comprar.
                //        $('[id^=produto-botao-comprar-]').unbind();
                //        $('[id^=produto-botao-comprar-]').click(incluirProdutoCarrinho);

                //Habilita o botão comprar e esconde a div de carregando.
                habilitarCompra(true);
            } else {
                //Redireciona para a url do carrinho.
                $('select[id^="selAtributo-"]').find('option:first').attr('selected', 'selected');
                $('select[id^="selQuantidade"]').find('option:first').attr('selected', 'selected');
                window.location = compraClique == true ? fbits.ecommerce.urlCarrinho + "Pedido/CompraClique" : fbits.ecommerce.urlCarrinho;
            }
        }
    });
    //FIM DA REQUISIÇÃO AJAX
} // FIM incluirProdutoCarrinho

/*
*Habilita ou desabilita elementos de inclusão do produto no carrinho
*Parâmetro habilitar == true então habilita elementos,
*caso seja diferente desabilita os elementos
*/
function habilitarCompra(habilitar) {
    if (habilitar) {
        //Habilita o botão comprar e esconde a div de carregando.
        $('#divCarregando').css('display', 'none');
        //    $('[id^=produto-botao-comprar-]').removeAttr('disabled');
    } else {
        //DESABILITA O BOTÃO PARA EVITAR COMPRAS MÚLTIPLAS
        $('#divCarregando').css('display', 'block');
        //    $('[id^=produto-botao-comprar-]').attr('disabled', 'disabled');
    }
}

$(function () {
    var tipoCarrossel = null;//Seta a configuração do carrossel como linear por default  // Marlon 07/01/2016 - linear não existe no novo plugin, null deixa wrap desligado (que é o mesmo comportamento do linear da versão anterior)
    tipoCarrossel = $("#tipoCarrossel").val() != undefined ? $("#tipoCarrossel").val() : tipoCarrossel;
    if ($.jcarousel) {

        $("#produtos-relacionados").jcarousel({ wrap: tipoCarrossel });

        if ($("[data-jcarousel=true]").length > 0) {

            $('.jsCarrousel-prev')
                .on('jcarouselcontrol:active', function () {
                    $(this).removeClass('inactive');
                })
                .on('jcarouselcontrol:inactive', function () {
                    $(this).addClass('inactive');
                })
                .jcarouselControl({
                    target: '-=3'
                });

            $('.jsCarrousel-next')
                .on('jcarouselcontrol:active', function () {
                    $(this).removeClass('inactive');
                })
                .on('jcarouselcontrol:inactive', function () {
                    $(this).addClass('inactive');
                })

                .jcarouselControl({
                    target: '+=3'
                });

        }

        if ($(".carousel .jsCarrousel").length > 0) {

            $(".carousel .jsCarrousel").jcarousel();

            $(".carousel .jsCarrousel-prev").on("click", function () {

                var carousel = $(this).parents(".carousel").find("[data-jcarousel]");

                carousel.jcarousel('scroll', '-=4');

            });

            $(".carousel .jsCarrousel-next").on("click", function () {

                var carousel = $(this).parents(".carousel").find("[data-jcarousel]");

                carousel.jcarousel('scroll', '+=4');

            });

        }
    }



});

function liberaCamposPersonalizacao(domPersonalizacao) {
    if ($('input[class="check-confirma-personalizacao"]:checked', domPersonalizacao).length > 0) {
        $('input[id^="txt-personalizacao-"]', domPersonalizacao).prop("disabled", false);
        $('select[id^="ddl-personalizacao-"]', domPersonalizacao).prop("disabled", false);
    } else {
        $('input[id^="txt-personalizacao-"]', domPersonalizacao).val('');
        $('select[id^="ddl-personalizacao-"]', domPersonalizacao).val('');
        $('select[id^="ddl-personalizacao-"]', domPersonalizacao).removeAttr('selected');
        $('input[id^="txt-personalizacao-"]', domPersonalizacao).prop("disabled", true);
        $('select[id^="ddl-personalizacao-"]', domPersonalizacao).prop("disabled", true);
        somaValorPersonalizacao(domPersonalizacao);
    }
}

function somaValorPersonalizacao(domPersonalizacao) {
    var total = 0;
    $('input[id^="txt-personalizacao-"]', domPersonalizacao).each(function () {
        var preco = $(this).attr('data-personalizacao-valor');
        var texto = $(this).val();
        preco = preco.replace(",", ".");
        preco = parseFloat(preco);
        total += preco;
        if (texto == "") {
            total -= preco;
        }
    })
    $('select[name^="ddl-personalizacao-"]', domPersonalizacao).each(function () {
        var preco = $(this).attr('data-personalizacao-valor');
        preco = preco.replace(",", ".");
        preco = parseFloat(preco);
        var valor = $(this).val();
        total += preco;
        if (valor == "") {
            total -= preco;
        }
    })
    if (total > 0) {
        $('span[id="total-preco-personalizacao"]', domPersonalizacao).text(total.formatMoney());
    } else {
        $('span[id="total-preco-personalizacao"]', domPersonalizacao).text("");
    }
}

function addCookieHistoricoProduto() {
    var idProduto = $('#hdnProdutoId').val();
    var cookieHistoricoProd = Fbits.Cookie.Get("historicoProduto");

    if (cookieHistoricoProd == null || cookieHistoricoProd == undefined) {
        Fbits.Cookie.Set("historicoProduto", idProduto, 10);
    } else {
        cookieHistoricoProd += "," + idProduto;
        var cookieHistProdClean = cookieHistoricoProd.indexOf(',') == 0 ? cookieHistoricoProd.substring(1) : cookieHistoricoProd;

        var cookieItens = cookieHistProdClean.split(',');
        var uniqueItens = [];
        $.each(cookieItens, function (i, el) {
            if ($.inArray(el, uniqueItens) === -1) {
                uniqueItens.push(el);
            }
        });
        Fbits.Cookie.Set("historicoProduto", uniqueItens.toString(), 10);
    }

}
; 
var Fbits = Fbits || {};
Fbits.Assinatura = Fbits.Assinatura || {};
Fbits.Assinatura.Dados = Fbits.Assinatura.Dados || {};

$(function () {
    if (novoCheckout && $('[id^=produto-assinatura-botao-comprar-]').length > 0) {
        $(document).ajaxComplete(function (event, request, settings) {
            if (typeof request.responseText !== undefined) {
                if (request.responseText.indexOf('header-Assinatura') > 0) {
                    initializeAssinatura();
                }
            }
        });
        initializeAssinatura();
    }
});

function initializeAssinatura() {
    var recorrenciasContainer = $('.periodo');
    var descontoLabel = $("#header-Assinatura > label > span");
    recorrenciasContainer.hide(); // esconde a recorrencia legado
    descontoLabel.hide(); // esconde a desconto legado
    $.ajax({
        type: "GET",
        url: fbits.ecommerce.urlCarrinho + "api/carrinho",
        xhrFields: {
            withCredentials: true
        }
    }).success(function (carrinhoData) {
        var carrinhoId = carrinhoData.Id;
        var produtoId = $("#hdnProdutoId").val();
        var produtoVarianteId = $("#hdnProdutoVarianteId").val();
        var endpoint = "https://pub-assinatura.fbits.net/CarrinhoAssinatura/" + carrinhoData.Loja.Nome + "?carrinhoId=" + carrinhoId + "&produtoId=" + produtoId + "&produtoVarianteId=" + produtoVarianteId;

        $.ajax({
            type: "GET",
            url: endpoint
        }).success(function (data) {
            Fbits.Assinatura.Dados = data;
            Fbits.Assinatura.CarrinhoId = carrinhoId;
            var html = '';

            var recorrenciaIdSelecionado = 0;
            var result;

            for (i = 0; i < data.length; i++) {
                if (data[i].produtoVarianteId === parseInt(produtoVarianteId)) {
                    result = data[i];
                    break;
                }
            }

            if (typeof result === 'undefined')
                return;

            console.log('Assinatura produtoVarianteId ' + produtoVarianteId);

            var selecionado;

            for (i = 0; i < result.recorrencias.length; i++) {
                if (result.recorrencias[i].selecionado === true) {
                    selecionado = result.recorrencias[i];
                    break;
                }
            }

            if (typeof selecionado !== 'undefined')
                recorrenciaIdSelecionado = selecionado.recorrenciaId;

            html = '';

            html += '<div id="box-assinatura-' + produtoVarianteId + '" style="display: block;"><div class="col-lg-12 fbits-responsive-carrinho-assinatura-border" style="margin-top:10px;margin-bottom:10px;"><div class="col-lg-4" data-assinatura-produtovarianteid="' + produtoVarianteId + '" style="margin-top:10px;"><label>ENTREGA: </label><select id="select-assinatura-id-' + produtoVarianteId + '" class="form-control col-md-1">';

            if (!result.somenteAssinatura) {
                html += '<option value="selecione-0" ' + (recorrenciaIdSelecionado === 0 ? 'selected' : '') + '>Selecione</option>';
            }

            for (var y = 0; y < result.recorrencias.length; y++) {
                html += '<option value="' + result.recorrencias[y].recorrenciaId + "-" + result.recorrencias[y].grupoAssinaturaId + '" '
                    + (recorrenciaIdSelecionado === 0 ? result.somenteAssinatura && y === 0 ? 'selected' : '' : recorrenciaIdSelecionado === result.recorrencias[y].recorrenciaId
                        ? 'selected' : '') + '>' + result.recorrencias[y].nome + '</option>';
            }

            html += '</select><div id="MensagemInformativa-' + produtoVarianteId + '"</div></div></div></div>';

            if (recorrenciaIdSelecionado === 0) {
                var maxDesconto = Math.max.apply(Math, result.recorrencias.map(function (o) { return o.grupoAssinaturaDesconto; }));
                if (maxDesconto > 0) {
                    descontoLabel.text("Ganhe at� " + maxDesconto + "% de desconto");
                } else {
                    descontoLabel.text("");
                }
            } else {
                var recorrenciaSelecionadoObj;
                for (i = 0; i < result.recorrencias.length; i++) {
                    if (result.recorrencias[i].recorrenciaId === recorrenciaIdSelecionado) {
                        recorrenciaSelecionadoObj = result.recorrencias[i];
                        break;
                    }
                }
                ajustarAssinaturaDesconto(recorrenciaSelecionadoObj !== undefined ? recorrenciaSelecionadoObj.grupoAssinaturaDesconto : 0);
            }
            recorrenciasContainer.html(html);
            recorrenciasContainer.show();
            descontoLabel.show();
        });
    });

}

function ajustarAssinaturaDesconto(desconto) {
    var descontoLabel = $("#header-Assinatura > label > span");
    if (desconto > 0) {
        descontoLabel.text("Ganhe " + desconto + "% de desconto");
    } else {
        descontoLabel.text("");
    }
}

function mostraRecorrencia(produtoVarianteId) {
    $('#box-assinatura-' + produtoVarianteId).show();
    $('#botao-assinatura-produtoVarianteId-' + produtoVarianteId).hide();
}

// M�todo que deve ser chamado pelo bot�o ASSINAR na p�gina do produto
function vincularAssinaturaRecorrencia() {
    var produtoVarianteId = $("#hdnProdutoVarianteId").val();

    if ($("#select-assinatura-id-" + produtoVarianteId).length === 0) // se por algum motivo a combo de recorrencia n�o tenha sido renderizada, pode pular esse vinculo, porque ele pode ser adicionado no checkout
        return;

    var carrinhoId = Fbits.Assinatura.CarrinhoId;
    var dados = $("#select-assinatura-id-" + produtoVarianteId).val().split("-");

    dados[0] = dados[0] === "selecione" ? 0 : dados[0];

    if (typeof Fbits.Assinatura !== "undefined" && typeof Fbits.Assinatura.Dados !== "undefined" &&
        Fbits.Assinatura.Dados.length > 0 && typeof Fbits.Assinatura.Dados[0].recorrencias !== "undefined") {
        var recorrenciaSelecionadoObj;
        for (i = 0; i < Fbits.Assinatura.Dados[0].recorrencias.length; i++) {
            if (Fbits.Assinatura.Dados[0].recorrencias[i].recorrenciaId === Number(dados[0])) {
                recorrenciaSelecionadoObj = Fbits.Assinatura.Dados[0].recorrencias[i];
                break;
            }
        }
        ajustarAssinaturaDesconto(typeof recorrenciaSelecionadoObj !== "undefined" ? recorrenciaSelecionadoObj.grupoAssinaturaDesconto : 0);
    }

    var data = {
        CarrinhoId: carrinhoId,
        ProdutoVarianteId: Number(produtoVarianteId),
        RecorrenciaId: Number(dados[0]),
        GrupoAssinaturaId: Number(dados[1])
    };

    $.ajax({
        url: "https://pub-assinatura.fbits.net/CarrinhoAssinatura/",
        type: "POST",
        data: JSON.stringify(data),
        contentType: "application/json",
        success: function () {
            var msg = data.RecorrenciaId !== 0 ? "Assinatura adicionada com sucesso" : "Assinatura removida";
            $("#MensagemInformativa-" + produtoVarianteId).html("<span style='color:green;font-size:10px'>" + msg + "</span>");
        },
        error: function (jqXHR, status, err) {
            $("#MensagemInformativa-" + produtoVarianteId).html("<span style='color:red;font-size:10px'>Ocorreu um erro na adi��o da assinatura.</span>");
        }
    });
}
; 
/// <reference path="jquery-1.8.3.min.js" />
/// <reference path="fbits.carrinho.cabecalho.js" />

/*!
* JavaScript fbits.produto.atributos Library v1.0.0
* Copyright 2012, Fbits e-Partner Business
*
* Date: 29/10/2012
*/
//var novoCheckout = document.cookie.indexOf('carrinho-id') >= 0;
/**
* Adiciona os eventos aos elementos da página
*/
$(document).ready(function () {
    adicionaEventosImagens();
    ajustaTamanhoDivCores();
});

var personalizacaoPendente = false;

$(function () {
    //$('[id^=spot-comprar-]', 'body').on('click', function () {
    //    if ($(this).attr('data-abrirModal') == 'True') {
    //        abrirProdutoModal($(this));
    //    } else {  
    //        comprarProdutoSpot($(this));
    //    }
    //});

    $('[id^=produto-botao-comprar-]', 'body').on('click', function () {
        comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), "botaoComprar");
    });

    //Eventos comprar do spot
    //$('[id^=spot-comprar-]').unbind('click');
    //$('[id^=spot-comprar-]').click(function () {
    //  if ($(this).attr('data-abrirModal') == 'True') {
    //    abrirProdutoModal($(this));
    //  } else {
    //    comprarProdutoSpot($(this));
    //  }
    //});

    //Eventos comprar do produto
    //$('[id^=produto-botao-comprar-]').unbind('click');
    //$('[id^=produto-botao-comprar-]').bind('click', function () {
    //  comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), "botaoComprar");
    //});

    $('[id^=produto-botao-adicionar-carrinho-]').unbind('click');
    $('[id^=produto-botao-adicionar-carrinho-]').bind('click', function () {
        comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), "botaoAdicionar");
    });

    $('[id^=produto-servico-botao-comprar-]').unbind('click');
    $('[id^=produto-servico-botao-comprar-]').bind('click', function () {
        comprarComServico($(this).parents('[id^="produto-servico-item-"]'), true, $(this));
    });

    //Eventos comprar do produto
    $('[id^=produto-assinatura-botao-comprar-]').unbind('click');
    $('[id^=produto-assinatura-botao-comprar-]').bind('click', function () {
        if (novoCheckout) {
            if (vincularAssinaturaRecorrencia) {
                vincularAssinaturaRecorrencia();
            }
            comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), "botaoComprar");
        } else {
            comprarComAssinatura($(this).parents('[id^="produto-item-"]'), true, $(this));
        }
    });

    $("#tipoVisualizacao li").click(this, selecionaTipoVisualizacao);

    //Eventos de video.
    adicionaEventosImagens();

    //Função responsavel por adicionar os eventos relacionados aos atributos
    $('body').on('change', 'select[data-codigoServico]', function (event) {
        if (event.srcElement) atualizarServico(event.srcElement);
    }); // Os elementos select.
    $('body').on('click', 'div[data-codigoServico] > *', function (event) {
        if (event.srcElement) atualizarServico(event.srcElement);
        else if (event.target) atualizarServico(event.target);
    }); // Todas as opções div.
});

/**
* Atualiza o resumo do carrinho.
*/
function atualizarResumoCarrinho() {
    if (window.carregarCarrinho) //Verifica se existe a function
        carregarCarrinho();        //Atualiza o resumo do carrinho
}

/**
* Busca a quantidade de itens na tela.
*/
function buscaQuantidadeItensLista() {
    var quantidade = 0;
    quantidade = $('[id^=produto-item-]').length;
    quantidade = quantidade == undefined ? 0 : quantidade;

    return quantidade;
}

/**
* Busca os dados do produto da tela.
*/
function buscaParametrosTela(domGrupoSelecaoAtributos) {
    //Variavéis
    var quantidade = 0;
    var quantidadeOpcoesTela = 0;
    var quantidadeOpcoesParalelas = 0;
    var quantidadeOpcoesParalelasSelecionadas = 0
    var optionString = "Selecione";
    var prePedidiProdutoBrindeId = 0;
    var produtoIdPagina = 0;
    var produtoComboId = 0;
    var produtoVarianteId = 0;
    var textoPopUpValorReferente = '';
    var IsAssinatura = false;

    quantidadeOpcoesParalelas = $('input[id="hdnQuantidadeOpcoes"]', domGrupoSelecaoAtributos).val(); //Busca quantidade de opções paralelas
    quantidadeOpcoesTela = $('div[id^="divOpcoes-"]', domGrupoSelecaoAtributos).length;               //Busca quantidade de opções da tela
    quantidadeOpcoesTela = quantidadeOpcoesTela != undefined ? quantidadeOpcoesTela : 0;
    produtoComboId = $('input[id="hdnProdutoComboId"]', domGrupoSelecaoAtributos).val();              //Busca o identificador do produto combo
    produtoIdPagina = $('input[id="hdnProdutoId"]', domGrupoSelecaoAtributos).val();                  //Busca o identigicador do produto
    textoPopUpValorReferente = $('span[id="spnValorReferente"]', domGrupoSelecaoAtributos).text();    //Busca o texto para popup de valor referente

    if (($("#tipo-produto-assinatura").length > 0 && $("#tipo-produto-assinatura:checked").length > 0) ||
        ($("#tipo-produto-assinatura").length == 0 && $("a[id^='produto-assinatura-botao-comprar-']").length > 0)) {
        IsAssinatura = true;
    }

    if (produtoIdPagina == 0 || produtoIdPagina == undefined) { //Verifica se o produtoId é válido
        return null; //Retorna para a tela
    }

    //Lista utilizada para enviar os parametros para a controller
    var listaParametros = new Array();

    var i = 0;
    var attrNome;

    do {  //While nas opções paralelas
        var quantidade = 0;
        var opcaoSelecionada = true;
        var attrNaoSelecionado = false;
        var comboId = 0;
        var produtoId = 0;
        var dadosAtributo = [];
        var listaPersonalizacoes = [];

        domGrupoSelecaoAtributos
            .find('div[id="divOpcoes-' + i + '"]')
            .find('[data-codigoatributo]')
            .each(function (contadorItemCombo, itemCombo) {
                //$(this) = elemento da iteração
                var attrId = $(itemCombo).attr('data-codigoAtributo');
                attrNome = $(itemCombo).attr('data-nomeAtributo');
                var attrValor = 'Selecione';
                comboId = $(itemCombo).parents('li[id^="liComboItem-"]').attr('id').replace('liComboItem-', '');
                produtoId = $('input[id^="hdnProdutoId"]', itemCombo).val();    //Busca o produtoId do componente do combo

                if ($(itemCombo).find('[data-atributoSelecionado="True"]').length == 1) {
                    attrValor = $($(itemCombo).find('[data-atributoSelecionado="True"]')[0]).attr('data-valoratributo');
                }

                if (novoCheckout && attrValor == optionString && opcaoSelecionada == true && quantidadeOpcoesParalelas == 1) {
                    showError($('[id^=mensagem-erro-]', domGrupoSelecaoAtributos), "Selecione um(a) " + attrNome + " do produto.");
                    attrNaoSelecionado = true;
                }
                
                dadosAtributo.push({ AtributoId: attrId, Valor: attrValor }); //Insere os dados na lista            

                //Verifica se a opção não foi selecionada
                if (attrValor == optionString && opcaoSelecionada == true) { opcaoSelecionada = false; }
            });

        if (opcaoSelecionada) { quantidadeOpcoesParalelasSelecionadas++; }

        //SELECIONA A QUANTIDADE
        if (domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]').find('[id^="item-quantidade"]').length > 0)//Com base na opção paralela
            quantidade = domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]').find('[id^="item-quantidade"]').first().val();
        else if (domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]').find('[id="selQuantidade"]').length > 0)//Com no modelo antigo
            quantidade = domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]').find('[id="selQuantidade"]').val();
        else//Com base em qualquer posição da tela.
            if ($("#tipo-produto-assinatura").is(":checked"))
                quantidade = $('div[id^="produto-assinatura-item-"]').find('[id^="item-quantidade-"]').first().val();
            else if ($('[id ^=produto-variante-][id $=' + produtoIdPagina + ']').find('[id^="item-quantidade-"]').length > 0)
                quantidade = $('[id ^=produto-variante-][id $=' + produtoIdPagina + ']').find('[id^="item-quantidade-"]').val();
            else
                quantidade = $(domGrupoSelecaoAtributos).parents('[id^=produto-item-]').find('[id^="item-quantidade-"]').first().val();

        //SELECIONA O PRODUTO VARIANTE ID
        produtoVarianteId = domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]').parent().find('input[id="hdnProdutoVarianteId-' + i + '"]').val();

        listaPersonalizacoes = buscarPersonalizacoes(domGrupoSelecaoAtributos.find('div[id="divOpcoes-' + i + '"]'));

        if ($("#grupo-produto-personalizacao-").attr('data-personalizacao-obrigatorio') == "True" && listaPersonalizacoes == null) {
            showError($('[id^=mensagem-erro-]', domGrupoSelecaoAtributos), "Selecione uma personalização do produto.");
            attrNaoSelecionado = true;
        }

        //ADICIONA OS PARAMETROS NA LISTA
        listaParametros.push({
            ProdutoComboId: produtoComboId,
            ProdutoVarianteId: produtoVarianteId,
            ComboId: comboId,
            ProdutoId: produtoId,
            Atributos: dadosAtributo,
            Quantidade: quantidade,
            ListaPersonalizacoes: listaPersonalizacoes
        });

        i++;
    } while (i < quantidadeOpcoesParalelas || i < quantidadeOpcoesTela)

    var sellerBuyBoxNaoSelecionado = false;

    if ((typeof isBuyBox !== 'undefined' && isBuyBox.toLocaleLowerCase() == "true") && $("input[name='checkBuyBox']:checked").length == 0) {
        showError($('#mensagem-erro-buyBox'), "Selecione uma loja.");
        if (!attrNaoSelecionado) {
            sellerBuyBoxNaoSelecionado = true;
        }
        attrNaoSelecionado = true;
    }

    //Se for opção paralela e não tiver nenhum selecionado, apresenta erro e não vai para checkout
    if (quantidadeOpcoesParalelas > 1 && quantidadeOpcoesParalelasSelecionadas == 0 && (typeof isBuyBox !== 'undefined' && isBuyBox.toLocaleLowerCase() == "false")) {
        showError($('[id^=mensagem-erro-]', domGrupoSelecaoAtributos), "Selecione um(a) " + attrNome + " do produto.");
        attrNaoSelecionado = true;
    }

    //Se for opção paralela e ter algum selecionado, porém sem quantidade selecionada, apresenta erro e não vai para checkout
    if (novoCheckout && quantidadeOpcoesParalelas > 1 && quantidadeOpcoesParalelasSelecionadas > 0) {
        for (var i = 0; i < listaParametros.length; i++) {
            if (listaParametros[i].Atributos[0].Valor != "Selecione" && listaParametros[i].Quantidade == 0) {
                showError($('[id^=mensagem-erro-]', domGrupoSelecaoAtributos), "Selecione a quantidade do produto.");
                attrNaoSelecionado = true;
                break;
            }
        }
    }

    var objetoParametroComprarProduto = {};                       //Objeto a ser enviado para requisição
    objetoParametroComprarProduto.ProdutoId = produtoIdPagina;    //Identificador do produto da página
    objetoParametroComprarProduto.StrOpcional = optionString,     //String opcional da DropDownList
        objetoParametroComprarProduto.IsAssinatura = IsAssinatura,    //Identificador de assinatura
        objetoParametroComprarProduto.DadosProduto = listaParametros,  /*Dados da tela, utilizado para identificar um combo, quantidade e atributos selecionados*/
        objetoParametroComprarProduto.attrNaoSelecionado = attrNaoSelecionado, //Identifica que algum atributo não está selecionado
        objetoParametroComprarProduto.sellerBuyBoxNaoSelecionado = sellerBuyBoxNaoSelecionado //Identifica se somente está faltando selecionar o buybox

    return objetoParametroComprarProduto;
}

/**
* Incluir determinado produto no carrinho.
* @method validarItens 
*/
function comprarProduto(domProdutoItem, redirecionar, clickElement, origem) {

    if ($().fancybox && origem == "botaoAdicionar") {
        $.fancybox.showActivity();
    }

    habilitarCompra(false); //Desabilida botões de compra
    redirecionar = redirecionar == undefined ? false : redirecionar;

    //Busca o elemento qual possui os dados para compra do produto.
    var domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]', domProdutoItem); //Busca elemento principal
    if (checkOpcoesSelecionadas(domGrupoSelecaoAtributos)) {
        if ($(".divCompreJuntoCarrossel").length > 0) {
            comprarProdutoCompreJunto($('[id^="produto-item-"]'), origem);
            return habilitarCompra(true);              //Habilita botões de compra
        } /*else {
                domGrupoSelecaoAtributos = $("#dvGrupoSelecaoAtributos-0");
            }*/
    }

    var produtoIdMKP = 0;
    var produtoVarianteIdMKP = 0;

    if ((typeof isBuyBox !== 'undefined' && isBuyBox.toLocaleLowerCase() == "true") ) {
        var buyBoxProdutoId = $("input[name='checkBuyBox']:checked").data("produtoid");
        var buyBoxProdutoVarianteId = $("input[name='checkBuyBox']:checked").val();

        if (buyBoxProdutoId != undefined && buyBoxProdutoVarianteId != undefined) {

            produtoIdMKP = $("#dvGrupoSelecaoAtributos-0 #hdnProdutoId").val();
            produtoVarianteIdMKP = $("#dvGrupoSelecaoAtributos-0 #hdnProdutoVarianteId-0").val();

            $("#dvGrupoSelecaoAtributos-0 #hdnProdutoId").val(buyBoxProdutoId);
            $("#dvGrupoSelecaoAtributos-0 #hdnProdutoVarianteId-0").val(buyBoxProdutoVarianteId);
        }
    }

    var objetoParametroComprarProduto = buscaParametrosTela(domGrupoSelecaoAtributos);      //Busca parametros da tela
    var objetoParametroComprarServico = buscarServicosTela(clickElement);
    objetoParametroComprarProduto.ListaServicos = objetoParametroComprarServico.ListaServicos;
    objetoParametroComprarProduto.VerificarServico = objetoParametroComprarServico.VerificarServico;

    if (objetoParametroComprarProduto != undefined) {
        if (typeof (objetoParametroComprarProduto.DadosProduto) !== 'undefined') {
            // remove produtos com ids inválidos retornados pelo método 'buscaParametrosTela' (Acontece apenas em cenário de Compre Junto)
            for (var i = objetoParametroComprarProduto.DadosProduto.length - 1; i >= 0; i--) {
                if (typeof (objetoParametroComprarProduto.DadosProduto[i].ProdutoVarianteId) === 'undefined') {
                    objetoParametroComprarProduto.DadosProduto.splice(i, 1);
                }
                else if (novoCheckout) {
                    //remove opção não selecionada (no caso de opção paralela, estava mandando pro novo checkout uma opção não selecionada)
                    var atributosSelecionados = objetoParametroComprarProduto.DadosProduto[i].Atributos.filter(function (atributo) { return atributo.Valor !== 'Selecione' });
                    if (objetoParametroComprarProduto.DadosProduto[i].Atributos.length > 0 && atributosSelecionados.length !== objetoParametroComprarProduto.DadosProduto[i].Atributos.length) {
                        objetoParametroComprarProduto.DadosProduto.splice(i, 1);
                    }
                }
            }
        }

        if ((typeof isBuyBox !== 'undefined' && isBuyBox.toLocaleLowerCase() == "true")  && produtoIdMKP > 0) {
            $("#dvGrupoSelecaoAtributos-0 #hdnProdutoId").val(produtoIdMKP);
            $("#dvGrupoSelecaoAtributos-0 #hdnProdutoVarianteId-0").val(produtoVarianteIdMKP);
        }

        if (novoCheckout && !objetoParametroComprarProduto.attrNaoSelecionado) {
            comprarProdutoRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos, redirecionar, origem); //Realiza a requisição para comprar o produto
        }
        else if (!novoCheckout) {
            comprarProdutoRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos, redirecionar, origem); //Realiza a requisição para comprar o produto
        }
        else if (novoCheckout && objetoParametroComprarProduto.attrNaoSelecionado) {
            $.fancybox.hideActivity();
        }
    }

    habilitarCompra(true);              //Habilita botões de compra
}

/**
* Função responsável por enviar a requisição de compra do produto para o server.
*/
function comprarProdutoRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos, enviarUsuarioAoCarrinho, origem) {
    var parametroCompraProduto = JSON.stringify(objetoParametroComprarProduto); //Transforma o objeto no tipo JSON.
    var urlCompraProduto = fbits.ecommerce.urlEcommerce; //Url para compra de produtos.


    if (Fbits.Evento.TemEventoAtivo && Fbits.Evento.Perfil === "Dono") {
        // caso aja evento ativo deverá ser encaminhado para "/Produto/Comprar" 
        urlCompraProduto = fbits.ecommerce.urlEcommerce;
    }
    else if (typeof (ListaDeDesejosCheckout) !== 'undefined' || novoCheckout) {
        urlCompraProduto = fbits.ecommerce.urlCarrinho;
    }


    var _compraProduto = function () {
        $.ajax({
            type: 'POST',
            url: urlCompraProduto + 'Produto/ComprarProduto',
            data: parametroCompraProduto,
            async: false,
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            xhrFields: { withCredentials: novoCheckout },
            success: function (data) {
                if (Fbits.Evento.TemEventoAtivo && Fbits.Evento.Perfil == "Dono" && data.resultadoCompra.StatusRequisicao === 0 && (data.resultadoCompra.Mensagem == "" || data.resultadoCompra.Mensagem == null)) {
                    if ($().fancybox) {
                        $.fancybox('<div class="retornoVinculoEvento">' +
                            '<div class="evento-modal" >' +
                            '<div class="evento-modal_header">' +
                            '<div class="tray-r">' +
                            '<div class="tray-c-3">' +
                            '<img src="' + Fbits.Produto.FotoPrincipal + '" width="100" height="auto">' +
                            '</div>' +
                            ' <div class="tray-c-9">' +
                            '<h3 class="evento-modal_title">' + Fbits.Produto.Nome + '</h3>' +
                            '</div>' +
                            '</div>' +
                            '</div>' +
                            '<div class="tray-r">' +
                            '<div class="mg-t-50 pd-t-30 mg-b-50">' +
                            '<p>' +
                            'Produto foi adicionado ao seu evento com sucesso! <br/> ' +
                            'Continue adicionando produtos ao seu evento.' +
                            '</p>' +
                            '</div>' +
                            '</div>' +
                            '</div>' +
                            '</div>'
                        );
                        if ($("[id^=produto-comprar-]").first().find("a").length > 0)
                            $("[id^=produto-comprar-]").first().find("a").text("Produto já adicionado a lista");
                    }
                } else {
                    if (novoCheckout) {
                        //Se for novo checkout, verifica o products para validar quantidade selecionada e estoque disponível
                        var redirecionar = data.redirecionar;
                        $.ajax({
                            type: 'GET',
                            url: fbits.ecommerce.urlEcommerce + "Produto/GetDadosProdutoFromProducts/",
                            data: { produtoVarianteId: objetoParametroComprarProduto.DadosProduto[0].ProdutoVarianteId },
                            contentType: 'application/json; charset=utf-8',
                            dataType: 'json',
                            success: function (dataProducts) {
                                if (dataProducts.retorno != null && dataProducts.retorno != undefined) {
                                    var retorno = jQuery.parseJSON(dataProducts.retorno);
                                    if (retorno != null && retorno != undefined && retorno.EstoqueFisico != undefined && retorno.EstoqueFisico != null) {
                                        //url http://localhost:51189/api/produtovariante/padrao?Ids=301
                                        //var estoqueFisico = retorno[0].Estoque[0].EstoqueFisiso;
                                        //var estoqueReservado = retorno[0].Estoque[0].EstoqueReservado;
                                        //url http://localhost:51189/api/produtovariante/padrao/estoque/301
                                        var estoqueFisico = retorno.EstoqueFisico != undefined ? retorno.EstoqueFisico : 0;
                                        var estoqueReservado = retorno.EstoqueReservado != undefined ? retorno.EstoqueReservado : 0;
                                        var estoqueAtual = estoqueFisico - estoqueReservado;
                                        var quantidadeSelecionada = parseInt(objetoParametroComprarProduto.DadosProduto[0].Quantidade, 10) != undefined ? parseInt(objetoParametroComprarProduto.DadosProduto[0].Quantidade, 10) : 0;
                                        if (estoqueAtual < quantidadeSelecionada) {
                                            redirecionar = false;
                                            data.resultadoCompra.Mensagem = "Não foi possível atender a quantidade solicitada, existem apenas " + estoqueAtual + " unidades disponíveis.";
                                            data.resultadoCompra.StatusRequisicao = 1;
                                        }
                                    }

                                }
                                //return redirecionar;
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                personalizacaoPendente = false;
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                                resolveResultadoComprar(data, domGrupoSelecaoAtributos, enviarUsuarioAoCarrinho, objetoParametroComprarProduto, origem);
                            }

                        }).done(function (dataProducts) {
                            data.redirecionar = redirecionar;
                            resolveResultadoComprar(data, domGrupoSelecaoAtributos, enviarUsuarioAoCarrinho, objetoParametroComprarProduto, origem);
                        }).fail(function () {
                            resolveResultadoComprar(data, domGrupoSelecaoAtributos, enviarUsuarioAoCarrinho, objetoParametroComprarProduto, origem);
                        });

                    } else {
                        resolveResultadoComprar(data, domGrupoSelecaoAtributos, enviarUsuarioAoCarrinho, objetoParametroComprarProduto, origem);
                    }


                }
            }
        });
    }

    if (novoCheckout) {
        $.ajax({
            url: fbits.ecommerce.urlCarrinho + 'api/carrinho/',
            xhrFields: {
                withCredentials: true
            },
            crossDomain: true,
            success: function (carrinho) {

                var guidParceiro = Fbits.Framework.Cookie.getCookie("Parceiro");
                if (guidParceiro != undefined && guidParceiro != null && guidParceiro != "") {

                    var dataParceiro = {
                        carrinhoId: carrinho.Id,
                        Parceiro: guidParceiro
                    };

                    var nomeCliente = fbits.ecommerce.nome;
                    nomeCliente = (nomeCliente.split(' ').join('')).toLowerCase();

                    $.ajax({
                        type: 'POST',
                        url: "https://parceiros.fbits.net/parceiros/" + nomeCliente + "/encrypt/carrinho",
                        contentType: 'application/json',
                        data: JSON.stringify(dataParceiro),
                        async: false,
                        success: function (dataParceiroResponse) {
                            if (dataParceiroResponse) {
                                console.log("Parceiro vinculado com sucesso!");
                            }
                        }
                    });
                }

                //var temPersonalizacao = Boolean($('.produto-personalizacao').find("[id^='txt-personalizacao']").val());
                //if (temPersonalizacao) {
                //    var qtdeProdutos = parseInt($('[id^="item-quantidade"]').val());
                //    var obj = {
                //        carrinhoId: carrinho.Id,
                //        prodComPersonalizacoes: Array.apply(null, new Array(qtdeProdutos)).map(function () {
                //            return {
                //                produtoId: objetoParametroComprarProduto.ProdutoId,
                //                produtoVarianteId: objetoParametroComprarProduto.DadosProduto[0].ProdutoVarianteId,
                //                personalizacoes: objetoParametroComprarProduto.DadosProduto[0].ListaPersonalizacoes.map(function (x) {
                //                    return { personalizacaoId: x.GrupoPersonalizacaoDetalheId, valor: x.Personalizacao };
                //                })
                //            }
                //        }).reduce((acc, val) => acc.concat(val), [])
                //    }
                //}

                ////se tem personalização faz request
                //if (temPersonalizacao && obj.prodComPersonalizacoes[0].personalizacoes.length) {

                var aux = [];
                var temPersonalizacao = objetoParametroComprarProduto.DadosProduto.map(function (dp) { return dp.ListaPersonalizacoes.length }) > 0;
                if (objetoParametroComprarProduto.DadosProduto.map(function (dp) { return dp.ListaPersonalizacoes.length }) > 0) {
                    var qtdeProdutos = parseInt($('[id^="item-quantidade"]').val());
                    var obj = {
                        carrinhoId: carrinho.Id,
                        prodComPersonalizacoes: Array.apply(null, new Array(qtdeProdutos)).map(function () {
                            return {
                                produtoId: objetoParametroComprarProduto.ProdutoId,
                                produtoVarianteId: objetoParametroComprarProduto.DadosProduto[0].ProdutoVarianteId,
                                personalizacoes: objetoParametroComprarProduto.DadosProduto.map(function (dp) { return dp.ListaPersonalizacoes.map(function (p, key) { return aux[key] = { personalizacaoId: p.GrupoPersonalizacaoDetalheId, valor: p.Personalizacao } }) })[0]
                            }
                        }).reduce((acc, val) => acc.concat(val), [])
                    }
                }

                //se tem personalização faz request
                if (temPersonalizacao) {
                    if (!personalizacaoPendente)
                    {
                        personalizacaoPendente = true;
                        $.ajax({
                            type: 'POST',
                            url: fbits.ecommerce.urlCustom + '/list',
                            contentType: 'application/json',
                            data: JSON.stringify(obj),
                            success: _compraProduto,
                            error: function (ex) {
                                personalizacaoPendente = false;
                                $('div.produto-personalizacao').first().append('<div class="erro-personalizacao" data-error="true">Ops! Houve um problema ao personalizar!</div>');
                                setTimeout(function () {
                                    $('div.produto-personalizacao div[data-error]').remove();
                                }, 4000);
                            }
                        });
                    }
                } else {
                    _compraProduto();
                }
            }
        });
    } else {
        _compraProduto();
    }
}

function resolveResultadoComprar(data, domGrupoSelecaoAtributos, enviarUsuarioAoCarrinho, objetoParametroComprarProduto, origem) {

    var removerItensComSucesso = false;

    if (data.redirecionar) { //Remove ou não os itens
        removerItensComSucesso = true;
    }

    tratarResultadoCompraProduto(data.resultadoCompra, domGrupoSelecaoAtributos, removerItensComSucesso); //Trata sucesso e erros da requisição

    if (data.resultadoCompra.AbrirModal && data.urlRedirecionar) {
        $.get(data.urlRedirecionar, function (data) {
            if ($().fancybox) {
                var a = $.fancybox(data);
                $('[id^=produto-botao-comprar-]').unbind('click');
                $('[id^=produto-botao-comprar-]').bind('click', function () {
                    comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), "botaoComprar");
                });
            }

            $('[id^="tb-servico-item-"]').click(function (event) {
                if ($(this).find('input[id^="radio-sem-servico-"]').length > 0) {
                    $(this).find('input[id^="radio-sem-servico-"]').prop('checked', true);
                    atualizarServico($(this).find('input[id^="radio-sem-servico-"]'));
                }
                else if ($(this).find('input[id^="radio-servico-"]').length > 0) {
                    $(this).find('input[id^="radio-servico-"]').prop('checked', true);
                    atualizarServico($(this).find('input[id^="radio-servico-"]'));
                }
            });
        });
    }
    else if (data.redirecionar && enviarUsuarioAoCarrinho) { //Redireciona o usuário para o carrinho
        if (origem == "botaoComprar") {
            location.href = data.urlRedirecionar;
        } else if (origem == "botaoAdicionar") {
            personalizacaoPendente = false;
            $.ajax({
                type: 'POST',
                url: fbits.ecommerce.urlEcommerce + 'Produto/ModalConfirmacaoProduto',
                data: { produtoId: objetoParametroComprarProduto.ProdutoId },
                success: function (data) {
                    if ($().fancybox) {
                        if (novoCheckout) {
                            $.ajax({
                                type: "GET",
                                url: fbits.ecommerce.urlCarrinho + "/api/carrinho?cache=false",
                                xhrFields: { withCredentials: true },
                                success: function (dataCheckout) {
                                    var total = 0
                                    var tipoItem = "item"
                                    for (var i = 0, _len = dataCheckout.Produtos.length; i < _len; i++) {
                                        total += dataCheckout.Produtos[i].Quantidade
                                    }

                                    tipoItem = total > 1 ? "itens" : "item";

                                    var modal = data.dados.replace('<span class="qtdaModalItensCesta">0</span>', '<span class="qtdaModalItensCesta">' + total + '</span>');
                                    modal = modal.replace('<span class="itensModalItensCesta">item</span>', '<span class="itensModalItensCesta">' + tipoItem + '</span>');

                                    $.fancybox(modal)
                                },
                                crossDomain: true
                            });
                        } else {
                            $.fancybox(data.dados);
                        }
                    }
                }
            });

        }
    }
    else {
        personalizacaoPendente = false;
        if ($().fancybox && origem == "botaoAdicionar") {
            $.fancybox.hideActivity();
        }

        //Mostra mensagens para o usuario
        $('html, body').animate({
            //scrollTop: $(this.domGrupoSelecaoAtributos).offset().top - 70
            scrollTop: $(".produtoInfo").offset().top
        }, 'slow');
    }


}

/**
* Função responsável por enviar a requisição de compra do produto para o server.
*/
function comprarProdutoAssinaturaRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos, enviarUsuarioAoCarrinho) {

    var parametroCompraProduto = JSON.stringify(objetoParametroComprarProduto); //Transforma o objeto no tipo JSON.
    var urlCompraProduto = '/Produto/ComprarProdutoAssinatura';             //Url para compra de produtos.

    //Realiza a requisição ajax
    $.ajax({
        type: 'POST',
        url: urlCompraProduto,
        data: parametroCompraProduto,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        context: { domGrupoSelecaoAtributos: domGrupoSelecaoAtributos, enviarUsuarioAoCarrinho: enviarUsuarioAoCarrinho },
        success: function (data) {
            var removerItensComSucesso = false;

            if (data.redirecionar) { //Remove ou não os itens
                removerItensComSucesso = true;
            }

            tratarResultadoCompraProduto(data.resultadoCompra, this.domGrupoSelecaoAtributos, removerItensComSucesso); //Trata sucesso e erros da requisição

            if (data.resultadoCompra.AbrirModal && data.urlRedirecionar) {
                $.get(data.urlRedirecionar, function (data) {
                    if ($().fancybox) {
                        var a = $.fancybox(data);
                        $('[id^=produto-assinatura-botao-comprar-]').unbind('click');
                        $('[id^=produto-assinatura-botao-comprar-]').bind('click', function () {
                            if (novoCheckout) {
                                if (vincularAssinaturaRecorrencia) {
                                    vincularAssinaturaRecorrencia();
                                }
                                comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), "botaoComprar");
                                return;
                            } else {
                                comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this));
                            }
                        });
                    }
                    $('table[id^="tb-servico-item-"]').click(function (event) {
                        $(event.srcElement).parents('table').find('input[id^="radio-servico-"]').click();
                        if ($(event.srcElement).parents('table').find('input[id^="radio-servico-"]')) atualizarServico($(event.srcElement).parents('table').find('input[id^="radio-servico-"]'));
                    });
                });
            }
            else if (data.redirecionar && this.enviarUsuarioAoCarrinho) { //Redireciona o usuário para o carrinho
                location.href = data.urlRedirecionar;
            }
            else {
                //Mostra mensagens para o usuario
                $('html, body').animate({
                    scrollTop: $(this.domGrupoSelecaoAtributos).offset().top - 70
                }, 'slow');
            }
        }
    });
}

// Compra todos os produtos selecionados na tela
function comprarProdutoCompreJunto(domListaProdutoItens, origem) {
    /*habilitarCompra(false); //Desabilida botões de compra

    var domGrupoSelecaoAtributos = {};
    var listaParametros = [];
    var objetoParametroComprarProduto = {};
    var atributosSelecionados = true;
    var IdSeletor = 0;
    $(domListaProdutoItens).each(function (contador, produtoItem) {
        //Busca o elemento qual possui os dados para compra do produto.
        if ($(produtoItem).find("[id^=Adicionar-ProdutoId]").length == 1 && !$(produtoItem).hasClass("detalhe-produto-itens")) {
            if ($(produtoItem).find("[id^=Adicionar-ProdutoId]").is(":checked") == false)
                return;
            else
                IdSeletor = produtoItem.id.split("-").pop(-1);
        }
        if ($(produtoItem).parents("#divGruposProdutoRecomendado").length == 1)
            return;

        domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-' + IdSeletor + '"]');  //Busca elemento principal
        checkOpcoesSelecionadas(domGrupoSelecaoAtributos); //Verifica a quantidade, utilizada para validar os combos

        objetoParametroComprarProduto = buscaParametrosTela(domGrupoSelecaoAtributos);     //Busca parametros da tela

        if (objetoParametroComprarProduto != null) //Adiciona o objeto com os dados da tela na lista
            listaParametros.push(objetoParametroComprarProduto);

    });

    if (listaParametros.length > 0)
        comprarProdutoTodosRequest(listaParametros); //Realiza a requisição para comprar o produto

    habilitarCompra(true); //Habilita botões de compra*/

    habilitarCompra(false); //Desabilida botões de compra


    var domGrupoSelecaoAtributos = {};
    var listaParametros = [];
    var objetoParametroComprarProduto = {};
    var atributosSelecionados = true;
    var IdSeletor = 0;

    $(domListaProdutoItens).each(function (contador, produtoItem) {
        //Busca o elemento qual possui os dados para compra do produto.
        if ($(produtoItem).find("[id^=Adicionar-ProdutoId]").length == 1 && !$(produtoItem).hasClass("detalhe-produto-itens")) {
            if ($(produtoItem).find("[id^=Adicionar-ProdutoId]").is(":checked") == false)
                return;
            else
                IdSeletor = produtoItem.id.split("-").pop(-1);
        }
        if ($(produtoItem).parents("#divGruposProdutoRecomendado").length == 1)
            return;

        domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-' + IdSeletor + '"]');  //Busca elemento principal
        checkOpcoesSelecionadas(domGrupoSelecaoAtributos); //Verifica a quantidade, utilizada para validar os combos

        objetoParametroComprarProduto = buscaParametrosTela(domGrupoSelecaoAtributos);     //Busca parametros da tela

        if (objetoParametroComprarProduto != null) //Adiciona o objeto com os dados da tela na lista
            listaParametros.push(objetoParametroComprarProduto);

    });

    if (novoCheckout && objetoParametroComprarProduto.attrNaoSelecionado) {
        $.fancybox.hideActivity();
        return;
    }

    var _compraProdutoJuntosPersonalizacao = function () {
        if (listaParametros.length > 0)
            comprarProdutoTodosRequest(listaParametros, origem); //Realiza a requisição para comprar o produto

        habilitarCompra(true); //Habilita botões de compra
    }

    if (novoCheckout) {
        $.ajax({
            url: fbits.ecommerce.urlCarrinho + 'api/carrinho/',
            xhrFields: {
                withCredentials: true
            },
            crossDomain: true,
            success: function (carrinho) {

                var guidParceiro = Fbits.Framework.Cookie.getCookie("Parceiro");
                if (guidParceiro != undefined && guidParceiro != null && guidParceiro != "") {

                    var dataParceiro = {
                        carrinhoId: carrinho.Id,
                        Parceiro: guidParceiro
                    };

                    $.ajax({
                        type: 'POST',
                        url: "https://parceiros.fbits.net/parceiros/" + (fbits.ecommerce.nome.replace(" ", "")).toLowerCase() + "/encrypt/carrinho",
                        contentType: 'application/json',
                        data: JSON.stringify(dataParceiro),
                        success: function (dataParceiroResponse) {
                            if (dataParceiroResponse) {
                                console.log("Parceiro vinculado com sucesso!");
                            }
                        }
                    });
                }

                if (listaParametros.length > 0) {
                    var aux = {};
                    var produtos = [];
                    var hasPersonalizacao = false;
                    var qtdeProdutos = 0;

                    $("[id^='produto-item']").each(function () {
                        var textPersonalizacao = String($(this).find("[id^='txt-personalizacao']").val());

                        if (textPersonalizacao !== undefined && textPersonalizacao !== "undefined" && textPersonalizacao !== '') {
                            hasPersonalizacao = true;
                            qtdeProdutos = parseInt($(this).find("[id^='item-quantidade']").val());

                            produtos.push(
                                Array.apply(null, new Array(qtdeProdutos)).map(function () {
                                    return listaParametros
                                        .filter(function (f) { return f.DadosProduto.map(function (fm) { return fm.ListaPersonalizacoes.map(function (fmm) { return fmm.Personalizacao })[0] })[0] === textPersonalizacao })
                                        .map(function (x) {
                                            return {
                                                produtoId: x.ProdutoId,
                                                produtoVarianteId: x.DadosProduto.map(function (dp) { return dp.ProdutoVarianteId }).toString(),
                                                personalizacoes: x.DadosProduto.map(function (dp) { return dp.ListaPersonalizacoes.map(function (p, key) { return aux[key] = { personalizacaoId: p.GrupoPersonalizacaoDetalheId, valor: p.Personalizacao } }) })[0]
                                            }
                                        })
                                }).reduce((acc, val) => acc.concat(val), [])
                            )
                        }
                    });

                    var prodComPersonalizacoes = produtos.reduce((acc, val) => acc.concat(val), []);
                    var obj = {
                        carrinhoId: carrinho.Id,
                        prodComPersonalizacoes
                    }
                }

                if (hasPersonalizacao) {
                    $.ajax({
                        type: 'POST',
                        url: fbits.ecommerce.urlCustom + '/list',
                        contentType: 'application/json',
                        data: JSON.stringify(obj),
                        success: _compraProdutoJuntosPersonalizacao,
                        error: function (ex) {
                            $('#divCompreJunto').first().append('<div class="erro-personalizacao" data-error="true">Ops! Houve um problema ao personalizar!</div>');
                            setTimeout(function () {
                                $('#divCompreJunto div[data-error]').remove();
                            }, 4000);
                        }
                    });
                } else {
                    _compraProdutoJuntosPersonalizacao();
                }
            }
        });
    } else {
        _compraProdutoJuntosPersonalizacao();
    }
}

/**
* Incluir uma lista de produtos no carrinho.
* @method validarItens 
*/
function comprarProdutoTodos(domListaProdutoItens) {
    habilitarCompra(false); //Desabilida botões de compra

    var domGrupoSelecaoAtributos = {};
    var listaParametros = [];
    var objetoParametroComprarProduto = {};
    var atributosSelecionados = true;
    $(domListaProdutoItens).each(function (contador, produtoItem) {
        if (!produtoItem.parentElement.id.includes("produto-dados-variante-")) {
            //Busca o elemento qual possui os dados para compra do produto.
            domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]', produtoItem);  //Busca elemento principal
            checkOpcoesSelecionadas(domGrupoSelecaoAtributos); //Verifica a quantidade, utilizada para validar os combos

            objetoParametroComprarProduto = buscaParametrosTela(domGrupoSelecaoAtributos);     //Busca parametros da tela

            if (objetoParametroComprarProduto != null) //Adiciona o objeto com os dados da tela na lista
                listaParametros.push(objetoParametroComprarProduto);
        }

    });

    if ($.grep(listaParametros, function (dados) { return dados.attrNaoSelecionado; }).length > 0) {
        habilitarCompra(true);
        return;
    }

    if (listaParametros.length > 0)
        comprarProdutoTodosRequest(listaParametros, 'botaoComprar'); //Realiza a requisição para comprar o produto

    habilitarCompra(true); //Habilita botões de compra
}

/**
* Função responsável por enviar a requisição de compra do produto para o server.
*/
function comprarProdutoTodosRequest(listaObjetoParametroComprarProduto, origem) {
    var listaParametroCompraProduto = JSON.stringify(listaObjetoParametroComprarProduto); //Transforma o objeto no tipo JSON.
    var urlCompraProduto = (novoCheckout ? fbits.ecommerce.urlCarrinho : fbits.ecommerce.urlEcommerce) + '/Produto/ComprarProdutoTodos';                  //Url para compra de produtos.

    if (typeof (ListaDeDesejosCheckout) != 'undefined') {
        urlCompraProduto = fbits.ecommerce.urlCarrinho + 'Produto/ComprarProdutoTodos'
    }

    //Realiza a requisição ajax
    $.ajax({
        type: 'POST',
        url: urlCompraProduto,
        data: listaParametroCompraProduto,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        xhrFields: { withCredentials: novoCheckout },
        success: function (data) {
            tratarResultadoCompraProdutoTodos(data.resultadoCompra, data.redirecionar, origem); //Trata sucesso e erros da requisição
        }
    });
}

/**
* Habilita ou desabilita elementos de inclusão do produto no carrinho
* @param halibitar 
*     true habilita elementos.
*     false desabilita elementos. 
* caso seja diferente desabilita os elementos
*/
function habilitarCompra(halibitar) {
    if (halibitar) { //Habilita o botão comprar e esconde a div de carregando.
        $('input[id^=comprar-]').removeAttr('disabled');
        $('input[id^=carrinho-comprar]').removeAttr('disabled');
        $('input[id=todos-comprar]').removeAttr('disabled');
        $('input[id^=um-clique-comprar-]').removeAttr('disabled');
        $('[id^=spot-comprar-]').removeAttr('disabled');
    } else { //Desabilita o botão para evitar varios cliques
        $('input[id^=comprar-]').attr('disabled', 'disabled');
        $('input[id^=carrinho-comprar]').attr('disabled', 'disabled');
        $('input[id=todos-comprar]').attr('disabled', 'disabled');
        $('input[id^=um-clique-comprar-]').attr('disabled', 'disabled');
        $('[id^=spot-comprar-]').attr('disabled', 'disabled');
    }
}

/**
* Função responsável por tratar o resultado da compra de produto.
* @param data Dados da resposta da requisição.
* @param domGrupoSelecaoAtributos elemento DOM o qual comtem os dados do determinado produto.
*/
function tratarResultadoCompraProduto(data, domGrupoSelecaoAtributos, removerItem) {
    if (domGrupoSelecaoAtributos != undefined) { //Vefica a existencia do grupo de seleção de atributos
        var produtoItem = $(domGrupoSelecaoAtributos).parents('[id^=produto-item-]'); //Busca os dados do item
        removerItem = (removerItem == undefined) ? true : removerItem;

        if (data.StatusRequisicao == 0 && produtoItem != undefined) //Produto comprado com sucesso
        {
            $(produtoItem).addClass("itemEnabled");
            if (removerItem) {
                $('input[id^="produto-remover-"]', produtoItem).trigger('click'); //Chama o evento de remover do botão
            }
            atualizarResumoCarrinho();
        }
        else //Trata erros
        {
            //Seta as mensagens de erro.
            //$('[id^="divOpcoes-"]').each(function () {
            //  hideErrors();
            //});

            $('div[id="divOpcoes-' + index + '"] [id^="mensagem-erro-"]', domGrupoSelecaoAtributos).html(''); //Limpa mensagens de erro
            var index = data.indexOpcoes == undefined || data.indexOpcoes < 0 ? 0 : data.indexOpcoes; //Checa o index do produto a receber a mensagem
            //$('div[id="divOpcoes-' + index + '"] [id^="mensagem-erro-"]', domGrupoSelecaoAtributos).html(data.Mensagem); //Seta mensagem
            $(produtoItem).addClass("itemDisabled");
            $('[id="produto-legenda"]').removeClass('displayNone').addClass('displayBlock');


            if (data.erroIndex >= 0) {
                //domGrupoSelecaoAtributos.find('#divOpcoes-' + data.erroIndex).find('.erro').html();
                showError(domGrupoSelecaoAtributos.find('#divOpcoes-' + data.erroIndex).find('[id^="' + labelErroPartialId + '"]'), data.Mensagem)
            }
            else {
                if (data.Mensagem != "") {
                    showError($('[id^="' + labelErroPartialId + '"]', domGrupoSelecaoAtributos), data.Mensagem)
                }
                else {
                    $('[id^="divOpcoes-"]').each(function () {
                        showError($(this).find('[id^="' + labelErroPartialId + '"]'), data.Mensagem);
                    });
                }
            }

        }
    }
}

/**
* Função responsável por tratar o resultado da compra de produto (quando existem múltiplos produtos na página).
* @param data Dados da resposta da requisição.
* @param domGrupoSelecaoAtributos elemento DOM o qual comtem os dados do determinado produto.
*/
function tratarResultadoCompraProduto2(data, domGrupoSelecaoAtributos, removerItem) {
    if (domGrupoSelecaoAtributos != undefined) { //Vefica a existencia do grupo de seleção de atributos
        var produtoItem = $(domGrupoSelecaoAtributos).parents('[id^=produto-item-]'); //Busca os dados do item
        removerItem = (removerItem == undefined) ? true : removerItem;

        if (data.StatusRequisicao == 0 && produtoItem != undefined) //Produto comprado com sucesso
        {
            $(produtoItem).addClass("itemEnabled");
            if (removerItem) {
                $('input[id^="produto-remover-"]', produtoItem).trigger('click'); //Chama o evento de remover do botão
            }
            atualizarResumoCarrinho();
        }
        else //Trata erros
        {
            //Seta as mensagens de erro.
            $('[id^="' + labelErroPartialId + '"]', domGrupoSelecaoAtributos).html('').fadeOut('slow');
            $('div[id="divOpcoes-' + index + '"] [id^="mensagem-erro-"]', domGrupoSelecaoAtributos).html(''); //Limpa mensagens de erro
            var index = data.indexOpcoes == undefined || data.indexOpcoes < 0 ? 0 : data.indexOpcoes; //Checa o index do produto a receber a mensagem
            $('div[id="divOpcoes-' + index + '"] [id^="mensagem-erro-"]', domGrupoSelecaoAtributos).html(data.Mensagem); //Seta mensagem
            $(produtoItem).addClass("itemDisabled");
            $('[id="produto-legenda"]').removeClass('displayNone').addClass('displayBlock');

            if (data.erroIndex >= 0) {
                domGrupoSelecaoAtributos.find('#divOpcoes-' + data.erroIndex).find('[id^="' + labelErroPartialId + '"]').stop().html(data.msgErro).fadeTo('slow', 1.0).delay(7000).fadeOut('slow');
            }
            else {
                if (data.Mensagem != "") {
                    if ($(domGrupoSelecaoAtributos).parents('div[id^="divCompreJunto"]').length > 0) {
                        $('[id^="' + labelErroPartialId + '"]', domGrupoSelecaoAtributos).stop().html(data.msgErro).focus();
                    } else {
                        $('[id^="' + labelErroPartialId + '"]', domGrupoSelecaoAtributos).stop().html(data.msgErro).fadeTo("slow", 1).delay(7000).fadeOut("slow")
                    }
                }
                else {
                    $('[id^="divOpcoes-"]').each(function () {
                        $(this).find('[id^="' + labelErroPartialId + '"]').stop().html(data.msgErro).fadeTo('slow', 1.0).delay(7000).fadeOut('slow');
                    });
                }
            }
        }
    }
}

/**
* Função responsável por tratar o resultado da compra de um conjunto de produtos.
* @param data Dados da resposta da requisição.
*/
function tratarResultadoCompraProdutoTodos(data, redirecionar, origem) {
    //Variaveis
    var domGrupoSelecaoAtributos = {};
    var redirecionar = (redirecionar == undefined) ? false : redirecionar;
    var removerItensComSucesso = false;
    var isCompreJunto = ($("#divCompreJunto").length > 0);
    if (redirecionar) { //Remove ou não os itens
        removerItensComSucesso = true;
    }

    if (window.location.href.toLowerCase().indexOf("listadedesejos") > -1) {
        $.each($('div[id^="dvGrupoSelecaoAtributos-"]', '[id^="produto-item-"]'), function (index, value) {
            //console.log(value)
            //console.log($('input[id^="produto-remover-"]', $(value).parents('[id^=produto-item-]')));
            tratarResultadoCompraProduto2(data, value, removerItensComSucesso);
        });
    } else {
        //Iteração com os itens do retorno
        $.each(data, function (index, value) {
            if (isCompreJunto)
                tratarResultadoComprarCompreJunto(value);
            else {
                domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]', '[id^="produto-item-"]')[index];
                tratarResultadoCompraProduto2(value, domGrupoSelecaoAtributos, removerItensComSucesso);
            }
        });
    }

    if (origem == "botaoComprar") {
        if (redirecionar) { //Redireciona o usuário para o carrinho
            location.href = fbits.ecommerce.urlCarrinho;
        }
        else { //Mostra mensagens para o usuario
            if (!isCompreJunto)
                $('html, body').animate({ scrollTop: 100 }, 'slow');
        }
    } else if (origem == "botaoAdicionar") {
        $.ajax({
            type: 'POST',
            url: fbits.ecommerce.urlEcommerce + 'Produto/ModalConfirmacaoProduto',
            data: { produtoId: 0 },
            success: function (data) {
                if ($().fancybox) {
                    if (novoCheckout) {
                        $.ajax({
                            type: "GET",
                            url: fbits.ecommerce.urlCarrinho + "/api/carrinho?cache=false",
                            xhrFields: { withCredentials: true },
                            success: function (dataCheckout) {
                                var total = 0
                                var tipoItem = "item"
                                for (var i = 0, _len = dataCheckout.Produtos.length; i < _len; i++) {
                                    total += dataCheckout.Produtos[i].Quantidade
                                }

                                tipoItem = total > 1 ? "itens" : "item";

                                var modal = data.dados.replace('<span class="qtdaModalItensCesta">0</span>', '<span class="qtdaModalItensCesta">' + total + '</span>');
                                modal = modal.replace('<span class="itensModalItensCesta">item</span>', '<span class="itensModalItensCesta">' + tipoItem + '</span>');

                                $.fancybox(modal)
                            },
                            crossDomain: true
                        });
                    } else {
                        $.fancybox(data.dados);
                    }
                }
            }
        });
    }
}
/*
Trata do resultado da compra do componente compre junto
*/
function tratarResultadoComprarCompreJunto(data) {

    if (identificador !== null && identificador !== undefined) {
        var identificador = data.IdentificadorDOM.split("-")[0];
        var domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]', '[id ^=produto-item-][id $=' + identificador + ']').first();
    }

    if (domGrupoSelecaoAtributos != undefined && domGrupoSelecaoAtributos.length > 0) { //Vefica a existencia do grupo de seleção de atributos

        if (data.StatusRequisicao == 0) //Produto comprado com sucesso
        {
            $(domGrupoSelecaoAtributos).addClass("itemEnabled");
            atualizarResumoCarrinho();
        }
        else //Trata erros
        {
            //Seta as mensagens de erro.
            $('[id^="' + labelErroPartialId + '"]', domGrupoSelecaoAtributos).html('').fadeOut('slow');
            $('div[id="divOpcoes-' + index + '"] [id^="mensagem-erro-"]', domGrupoSelecaoAtributos).html(''); //Limpa mensagens de erro
            var index = data.indexOpcoes == undefined || data.indexOpcoes < 0 ? 0 : data.indexOpcoes; //Checa o index do produto a receber a mensagem
            $('div[id="divOpcoes-' + index + '"] [id^="mensagem-erro-"]', domGrupoSelecaoAtributos).html(data.Mensagem); //Seta mensagem
            $(domGrupoSelecaoAtributos).addClass("itemDisabled");
            $('[id="produto-legenda"]').removeClass('displayNone').addClass('displayBlock');

            if (data.erroIndex >= 0) {
                domGrupoSelecaoAtributos.find('#divOpcoes-' + data.erroIndex).find('[id^="' + labelErroPartialId + '"]').stop().html(data.msgErro).fadeTo('slow', 1.0).delay(7000).fadeOut('slow');
            }
            else {
                if (data.Mensagem != "") {
                    if ($(domGrupoSelecaoAtributos).parents('div[id^="divCompreJunto"]').length > 0) {
                        var indexSlide = domGrupoSelecaoAtributos.parents(".slick-slide").attr("data-slick-index");
                        $('.divCompreJuntoCarrossel').slick('slickGoTo', indexSlide, true);
                        $('[id^="' + labelErroPartialId + '"]', domGrupoSelecaoAtributos).stop().html(data.msgErro);
                    } else {
                        $('[id^="' + labelErroPartialId + '"]', domGrupoSelecaoAtributos).stop().html(data.msgErro).fadeTo("slow", 1).delay(7000).fadeOut("slow")
                    }
                }
                else {
                    $('[id^="divOpcoes-"]').each(function () {
                        $(this).find('[id^="' + labelErroPartialId + '"]').stop().html(data.msgErro).fadeTo('slow', 1.0).delay(7000).fadeOut('slow');
                    });
                }
            }
        }
    }
}

/**
* Abre uma modal pop up com os dados do produto a ser comprado.
* @method validarItens
*/

function trataModalProduto(event) {
    //var element = document.getElementById(event.context.id);
    var element = document.querySelector('[data-produtoId="' + event.context.dataset.produtoid + '"]');
    if (element.getAttribute("data-abrirmodal") == 'True') {
        if (/Mobi/.test(navigator.userAgent)) {
            window.location.href = '/produto/' + event.attr('data-produtoId');
        } else {
            abrirProdutoModal(event);
        }
    } else {
        if (novoCheckout)
            comprarProdutoSpotNovoCarrinho(event);
        else
            comprarProdutoSpot(event);
    }
}
function abrirProdutoModal(domProdutoItem) {
    var produtoId = domProdutoItem.attr('data-produtoId');
    var imageElement = domProdutoItem.parents('[id^=produto-spot-item-]').find('[id^=produto-spot-imagem]');
    if ($().fancybox) {

        $.fancybox.showActivity();
    }
    $.get('/ProdutoModal/' + produtoId,
        function (data) {
            if ($().fancybox) {
                //Monta a modal 
                $.fancybox(data, {
                    'showCloseButton': true,
                    'onComplete': function () {
                        try {
                            if (typeof loadFacebookShare == 'function') {
                                loadFacebookShare();
                                if (typeof FB !== 'undefined') {
                                    FB.XFBML.parse($('.shareFacebook')[0]);
                                }
                            }
                            if (typeof loadTwitter == 'function') {
                                loadTwitter();
                                if (typeof twttr !== 'undefined') {
                                    twttr.widgets.load();
                                }
                            }
                            if (typeof loadGooglePlus == 'function') {
                                loadGooglePlus();
                            }
                            if (typeof loadAddThis == 'function') {
                                loadAddThis();
                            }
                        } catch (e) {
                            console.log("houve um problema na funçao 'OnComplete' da função abrirProdutoModal()")
                        }

                    },
                    'onClosed': function () {
                        removeModalZoomContainer();
                    },
                    'onCleanup': function () {
                        removeModalZoomContainer();
                    }
                });
                //Setamos eventos da modal
                adicionaEventosImagensModal();

                if (changeEventsSelQuantidade) {
                    changeEventsSelQuantidade();
                }
                //Seta eventos comprar do produto
                $('[id^=produto-botao-comprar-]', '[id^=produto-modal-]').unbind('click');
                $('[id^=produto-botao-comprar-]', '[id^=produto-modal-]').bind('click', function (event) {
                    event.preventDefault();
                    comprarProdutoModal($(this).parents('[id^="produto-item-"]'), imageElement);
                });
            }
        }
    );

}

// método para evitar que a div de zoom seja indevidamente removida
function removeModalZoomContainer() {
    var containers = $(".zoomContainer");
    if (typeof containers !== 'undefined') {
        var containersCount = containers.length;
        if (containersCount > 1) {
            var $zoomContainer = $(".zoomContainer")[1];
            if (typeof $zoomContainer !== 'undefined') {
                $(".zoomContainer")[1].remove();
            }
        }
    }
}

/**
* Incluir determinado produto no carrinho.
* @method validarItens 
*/
function comprarProdutoModal(domProdutoItem, imageElement) {
    habilitarCompra(false);
    //Busca o elemento qual possui os dados para compra do produto.
    var domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]', domProdutoItem); //Busca elemento principal
    if (checkOpcoesSelecionadas(domGrupoSelecaoAtributos)) {
        var objetoParametroComprarProduto = buscaParametrosTela(domGrupoSelecaoAtributos);      //Busca parametros da tela

        if (objetoParametroComprarProduto != undefined)
            comprarProdutoModalRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos, imageElement); //Realiza a requisição para comprar o produto
    }
    habilitarCompra(true);
}

/**
* Função responsável por enviar a requisição de compra do produto para o server.
*/
function comprarProdutoModalRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos, imageElement) {
    var parametroCompraProduto = JSON.stringify(objetoParametroComprarProduto); //Transforma o objeto no tipo JSON.
    var urlCompraProduto = fbits.ecommerce.urlEcommerce + 'Produto/ComprarProduto';//Url para compra de produtos.

    if (Fbits.Evento.TemEventoAtivo && Fbits.Evento.Perfil == "Dono") {
        // caso aja evento ativo deverá ser encaminhado para "/Produto/Comprar" 
        urlCompraProduto = fbits.ecommerce.urlEcommerce + 'Produto/ComprarProduto';
    }
    else if (novoCheckout) {
        urlCompraProduto = fbits.ecommerce.urlCarrinho + 'Produto/ComprarProduto';
    }
    //Realiza a requisição ajax
    $.ajax({
        type: 'POST',
        url: urlCompraProduto,
        data: parametroCompraProduto,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        xhrFields: { withCredentials: novoCheckout },
        context: { domGrupoSelecaoAtributos: domGrupoSelecaoAtributos, imageElement: imageElement },
        success: function (data) {
            tratarResultadoCompraProdutoModal(data.resultadoCompra, this.domGrupoSelecaoAtributos, this.imageElement); //Trata sucesso e erros da requisição
        }
    });
}

/**
* Função responsável por tratar o resultado da compra de produto da modal.
* @param data Dados da resposta da requisição.
* @param domGrupoSelecaoAtributos elemento DOM o qual comtem os dados do determinado produto.
*/
function tratarResultadoCompraProdutoModal(data, domGrupoSelecaoAtributos, imageElement) {
    if (domGrupoSelecaoAtributos != undefined) { //Vefica a existencia do grupo de seleção de atributos
        var produtoItem = $(domGrupoSelecaoAtributos).parents('[id^=produto-item-]'); //Busca os dados do item

        if (data.StatusRequisicao == 0 && produtoItem != undefined) //Produto comprado com sucesso
        {
            if (Fbits.Evento.TemEventoAtivo && Fbits.Evento.Perfil == "Dono") {
                if ($().fancybox) {
                    $.fancybox('<div class="retornoVinculoEvento">' +
                        '<div class="evento-modal" >' +
                        '<div class="evento-modal_header">' +
                        '<div class="tray-r">' +
                        '<div class="tray-c-3">' +
                        '<img src="' + Fbits.Produto.FotoPrincipal + '" width="100" height="auto">' +
                        '</div>' +
                        ' <div class="tray-c-9">' +
                        '<h3 class="evento-modal_title">' + Fbits.Produto.Nome + '</h3>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '<div class="tray-r">' +
                        '<div class="mg-t-50 pd-t-30 mg-b-50">' +
                        '<p>' +
                        'Produto foi adicionado ao seu evento com sucesso! <br/> ' +
                        'Continue adicionando produtos ao seu evento.' +
                        '</p>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>'
                    );
                }
            } else {
                if ($().fancybox) {
                    $.fancybox.close();
                }
                atualizarResumoCarrinho();
                efeitoSpotComprar(imageElement, $('.carrinho:first'));
            }
        }
        else //Trata erros
        {
            //Seta as mensagens de erro.
            $('[id^="divOpcoes-"]').each(function () {
                hideErrors();
            });

            $('div[id="divOpcoes-' + index + '"] [id^="mensagem-erro-"]', domGrupoSelecaoAtributos).html(''); //Limpa mensagens de erro
            var index = data.indexOpcoes == undefined || data.indexOpcoes < 0 ? 0 : data.indexOpcoes; //Checa o index do produto a receber a mensagem
            $('div[id="divOpcoes-' + index + '"] [id^="mensagem-erro-"]', domGrupoSelecaoAtributos).html(data.Mensagem); //Seta mensagem
            $(produtoItem).addClass("itemDisabled");
            $('[id="produto-legenda"]').removeClass('displayNone').addClass('displayBlock');

            if (data.erroIndex >= 0) {
                showError(domGrupoSelecaoAtributos.find('#divOpcoes-' + data.erroIndex).find('[id^="' + labelErroPartialId + '"]'), data.msgErro)
            }
            else {
                $('[id^="divOpcoes-"]').each(function () {
                    showError($(this).find('[id^="' + labelErroPartialId + '"]'), data.msgErro);
                });
            }
        }
    }
}

/**
* Incluir determinado produto no carrinho.
* @method validarItens 
*/
function comprarProdutoSpot(spotComprarElement) {
    $(spotComprarElement).attr('disabled', 'disabled');
    var produtoId = spotComprarElement.attr('data-produtoId');
    var produtoVarianteId = spotComprarElement.attr('data-produtoVarianteId');
    var urlCompraProdutoVariante = (novoCheckout ? fbits.ecommerce.urlCarrinho : fbits.ecommerce.urlEcommerce) + '/Produto/ComprarProdutoVariante';             //Url para compra de produtos.
    var imageElement = spotComprarElement.parents('[id^=produto-spot-item-]').find('img');
    var quantidade = spotComprarElement.parents('[id^=produto-spot-item-]').find('[id^=produto-spot-quantidade]').val();

    if (quantidade === undefined) {
        quantidade = 1;
    }

    //Realiza a requisição ajax
    $.ajax({
        type: 'POST',
        url: urlCompraProdutoVariante,
        data: { produtoId: produtoId, produtoVarianteId: produtoVarianteId, quantidade: quantidade },
        context: { spotComprarElement: spotComprarElement },
        success: function (data) {
            if (data.resultadoCompra.StatusRequisicao == 0) {
                efeitoSpotComprar(imageElement, $('.carrinho:first'));
            } else {
                showError($(spotComprarElement).parents('[id^="produto-spot-item-"]').find('[id="mensagem-erro-spot"]'), data.resultadoCompra.Mensagem);
            }
        },
        complete: function () {
            $(spotComprarElement).removeAttr('disabled');
            if (atualizarResumoCarrinho) { atualizarResumoCarrinho(); }
        }
    });
}

/**
* Compra produto spot novo carrinho.
*/
function comprarProdutoSpotNovoCarrinho(spotComprarElement) {
    var produtoId = spotComprarElement.attr("data-produtoId");
    var produtoVarianteId = spotComprarElement.attr("data-produtoVarianteId");
    var imageElement = spotComprarElement.parents('[id^=produto-spot-item-]').find('img');
    var parametroCompraProduto = '{"ProdutoId":"{0}","StrOpcional":"Selecione","IsAssinatura":false,"DadosProduto":[{"ProdutoComboId":"0","ProdutoVarianteId":"{1}","ComboId":0,"ProdutoId":0,"Atributos":[],"Quantidade":"{2}","ListaPersonalizacoes":[]}],"attrNaoSelecionado":false,"ListaServicos":[],"VerificarServico":false}';
    var quantidade = spotComprarElement.parents("[id^=produto-spot-item-]").find("[id^=produto-spot-quantidade]").val();
    if (quantidade === undefined) {
        quantidade = 1
    }
    parametroCompraProduto = parametroCompraProduto.replace('{0}', produtoId);
    parametroCompraProduto = parametroCompraProduto.replace('{1}', produtoVarianteId);
    parametroCompraProduto = parametroCompraProduto.replace('{2}', quantidade);

    $.ajax({
        type: "POST",
        url: fbits.ecommerce.urlCarrinho + "Produto/ComprarProduto",
        data: parametroCompraProduto,
        async: false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        xhrFields: {
            withCredentials: novoCheckout
        },
        success: function (data) {
            if (data.resultadoCompra.StatusRequisicao == 0) {
                efeitoSpotComprar(imageElement, $('.carrinho:first'));
            } else {
                showError($(spotComprarElement).parents('[id^="produto-spot-item-"]').find('[id="mensagem-erro-spot"]'), data.resultadoCompra.Mensagem);
            }
            //window.location.href = fbits.ecommerce.urlCarrinho;
        },
        complete: function () {
            $(spotComprarElement).removeAttr('disabled');
            if (atualizarResumoCarrinho) { atualizarResumoCarrinho(); }
        },
        fail: function (data) {
            showError($(spotComprarElement).parents('[id^="produto-spot-item-"]').find('[id="mensagem-erro-spot"]'), 'Não foi possivel inserir o produto no carrinho.');
        }
    });
}


/**
* Cria o efeito de que o produto spot esta indo para o carrinho.
*/
function efeitoSpotComprar(elementoOrigem, elementoDestino) {
    // Clona a foto e posiciona acima da foto original do spot
    var clone = $(elementoOrigem).clone();
    $('html').append(clone);
    clone.css({
        'position': 'absolute', 'width': elementoOrigem.width(),
        'height': elementoOrigem.height(), 'left': elementoOrigem.offset().left,
        'top': elementoOrigem.offset().top, 'z-index': 999999
    });

    // Envia elemento ao seu destino
    $(clone).animate({
        width: '1px',
        height: '1px',
        opacity: 0.3,
        top: elementoDestino.offset().top,
        left: elementoDestino.offset().left
    }, 1000, function () {
        clone.remove();
    });
}

/**
* Adiciona os eventos das imagens do produto.
*/
function adicionaEventosImagens() {
    //Seleção de imagens 
    $('#imagem-pagina-produto .zoom-thumbnail').on('click', function (event) {
        $("#videoPrincipal").hide();
        $("#videoPrincipal iframe").remove();
        $("#zoomImagemProduto").show();
        $(".zoomWrapper").show();
        $(".zoomContainer").show();
    });

    //------------------------- Tratamento do zoom -----------------------------------//

    if (typeof tipoZoom != 'undefined') { // bug #16862

        if (tipoZoom == 1) {

            $("#zoomImagemProduto").elevateZoom({
                gallery: 'galeria',
                galleryActiveClass: "active",
                zoomType: "inner",
                cursor: "crosshair",
                zoomWindowWidth: 422,
                zoomWindowHeight: 422
            });

        } else if (tipoZoom == 3) {

            $('#zoomImagemProduto').elevateZoom({
                gallery: 'galeria',
                galleryActiveClass: "active",
                zoomType: "lens",
                lensShape: "round",
                containLensZoom: true,
                lensSize: 200
            });

            $("body").append("<style> .zoomContainer .zoomWindowContainer div { border: none !important; } </style>");

        } else { //Padrão é 2

            $("#zoomImagemProduto").elevateZoom({
                gallery: 'galeria',
                galleryActiveClass: "active",
                cursor: 'crosshair',
                imageCrossfade: true,
                zoomWindowWidth: 422,
                zoomWindowHeight: 422
            });

        }
    }

    //pass the images to Fancybox 
    $("#zoomImagemProduto").bind("click", function (e) {
        var ez = $('#zoomImagemProduto').data('elevateZoom');
        var lst = ez.getGalleryList();
        var nlst = [];
        for (var i in lst) {
            if (lst[i].href && lst[i].href != "") {
                nlst.push(lst[i]);
            }
        }
        $.fancybox(nlst);
        return false;
    });

    //------------------------- Tratamento do zoom -----------------------------------//

}


/**
* Adiciona os eventos das imagens do produto. (para a modal de quick view)
*/
function adicionaEventosImagensModal() {

    //Seleção de imagens 
    $('[id^="produto-modal"] .zoom-thumbnail').on('click', function (event) {
        $('[id^="produto-modal"] #videoPrincipal').hide();
        $('[id^="produto-modal"] #videoPrincipal iframe').remove();
        $('[id^="produto-modal"] #zoomImagemProduto').show();
        $('[id^="produto-modal"] .zoomWrapper').show();
        $('[id^="produto-modal"] .zoomContainer').show();
    });

    //------------------------- Tratamento do zoom -----------------------------------//

    if (typeof tipoZoom != 'undefined') { // bug #16862
        if (tipoZoom == 1) {

            $('[id^="produto-modal"] #zoomImagemProduto').elevateZoom({
                gallery: 'galeria',
                galleryActiveClass: "active",
                zoomType: "inner",
                cursor: "crosshair",
                zoomWindowWidth: 422,
                zoomWindowHeight: 422
            });

        } else if (tipoZoom == 3) {

            $('[id^="produto-modal"] #zoomImagemProduto').elevateZoom({
                gallery: 'galeria',
                galleryActiveClass: "active",
                zoomType: "lens",
                lensShape: "round",
                containLensZoom: true,
                lensSize: 200
            });

            $("body").append("<style> .zoomContainer .zoomWindowContainer div { border: none !important; } </style>");

        } else { //Padrão é 2

            $('[id^="produto-modal"] #zoomImagemProduto').elevateZoom({
                gallery: 'galeria',
                galleryActiveClass: "active",
                cursor: 'crosshair',
                imageCrossfade: true,
                zoomWindowWidth: 422,
                zoomWindowHeight: 422
            });

        }
    }

    //pass the images to Fancybox 
    $('[id^="produto-modal"] #zoomImagemProduto').bind("click", function (e) {
        var ez = $('[id^="produto-modal"] #zoomImagemProduto').data('elevateZoom');
        $.fancybox(ez.getGalleryList());
        return false;
    });

    //------------------------- Tratamento do zoom -----------------------------------//
}


/**
* Função responsável pela compra do produto com um determinado serviço.
*/
function comprarComServico(domServicoItem, redirecionar, clickElement) {
    habilitarCompra(false); //Desabilida botões de compra

    //Variaveis iniciais
    var errorElement = $(domServicoItem).find('[id^="servico-mensagem-erro-"]');
    var objetoParametroComprarServico = buscarServicosTela(clickElement);

    //Validações
    if (objetoParametroComprarServico.ListaServicos.lenght <= 0) {
        showError(errorElement, 'Por favor selecione um serviço!'); return;
    }

    if (!objetoParametroComprarServico.ListaServicos[0].RegulamentoAceito) {
        showError(errorElement, 'Você precisa aceitar o regulamento.'); return;
    }

    if (!objetoParametroComprarServico.ListaServicos[0].ServicoId) {
        showError(errorElement, 'Não foi possivel adicionar este serviço. Favor contactar o SAC.'); return;
    }

    if (!objetoParametroComprarServico.ListaServicos[0].ProdutoVarianteServicoId || objetoParametroComprarServico.ListaServicos[0].ProdutoVarianteServicoId == 0) {
        showError(errorElement, 'Por favor selecione um serviço!'); return;
    }

    //Busca o item, caso servico esteja fora do item
    var domProdutoItem = $(domServicoItem).parents('[id^="produto-item-"]');

    if (domProdutoItem == undefined) {
        domProdutoItem = $('[id^="produto-item-"]').first();
        console.log('Não encontrou o produto-item pai. Então pegou o primeiro.');
    }

    redirecionar = redirecionar == undefined ? false : redirecionar;

    //Busca o elemento qual possui os dados para compra do produto.
    var domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]', domProdutoItem); //Busca elemento principal
    if (checkOpcoesSelecionadas(domGrupoSelecaoAtributos)) {
        var objetoParametroComprarProduto = buscaParametrosTela(domGrupoSelecaoAtributos);      //Busca parametros da tela
        objetoParametroComprarProduto.ListaServicos = objetoParametroComprarServico.ListaServicos;
        objetoParametroComprarProduto.VerificarServico = objetoParametroComprarServico.VerificarServico;

        if (objetoParametroComprarProduto != undefined)
            comprarProdutoRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos, redirecionar); //Realiza a requisição para comprar o produto
    }

    habilitarCompra(true); //Habilita botões de compra
}


/**
* Função responsável pela compra do produto com assinatura.
*/
function comprarComAssinatura(domProdutoItem, redirecionar, clickElement) {
    habilitarCompra(false); //Desabilida botões de compra

    //Variaveis iniciais
    var errorElement = $(domProdutoItem).find('[id^="assinatura-mensagem-erro-"]');

    if (domProdutoItem == undefined) {
        domProdutoItem = $('[id^="produto-item-"]').first();
        console.log('Não encontrou o produto-item pai. Então pegou o primeiro.');
    }

    redirecionar = redirecionar == undefined ? false : redirecionar;

    //Busca o elemento qual possui os dados para compra do produto.
    var domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]', domProdutoItem); //Busca elemento principal
    if (checkOpcoesSelecionadas(domGrupoSelecaoAtributos)) {
        var objetoParametroComprarProduto = buscaParametrosTela(domGrupoSelecaoAtributos);     //Busca parametros da tela
        objetoParametroComprarProduto.GrupoAssinaturaPeriodoRecorrenciaId = $(domGrupoSelecaoAtributos).parents('[id^=produto-item-]').find('[name=GrupoAssinaturaPeriodoRecorrenciaId]').val();

        if (objetoParametroComprarProduto != undefined)
            comprarProdutoAssinaturaRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos, redirecionar); //Realiza a requisição para comprar o produto
    }

    habilitarCompra(true); //Habilita botões de compra
}

/**
* Atualiza os campos de seleção de serviço, podem ser select, radios ou divs.
*/
function atualizarServico(elementOpcoes) {
    //INICIALIZAÇÃO DAS VARIAVEIS
    var domOpcoes = $(elementOpcoes);

    // domopcoes é o objeto select.
    if (domOpcoes.is('select'))
        domOpcoes = domOpcoes.children("option:selected")  // atribui o "option" selecionado para o domOpcoes.

    domOpcoes.parents('[id^=produto-servico-item-]').find('[data-servicoselecionado]').attr('data-servicoselecionado', 'False'); //Marca todos como não selecionados.
    domOpcoes.parents('[id^=tb-servico-item-]').find("[data-servicoselecionado]").attr('data-servicoselecionado', 'True'); //Marca o item como selecionado
}

/**
* Busca os dados dos servicos 
*/
function buscarServicosTela(clickElement) {
    var verificarServico = $(clickElement).attr('data-comprarComServico') == 'True';

    var listaServicos = [];

    //Busca todos os serviços disponiveis selecionados.
    var item = $(clickElement).parents('[id^="produto-item-"]').find("[id^='radio-servico-']:checked").parents('[id^="tb-servico-item-"]');
    var servicoId = $(item).find('[data-codigoServico]').first().attr('data-codigoServico');
    var tempoServico = $(item).find('[data-tempoServico]').first().attr('data-tempoServico');
    var produtoVarianteServicoId = $(item).find('[data-servicoSelecionado="True"]').first().attr('data-codigoprodutovarianteservico');
    var regulamentoAceito = $("input[id^=produto-servico-termocondicoes-]:checked", item)[0];

    if (servicoId > 0) {
        //Adiciona item a lista
        listaServicos.push({ ServicoId: servicoId, ProdutoVarianteServicoId: produtoVarianteServicoId, Tempo: tempoServico, RegulamentoAceito: regulamentoAceito != undefined });
    }

    return { VerificarServico: verificarServico, ListaServicos: listaServicos };
}

// Seta a visualização selecionada pelo usuario
function selecionaTipoVisualizacao(dados) {
    $("#tipoVisualizacao li").each(function () {
        $(".mainBar").removeClass($(this).attr("data-visualizacao"));
    });
    var tipo = $(dados.currentTarget).attr("data-visualizacao");
    if (tipo != "") {
        $(".mainBar").addClass(tipo);
    }
    Fbits.Framework.Cookie.setCookie("tipoVisualizacao", tipo, 30);
}

/**
* Busca os dados das personalizacoes 
*/
function buscarPersonalizacoes(domGrupoSelecaoAtributos) {
    var listaPersonalizacoes = [];
    var personalizacaoNaoSelecionada = false;

    $('input[id^="txt-personalizacao-"]', domGrupoSelecaoAtributos).each(function () {
        var id = $(this).attr('data-personalizacao-id');
        var nome = $(this).attr('data-personalizacao-nome');
        var ordem = $(this).attr('data-personalizacao-ordem');
        var valor = $(this).attr('data-personalizacao-valor');
        var personalizacao = $(this).val();

        if ($("#grupo-produto-personalizacao-").attr('data-personalizacao-obrigatorio') == "True" && personalizacao == "") {
            personalizacaoNaoSelecionada = true;
        }

        if (personalizacao != "") {
            //Adiciona item a lista
            listaPersonalizacoes.push({ Nome: nome, Ordem: ordem, GrupoPersonalizacaoDetalheId: id, Valor: valor, Personalizacao: personalizacao });
        }
    });

    $('select[id^="ddl-personalizacao-"]', domGrupoSelecaoAtributos).each(function () {
        var id = $(this).attr('data-personalizacao-id');
        var nome = $(this).attr('data-personalizacao-nome');
        var ordem = $(this).attr('data-personalizacao-ordem');
        var valor = $(this).attr('data-personalizacao-valor');
        var personalizacao = $(this).val();

        if ($("#grupo-produto-personalizacao-").attr('data-personalizacao-obrigatorio') == "True" && personalizacao == "") {
            personalizacaoNaoSelecionada = true;
        }

        if (personalizacao != "") {
            //Adiciona item a lista
            listaPersonalizacoes.push({ Nome: nome, Ordem: ordem, GrupoPersonalizacaoDetalheId: id, Valor: valor, Personalizacao: personalizacao });
        }
    });

    if (personalizacaoNaoSelecionada) {
        listaPersonalizacoes = null;
    }

    return listaPersonalizacoes;
}


function UpdateQueryString(key, value, url) {
    if (!url) url = window.location.href;
    var re = new RegExp("([?&])" + key + "=.*?(&|#|$)(.*)", "gi"),
        hash;

    if (re.test(url)) {
        if (typeof value !== 'undefined' && value !== null)
            return url.replace(re, '$1' + key + "=" + value + '$2$3');
        else {
            hash = url.split('#');
            url = hash[0].replace(re, '$1$3').replace(/(&|\?)$/, '');
            if (typeof hash[1] !== 'undefined' && hash[1] !== null)
                url += '#' + hash[1];
            return url;
        }
    }
    else {
        if (typeof value !== 'undefined' && value !== null) {
            var separator = url.indexOf('?') !== -1 ? '&' : '?';
            hash = url.split('#');
            url = hash[0] + separator + key + '=' + value;
            if (typeof hash[1] !== 'undefined' && hash[1] !== null)
                url += '#' + hash[1];
            return url;
        }
        else
            return url;
    }
}

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function ajustaTamanhoDivCores() {
    for (var i = 0; i < $('[class*="valorAtributo valorAtributoCor"]').length; i++) {
        var url = $('[class*="valorAtributo valorAtributoCor"]')[i].style.background.split("=")
        var newUrl = url[0] + "=" + url[1] + "=" + $('[class*="valorAtributo valorAtributoCor"]')[0].scrollWidth + url[2].substring(url[2].indexOf("&")) + "=" + $('[class*="valorAtributoCor"]')[0].scrollHeight + "\")";
        $('[class*="valorAtributo valorAtributoCor"]')[i].style.background = newUrl;
    }
}

; 
/// <reference path="fbits.produto.atributos.js" />
/// <reference path="fbits.produto.newFunctions.js" />

//Variaveis globais
var PID_LINK_ADD_LISTA_DE_DESEJOS = 'link-lista-de-desejos-produto-';
var PID_LINK_ADD_LISTA_DE_DESEJOS_PV = 'link-lista-de-desejos-pv-';
var PID_PRODUTO_DADOS_VARIANTE = 'produto-dados-variante-';
var PID_PRODUTO_PRECO = 'produto-preco-';
var PID_PRODUTO_COMPRAR = 'produto-comprar-';

var Fbits = Fbits || {};
Fbits.ListaDeDesejo = Fbits.ListaDeDesejo || {};
Fbits.ListaDeDesejo.ProdutoVariante = Fbits.ListaDeDesejo.ProdutoVariante || {};
Fbits.ListaDeDesejo.ProdutoVariante = [];

/**
* Inicializa as funções assim que o html estiver renderizado.
*/
$(function () {
    initListaDesejos();
});

/**
* Adiciona um determinado produto a lista de desejos.
* @method addLista
* @param codigo: Código do produto ("ProdutoId")
*/
function addProdutoLista(codigo) {
    var urlAdicionarDoSpot = fbits.ecommerce.urlEcommerce + "ListaDeDesejos/AdicionarProduto";
    var produtoId = 0;
    if (!isNaN(codigo) && codigo > 0) {
        produtoId = Number(codigo); //Convert o parâmetro para número

        $.ajax({
            type: 'POST',
            url: urlAdicionarDoSpot,
            data: { produtoId: produtoId, produtoComboId: 0, comboId: 0 },
            context: { codigo: codigo },
            success: function (data) {
                if (data) {
                    $('a[id="' + PID_LINK_ADD_LISTA_DE_DESEJOS + this.codigo + '"]').unbind(); //Retira o eventos do link
                    var elementListaDesejos = $('a[id="' + PID_LINK_ADD_LISTA_DE_DESEJOS + this.codigo + '"]');
                    elementListaDesejos = elementListaDesejos != undefined ? elementListaDesejos : $('a[id="' + PID_LINK_ADD_LISTA_DE_DESEJOS_PV + this.codigo + '"]');
                    if (elementListaDesejos != undefined && elementListaDesejos.length > 0) {
                        if (elementListaDesejos.attr("data-Texto-AdicionadoAListaDesejos") != undefined && elementListaDesejos.attr('data-Texto-AdicionadoAListaDesejos').length > 0) {
                            elementListaDesejos.html(
                                elementListaDesejos.attr('data-Texto-AdicionadoAListaDesejos')
                                ); //Altera texto do link
                        } else {
                            elementListaDesejos.html("Adicionado à lista de desejos");
                        }
                    }
                }
            }
        });
    }
}


/**
* Adiciona um determinado produto a lista de desejos.
* @method addProdutoVarianteLista
* @param codigo: Combinação do codigo do produto combo ("ProdutoComboId") + '-' + Código do produto ("ProdutoId")
*/
function addProdutoVarianteLista(codigo) {
    habilitarCompra(false); //Desabilida botões de compra

    var produtoItemDOM = null;

    //IF feito para buscar o elemento que contém o produto
    if ($('[id="produto-item-' + codigo + '"]').length > 0){
        produtoItemDOM = $('[id="produto-item-' + codigo + '"]');
    } else {
        produtoItemDOM = $('[id="produto-item-' + codigo.replace("0-0-", "0-") + '"]');
    }

    //Busca o elemento qual possui os dados para compra do produto.
    var domGrupoSelecaoAtributos = $('div[id^="dvGrupoSelecaoAtributos-"]', produtoItemDOM); //Busca elemento principal
    var objetoParametroComprarProduto = buscaParametrosTela(domGrupoSelecaoAtributos);    //Busca parametros da tela

    if (objetoParametroComprarProduto != undefined && !objetoParametroComprarProduto.attrNaoSelecionado) {
        addProdutoVarianteListaRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos); //Realiza a requisição para comprar o produto
    }

    habilitarCompra(true);              //Habilita botões de compra
}

function addProdutoVarianteListaRequest(objetoParametroComprarProduto, domGrupoSelecaoAtributos) {

    var parametroCompraProduto = JSON.stringify(objetoParametroComprarProduto);       //Transforma o objeto no tipo JSON.
    var urlCompraProduto = '/ListaDeDesejos/AdicionarProdutoVariante'; //Url para compra de produtos.

    //Realiza a requisição ajax
    $.ajax({
        type: 'POST',
        url: urlCompraProduto,
        data: parametroCompraProduto,
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        context: domGrupoSelecaoAtributos,
        success: function (data) {
            tratarResultadoaddProdutoVarianteLista(data); //Trata sucesso e erros da requisição
        }
    });
}

/**
* Função responsável por tratar o resultado da inserção de um produto na lista de desejos.
* @param data Dados da resposta da requisição.
*/
function tratarResultadoaddProdutoVarianteLista(data) {
    if (data.StatusRequisicao == 0) //Trata sucesso
    {
        var codigo = data.IdentificadorDOM; //Identifica parte do id do elemento HTML 'a' a ser alterado
        var elementListaDesejos = $('a[id="' + PID_LINK_ADD_LISTA_DE_DESEJOS_PV + codigo + '"]');

        if (elementListaDesejos != undefined && elementListaDesejos.length > 0) {
            $(elementListaDesejos).addClass("listaDesejosAdicionado");
            if (elementListaDesejos.attr('data-Texto-AdicionadoAListaDesejos') != undefined && elementListaDesejos.attr('data-Texto-AdicionadoAListaDesejos').length > 0) {
                elementListaDesejos.html(
                    elementListaDesejos.attr('data-Texto-AdicionadoAListaDesejos')
                    ); //Altera texto do link
            } else {
                elementListaDesejos.html("Adicionado à lista de desejos");
            }
        }
    }
}

/**
*TODO: Não utilizado no momento
* Atualiza a quantidade de cada produto no carrinho.
* A classe 'waiting' é adicionada à linha (TR) antes do retorno da requisição.
* A requisição retorna os valores dos totais do pedido (JSON).
*
* @method atualizarItem
*/
function atualizarItem() {
    //Variáveis
    var erros = false;
    var itens = new Array();
    var cep = $('input[id="txtCalculaFrete"]').val();

    // Para cada linha (TR), busca o código do produto, a quantidade e adiciona no array items.
    $('[id^="produto-item-"]').each(function () {
        //Variavéis locais
        var produtoComboId = 0;
        var sequencial = 0;
        var prePedidoProdutoId = 0;
        var quantidade = 0;
        var completeId = $(this).attr('id').replace('produto-item-', '');
        var parametros = completeId.split('-');

        produtoComboId = parametros[0];
        sequencial = parametros[1];
        prePedidoProdutoId = parametros[2];

        quantidade = $('input[id="txtQuantidade-' + completeId + '"]').val();

        if (quantidade <= 0 || quantidade == undefined) {
            quantidade = 1;
        }

        //Insere no array com join dos dados do item do carrinho
        itens.push(new Array(produtoComboId, sequencial, prePedidoProdutoId, quantidade).join('|'));
    });

    //Cria um join para os itens.
    var result = itens.join('#');

    if (erros)
        return;

    //Requisição ajax para atualização das quantidades dos produtos.
    $.ajax({
        type: 'POST',
        url: fbits.ecommerce.urlCarrinho + "Carrinho/Atualizar",
        dataType: "json",
        data: { itens: result, cep: cep },
        success: function (data) {
            $.each(data, function () {
                $.each(this, function (id, valor) {
                    montaItens(id, valor);
                });
            });
        }
    });
    return erros;
}

/**
* Monta os itens na lista de desejos.
* @method asyncCallProdutosListaDesejos
*/
function asyncCallProdutosListaDesejos(listaProdutos) {
    //Validação de parametros.
    if (listaProdutos == undefined || listaProdutos.length <= 0)
        return;

    //Variaveis
    var quantidade = 1;
    var listaDesejosId = 0;
    var listaDesejosProdutoId = 0;
    var prePedidoProdutoBrindeId = 0;
    var produtoId = 0;
    var produtoComboId = 0;
    var sequencial = 0;
    var itemId = '';
    var joinChar = '-'

    //For na lista de produtos
    for (var i = 0; i < listaProdutos.length; i++) {
        quantidade = listaProdutos[i].Quantidade;
        listaDesejosId = listaProdutos[i].ListaDesejosId;
        listaDesejosProdutoId = listaProdutos[i].ListaDesejosProdutoId;
        produtoId = listaProdutos[i].ProdutoId;
        produtoComboId = listaProdutos[i].ProdutoComboId != undefined ? listaProdutos[i].ProdutoComboId : 0; //Identifica um produto combo
        sequencial = listaProdutos[i].Sequencial != undefined ? listaProdutos[i].Sequencial : 0; //Identifica a sequencia de um item na lista
        itemId = listaDesejosProdutoId; //Resulta parte do identificador de um item Ex.: 13-1-1234

        $.ajax({
            type: 'POST',
            url: 'ListaDeDesejos/SelectProduto',
            data: { id: produtoId, listaDesejosId: listaDesejosId, listaDesejosProdutoId: listaDesejosProdutoId },
            context: { itemId: itemId, produtoId: produtoId, quantidade: quantidade } /*use o this.produtoId*/,
            success: function (data) {

                var produtoVariantes = JSON.parse(data.produtosVariante);

                $.each(produtoVariantes, function (index, value) {
                    Fbits.ListaDeDesejo.ProdutoVariante.push(value);
                });

                $('tbody[id="tbdListaDeDesejos"]').find('tr[id="produto-item-' + this.itemId + '"]').find('[id^="' + PID_PRODUTO_DADOS_VARIANTE + '"]').html(data.viewDadosProduto);

                if (data.disponivel) {
                    $('tbody[id="tbdListaDeDesejos"]').find('tr[id="produto-item-' + this.itemId + '"]').find('[id^="' + PID_PRODUTO_PRECO + '"]').css("colspan", 1);
                    $('tbody[id="tbdListaDeDesejos"]').find('tr[id="produto-item-' + this.itemId + '"]').find('[id^="' + PID_PRODUTO_PRECO + '"]').html(data.viewFormaPagamento);
                    $('tbody[id="tbdListaDeDesejos"]').find('tr[id="produto-item-' + this.itemId + '"]').find('[id^="' + PID_PRODUTO_COMPRAR + '"]').show();
                }
                else {
                    $('tbody[id="tbdListaDeDesejos"]').find('tr[id="produto-item-' + this.itemId + '"]').find('[id^="' + PID_PRODUTO_COMPRAR + '"]').hide();
                    $('tbody[id="tbdListaDeDesejos"]').find('tr[id="produto-item-' + this.itemId + '"]').find('[id^="' + PID_PRODUTO_PRECO + '"]').replaceWith(data.viewFormaPagamento);
                }

                //Inicializa os eventos dos atributos
                if (initProdutoAtributos != undefined) {
                    initProdutoAtributos();
                }

                var dados = $(data.viewDadosProduto);
                //Inicializa  a select box com o valor do banco
                if (this.quantidade != undefined && this.quantidade > 0) {
                    if (dados.find('select#selQuantidade > option[value=' + this.quantidade + ']').length > 0)
                        dados.find('select#selQuantidade > option[value=' + this.quantidade + ']').attr('selected', true);
                    else
                        dados.find('select#selQuantidade > option').last().attr('selected', true);
                }
            }
        });
    }
}

/**
* Cria os eventos nos elementos da página, 
* como btnRemover, finalizar, etc..
*
* @method createEventsListaDeDesejos
*/
function createEventsListaDeDesejos() {
    //Insere o evento no clique do botão comprar.
    $('table').delegate('input[id^="comprar-"]',
                        'click',
                        function () {
                            comprarProduto($(this).parents('[id^="produto-item-"]'), true, $(this), 'botaoComprar');
                        });

    $('table').delegate('input[id^=carrinho-comprar]',
                        'click',
                        function () {
                            comprarProduto($(this).parents('[id^="produto-item-"]'), false);
                        });



    //Insere o evento no botão remover.
    $('table').delegate('input[id^="produto-remover-"]',
                               'click',
                               function () {
                                   var codigo = ($(this).attr("id").toString().replace("produto-remover-", ""));
                                   var listaDesejosId = $(this).parents("tr").children('td[id="produto-identificadores"]').find('input[id="hdnListaDesejosId"]').val();
                                   var listaDesejosProdutoId = $(this).parents("tr").children('td[id="produto-identificadores"]').find('input[id="hdnListaDesejosProdutoId"]').val();
                                   removeListaAttr(codigo, listaDesejosId, listaDesejosProdutoId);
                               });

    //Trigger para os eventos de comprar todos
    $('button[id=todos-comprar]').click(function () {
        var listaProdutoItens = $('[id^="produto-item-"]', 'table[id="tbItensListaDesejo"]');
        comprarProdutoTodos(listaProdutoItens);
    });
}

/**
* Inicializa os dados da lista de desejos.
* @method initListaDesejos
*/
function initListaDesejos() {
    //Remove os eventos do link caso existam
    $('body').undelegate('a[id^="' + PID_LINK_ADD_LISTA_DE_DESEJOS + '"]', 'click');
    $('body').undelegate('a[id^="' + PID_LINK_ADD_LISTA_DE_DESEJOS + '"]', 'click');

    //Insere o evento no link de spot
    $('body').delegate('a[id^="' + PID_LINK_ADD_LISTA_DE_DESEJOS + '"]',
                      'click',
                      function () {
                          $(this).addClass("listaDesejosAdicionado");
                          var codigo = ($(this).attr("id").toString().replace(PID_LINK_ADD_LISTA_DE_DESEJOS, ""));
                          addProdutoLista(codigo);
                          return false;
                      });

    //Insere o evento no link de spot
    $('body').delegate('a[id^="' + PID_LINK_ADD_LISTA_DE_DESEJOS_PV + '"]',
                      'click',
                      function () {
                          var codigo = ($(this).attr("id").toString().replace(PID_LINK_ADD_LISTA_DE_DESEJOS_PV, ""));
                          addProdutoVarianteLista(codigo);
                          return false;
                      });
}

/**
* Monta os itens do carrinho
*/
function montaItens(id, valor) {
    if (id == 'isFreteGratis') {
        showCampoFrete(valor);
    }
    else if (id != 'carrinhoItens') {
        if (id == 'produtosBrinde') {
            //For nos itens do carrinho para remontar a view
            asyncCallProdutosBrinde(valor);
        }
        else if (id == 'statusCupomDesconto') {
            showRemoveCupomDesconto(valor);
        }
        else {
            $('#' + id).html(valor);
            if (id == 'erros' && valor != '') {
                $('div[id="erros"]').show();
            } else if (id == 'errosCupomDesconto') {
                $('div[id="errosCupomDesconto"]').show();
            }
        }
    }
    else {
        removeItens();
        if (valor.length <= 0) {
            window.location.reload();
        } else {
            //For nos itens do carrinho para remontar a view
            for (var i = 0; i < valor.length; i++) {
                $('table[id="tbItensCarrinho"]').children("tbody").append(valor[i]);
            }
            createEvents();
        }
    }
}

/**
* Remove um item da lista de desejosatravés de uma requisição ajax (POST).
* A requisição retorna os valores dos totais do pedido (JSON).
* A classe 'waiting' é adicionada à linha (TR) antes do retorno da requisição.
* A linha (TR) é removida do html.
*
* @method removerItem
*/
function removerItem() {
    //Variáveis
    var prePedidoProdutoId = 0;
    var completeId = $(this).attr('id').replace('produto-remover-', '');
    var parametros = completeId.split('-');

    //Inicialização das variáveis
    prePedidoProdutoId = parametros[2];

    //Verifica o prepedidoProdutoId
    if (prePedidoProdutoId > 0 && prePedidoProdutoId != undefined) {
        $.ajax({
            type: 'POST',
            url: fbits.ecommerce.urlCarrinho + "Carrinho/Remover",
            data: { "prePedidoProdutoId": prePedidoProdutoId },
            success: function (data) {
                $('[id=produto-item-' + completeId + ']').remove();
                $.each(data, function () {
                    $.each(this, function (id, valor) {
                        montaItens(id, valor);
                    }); //Fim each 2
                }); //Fim each 1
            }
        });
    }
}

/**
* Remove um item da lista de desejosatravés de uma requisição ajax (POST).
* A requisição retorna os valores dos totais do pedido (JSON).
* A linha (TR) é removida do html.
*
* @method removerItem
*/
function removeListaAttr(codigo, listaDesejosId, listaDesejosProdutoId) {
    var urlRemoverItem =  "ListaDeDesejos/Remover";
    var urlListaDesejos = "ListaDeDesejos";
    $.ajax({
        type: 'POST',
        url: urlRemoverItem,
        data: { listaDesejosId: listaDesejosId, listaDesejosProdutoId: listaDesejosProdutoId },
        async: false,
        context: { codigo: codigo },
        success: function (data) {
            if (data) { //Removido com sucesso
                $('[id="produto-item-' + this.codigo + '"]').remove();
                if (buscaQuantidadeItensLista() <= 0) //Reload na página
                    location.href = urlListaDesejos;
            }
        }
    });
}
; 

var Fbits = Fbits || { __namespace: true };
Fbits.Produto = Fbits.Produto || { __namespace: true };
Fbits.Produto.AviseMe = Fbits.Produto.AviseMe || {
    urlAviseMe: fbits.ecommerce.urlEcommerce + 'Produto/AviseMe'
};

/**
* Para identificar as classes no visual studio
*/
Fbits.Produto.AviseMe.__class = true

if ($().fancybox) {
    //Cria a modalpopup de AviseMe no spot
    $('a[id*="lnkAviseMe"]').fancybox({
        autoDimensions: false,
        centerOnScroll: true,
        showNavArrows: false,
        enableKeyboardNav: false,
        scrolling: false,
        padding: 0,
        margin: 0,
        width: 700,
        height: 200,
        onComplete: function () {
            $('div[id^="divAviseSpotPopUp"]').show();
        },
        onClosed: function () {
            $('*#error').remove();
            $('div[id^="divAviseSpotPopUp"]').hide();
        }
    });
}

//Aceita a tecla enter como OK 
$('input[id*="txtAvisaEmail"]').keyup(function (event) {
    if (event.keyCode == 13) {
        event.target.form.submit;
    }
});

$.validator.addMethod("notEqual", function (value, element, param) {
    return this.optional(element) || value != param;
});

function verificaEmail(email) {
    return (/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test(email));
};

function verificaAcentos(email) {
    var regex = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return regex.test(email);
};

/**
*  Envia dados para cadastro de avise-me.
*/
function EnviarAviseMe(element, produto, email) {
    email = email.replace(/ /g, '');
    if (Validar(element, produto, email)) {
        $.ajax({
            type: 'POST',
            url: Fbits.Produto.AviseMe.urlAviseMe,
            data: { "produtoVarianteId": produto, "nome": null, "email": email },
            success: function (dados) {
                if (dados.valido) {
                    //Esconde o popup
                    if (Fbits.Componentes && Fbits.Componentes.AviseMe && Fbits.Componentes.AviseMe.esconderPopUp)
                        Fbits.Componentes.AviseMe.esconderPopUp();
                    alert("Sua solicitação foi enviada com sucesso! Assim que este produto estiver disponível, você será avisado imediatamente por e-mail.");
                    //Retorna o txt default do campo após envio
                    $(element).val('Insira seu E-mail');
                }
                else {
                    alert(dados.msgErro);
                    $(element).focus();
                }
            }
        });
    }
};

//function bloquearChar(e) {
//    var charactere = e.which || e.keyCode;

//        if (charactere == 32) {
//            return false;
//        }
//        return true;

//};

function Validar(element, produto, email) {
    var retorno = true;

    if (email == '') {
        $('*#error').remove();
        $(element).after('<p htmlfor="txtAvisaEmail" id="error" generated="true" class="error" style="">O campo E-mail é obrigatório.</p>');
        retorno = false;
    } else if (email == 'Insira seu E-mail') {
        $('*#error').remove();
        $(element).after('<p htmlfor="txtAvisaEmail" id="error" generated="true" class="error" style="">O campo E-mail é obrigatório.</p>');
        retorno = false;
    } else if (!verificaEmail(email) || !verificaAcentos(email)) {
        $('*#error').remove();
        $(element).after('<p htmlfor="txtAvisaEmail" id="error" generated="true" class="error" style="">O campo E-mail deve conter um e-mail válido.</p>');
        retorno = false;
    } else {
        $('*#error').remove();
        retorno = true;
    }

    return retorno;
};
; 
/*
 * FancyBox - jQuery Plugin
 * Simple and fancy lightbox alternative
 *
 * Examples and documentation at: http://fancybox.net
 *
 * Copyright (c) 2008 - 2010 Janis Skarnelis
 * That said, it is hardly a one-person project. Many people have submitted bugs, code, and offered their advice freely. Their support is greatly appreciated.
 *
 * Version: 1.3.4 (11/11/2010)
 * Requires: jQuery v1.3+
 *
 * Dual licensed under the MIT and GPL licenses:
 *   http://www.opensource.org/licenses/mit-license.php
 *   http://www.gnu.org/licenses/gpl.html
 */

;(function($) {
	var tmp, loading, overlay, wrap, outer, content, close, title, nav_left, nav_right,

		selectedIndex = 0, selectedOpts = {}, selectedArray = [], currentIndex = 0, currentOpts = {}, currentArray = [],

		ajaxLoader = null, imgPreloader = new Image(), imgRegExp = /\.(jpg|gif|png|bmp|jpeg)(.*)?$/i, swfRegExp = /[^\.]\.(swf)\s*$/i,

		loadingTimer, loadingFrame = 1,

		titleHeight = 0, titleStr = '', start_pos, final_pos, busy = false, fx = $.extend($('<div/>')[0], { prop: 0 }),

		isIE6 = $.browser.msie && $.browser.version < 7 && !window.XMLHttpRequest,

		/*
		 * Private methods 
		 */

		_abort = function() {
			loading.hide();

			imgPreloader.onerror = imgPreloader.onload = null;

			if (ajaxLoader) {
				ajaxLoader.abort();
			}

			tmp.empty();
		},

		_error = function() {
			if (false === selectedOpts.onError(selectedArray, selectedIndex, selectedOpts)) {
				loading.hide();
				busy = false;
				return;
			}

			selectedOpts.titleShow = false;

			selectedOpts.width = 'auto';
			selectedOpts.height = 'auto';

			tmp.html( '<p id="fancybox-error">The requested content cannot be loaded.<br />Please try again later.</p>' );

			_process_inline();
		},

		_start = function() {
			var obj = selectedArray[ selectedIndex ],
				href, 
				type, 
				title,
				str,
				emb,
				ret;

			_abort();

			selectedOpts = $.extend({}, $.fn.fancybox.defaults, (typeof $(obj).data('fancybox') == 'undefined' ? selectedOpts : $(obj).data('fancybox')));

			ret = selectedOpts.onStart(selectedArray, selectedIndex, selectedOpts);

			if (ret === false) {
				busy = false;
				return;
			} else if (typeof ret == 'object') {
				selectedOpts = $.extend(selectedOpts, ret);
			}

			title = selectedOpts.title || (obj.nodeName ? $(obj).attr('title') : obj.title) || '';

			if (obj.nodeName && !selectedOpts.orig) {
				selectedOpts.orig = $(obj).children("img:first").length ? $(obj).children("img:first") : $(obj);
			}

			if (title === '' && selectedOpts.orig && selectedOpts.titleFromAlt) {
				title = selectedOpts.orig.attr('alt');
			}

			href = selectedOpts.href || (obj.nodeName ? $(obj).attr('href') : obj.href) || null;

			if ((/^(?:javascript)/i).test(href) || href == '#') {
				href = null;
			}

			if (selectedOpts.type) {
				type = selectedOpts.type;

				if (!href) {
					href = selectedOpts.content;
				}

			} else if (selectedOpts.content) {
				type = 'html';

			} else if (href) {
				if (href.match(imgRegExp)) {
					type = 'image';

				} else if (href.match(swfRegExp)) {
					type = 'swf';

				} else if ($(obj).hasClass("iframe")) {
					type = 'iframe';

				} else if (href.indexOf("#") === 0) {
					type = 'inline';

				} else {
					type = 'ajax';
				}
			}

			if (!type) {
				_error();
				return;
			}

			if (type == 'inline') {
				obj	= href.substr(href.indexOf("#"));
				type = $(obj).length > 0 ? 'inline' : 'ajax';
			}

			selectedOpts.type = type;
			selectedOpts.href = href;
			selectedOpts.title = title;

			if (selectedOpts.autoDimensions) {
				if (selectedOpts.type == 'html' || selectedOpts.type == 'inline' || selectedOpts.type == 'ajax') {
					selectedOpts.width = 'auto';
					selectedOpts.height = 'auto';
				} else {
					selectedOpts.autoDimensions = false;	
				}
			}

			if (selectedOpts.modal) {
				selectedOpts.overlayShow = true;
				selectedOpts.hideOnOverlayClick = false;
				selectedOpts.hideOnContentClick = false;
				selectedOpts.enableEscapeButton = false;
				selectedOpts.showCloseButton = false;
			}

			selectedOpts.padding = parseInt(selectedOpts.padding, 10);
			selectedOpts.margin = parseInt(selectedOpts.margin, 10);

			tmp.css('padding', (selectedOpts.padding + selectedOpts.margin));

			$('.fancybox-inline-tmp').unbind('fancybox-cancel').bind('fancybox-change', function() {
				$(this).replaceWith(content.children());				
			});

			switch (type) {
				case 'html' :
					tmp.html( selectedOpts.content );
					_process_inline();
				break;

				case 'inline' :
					if ( $(obj).parent().is('#fancybox-content') === true) {
						busy = false;
						return;
					}

					$('<div class="fancybox-inline-tmp" />')
						.hide()
						.insertBefore( $(obj) )
						.bind('fancybox-cleanup', function() {
							$(this).replaceWith(content.children());
						}).bind('fancybox-cancel', function() {
							$(this).replaceWith(tmp.children());
						});

					$(obj).appendTo(tmp);

					_process_inline();
				break;

				case 'image':
					busy = false;

					$.fancybox.showActivity();

					imgPreloader = new Image();

					imgPreloader.onerror = function() {
						_error();
					};

					imgPreloader.onload = function() {
						busy = true;

						imgPreloader.onerror = imgPreloader.onload = null;

						_process_image();
					};

					imgPreloader.src = href;
				break;

				case 'swf':
					selectedOpts.scrolling = 'no';

					str = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="' + selectedOpts.width + '" height="' + selectedOpts.height + '"><param name="movie" value="' + href + '"></param>';
					emb = '';

					$.each(selectedOpts.swf, function(name, val) {
						str += '<param name="' + name + '" value="' + val + '"></param>';
						emb += ' ' + name + '="' + val + '"';
					});

					str += '<embed src="' + href + '" type="application/x-shockwave-flash" width="' + selectedOpts.width + '" height="' + selectedOpts.height + '"' + emb + '></embed></object>';

					tmp.html(str);

					_process_inline();
				break;

				case 'ajax':
					busy = false;

					$.fancybox.showActivity();

					selectedOpts.ajax.win = selectedOpts.ajax.success;

					ajaxLoader = $.ajax($.extend({}, selectedOpts.ajax, {
						url	: href,
						data : selectedOpts.ajax.data || {},
						error : function(XMLHttpRequest, textStatus, errorThrown) {
							if ( XMLHttpRequest.status > 0 ) {
								_error();
							}
						},
						success : function(data, textStatus, XMLHttpRequest) {
							var o = typeof XMLHttpRequest == 'object' ? XMLHttpRequest : ajaxLoader;
							if (o.status == 200) {
								if ( typeof selectedOpts.ajax.win == 'function' ) {
									ret = selectedOpts.ajax.win(href, data, textStatus, XMLHttpRequest);

									if (ret === false) {
										loading.hide();
										return;
									} else if (typeof ret == 'string' || typeof ret == 'object') {
										data = ret;
									}
								}

								tmp.html( data );
								_process_inline();
							}
						}
					}));

				break;

				case 'iframe':
					_show();
				break;
			}
		},

		_process_inline = function() {
			var
				w = selectedOpts.width,
				h = selectedOpts.height;

			if (w.toString().indexOf('%') > -1) {
				w = parseInt( ($(window).width() - (selectedOpts.margin * 2)) * parseFloat(w) / 100, 10) + 'px';

			} else {
				w = w == 'auto' ? 'auto' : w + 'px';	
			}

			if (h.toString().indexOf('%') > -1) {
				h = parseInt( ($(window).height() - (selectedOpts.margin * 2)) * parseFloat(h) / 100, 10) + 'px';

			} else {
				h = h == 'auto' ? 'auto' : h + 'px';	
			}

			tmp.wrapInner('<div style="width:' + w + ';height:' + h + ';overflow: ' + (selectedOpts.scrolling == 'auto' ? 'auto' : (selectedOpts.scrolling == 'yes' ? 'scroll' : 'hidden')) + ';position:relative;"></div>');

			selectedOpts.width = tmp.width();
			selectedOpts.height = tmp.height();

			_show();
		},

		_process_image = function() {
			selectedOpts.width = imgPreloader.width;
			selectedOpts.height = imgPreloader.height;

			$("<img />").attr({
				'id' : 'fancybox-img',
				'src' : imgPreloader.src,
				'alt' : selectedOpts.title
			}).appendTo( tmp );

			_show();
		},

		_show = function() {
			var pos, equal;

			loading.hide();

			if (wrap.is(":visible") && false === currentOpts.onCleanup(currentArray, currentIndex, currentOpts)) {
				$.event.trigger('fancybox-cancel');

				busy = false;
				return;
			}

			busy = true;

			$(content.add( overlay )).unbind();

			$(window).unbind("resize.fb scroll.fb");
			$(document).unbind('keydown.fb');

			if (wrap.is(":visible") && currentOpts.titlePosition !== 'outside') {
				wrap.css('height', wrap.height());
			}

			currentArray = selectedArray;
			currentIndex = selectedIndex;
			currentOpts = selectedOpts;

			if (currentOpts.overlayShow) {
				overlay.css({
					'background-color' : currentOpts.overlayColor,
					'opacity' : currentOpts.overlayOpacity,
					'cursor' : currentOpts.hideOnOverlayClick ? 'pointer' : 'auto',
					'height' : $(document).height()
				});

				if (!overlay.is(':visible')) {
					if (isIE6) {
						$('select:not(#fancybox-tmp select)').filter(function() {
							return this.style.visibility !== 'hidden';
						}).css({'visibility' : 'hidden'}).one('fancybox-cleanup', function() {
							this.style.visibility = 'inherit';
						});
					}

					overlay.show();
				}
			} else {
				overlay.hide();
			}

			final_pos = _get_zoom_to();

			_process_title();

			if (wrap.is(":visible")) {
				$( close.add( nav_left ).add( nav_right ) ).hide();

				pos = wrap.position(),

				start_pos = {
					top	 : pos.top,
					left : pos.left,
					width : wrap.width(),
					height : wrap.height()
				};

				equal = (start_pos.width == final_pos.width && start_pos.height == final_pos.height);

				content.fadeTo(currentOpts.changeFade, 0.3, function() {
					var finish_resizing = function() {
						content.html( tmp.contents() ).fadeTo(currentOpts.changeFade, 1, _finish);
					};

					$.event.trigger('fancybox-change');

					content
						.empty()
						.removeAttr('filter')
						.css({
							'border-width' : currentOpts.padding,
							'width'	: final_pos.width - currentOpts.padding * 2,
							'height' : selectedOpts.autoDimensions ? 'auto' : final_pos.height - titleHeight - currentOpts.padding * 2
						});

					if (equal) {
						finish_resizing();

					} else {
						fx.prop = 0;

						$(fx).animate({prop: 1}, {
							 duration : currentOpts.changeSpeed,
							 easing : currentOpts.easingChange,
							 step : _draw,
							 complete : finish_resizing
						});
					}
				});

				return;
			}

			wrap.removeAttr("style");

			content.css('border-width', currentOpts.padding);

			if (currentOpts.transitionIn == 'elastic') {
				start_pos = _get_zoom_from();

				content.html( tmp.contents() );

				wrap.show();

				if (currentOpts.opacity) {
					final_pos.opacity = 0;
				}

				fx.prop = 0;

				$(fx).animate({prop: 1}, {
					 duration : currentOpts.speedIn,
					 easing : currentOpts.easingIn,
					 step : _draw,
					 complete : _finish
				});

				return;
			}

			if (currentOpts.titlePosition == 'inside' && titleHeight > 0) {	
				title.show();	
			}

			content
				.css({
					'width' : final_pos.width - currentOpts.padding * 2,
					'height' : selectedOpts.autoDimensions ? 'auto' : final_pos.height - titleHeight - currentOpts.padding * 2
				})
				.html( tmp.contents() );

			wrap
				.css(final_pos)
				.fadeIn( currentOpts.transitionIn == 'none' ? 0 : currentOpts.speedIn, _finish );
		},

		_format_title = function(title) {
			if (title && title.length) {
				if (currentOpts.titlePosition == 'float') {
					return '<table id="fancybox-title-float-wrap" cellpadding="0" cellspacing="0"><tr><td id="fancybox-title-float-left"></td><td id="fancybox-title-float-main">' + title + '</td><td id="fancybox-title-float-right"></td></tr></table>';
				}

				return '<div id="fancybox-title-' + currentOpts.titlePosition + '">' + title + '</div>';
			}

			return false;
		},

		_process_title = function() {
			titleStr = currentOpts.title || '';
			titleHeight = 0;

			title
				.empty()
				.removeAttr('style')
				.removeClass();

			if (currentOpts.titleShow === false) {
				title.hide();
				return;
			}

			titleStr = $.isFunction(currentOpts.titleFormat) ? currentOpts.titleFormat(titleStr, currentArray, currentIndex, currentOpts) : _format_title(titleStr);

			if (!titleStr || titleStr === '') {
				title.hide();
				return;
			}

			title
				.addClass('fancybox-title-' + currentOpts.titlePosition)
				.html( titleStr )
				.appendTo( 'body' )
				.show();

			switch (currentOpts.titlePosition) {
				case 'inside':
					title
						.css({
							'width' : final_pos.width - (currentOpts.padding * 2),
							'marginLeft' : currentOpts.padding,
							'marginRight' : currentOpts.padding
						});

					titleHeight = title.outerHeight(true);

					title.appendTo( outer );

					final_pos.height += titleHeight;
				break;

				case 'over':
					title
						.css({
							'marginLeft' : currentOpts.padding,
							'width'	: final_pos.width - (currentOpts.padding * 2),
							'bottom' : currentOpts.padding
						})
						.appendTo( outer );
				break;

				case 'float':
					title
						.css('left', parseInt((title.width() - final_pos.width - 40)/ 2, 10) * -1)
						.appendTo( wrap );
				break;

				default:
					title
						.css({
							'width' : final_pos.width - (currentOpts.padding * 2),
							'paddingLeft' : currentOpts.padding,
							'paddingRight' : currentOpts.padding
						})
						.appendTo( wrap );
				break;
			}

			title.hide();
		},

		_set_navigation = function() {
			if (currentOpts.enableEscapeButton || currentOpts.enableKeyboardNav) {
				$(document).bind('keydown.fb', function(e) {
					if (e.keyCode == 27 && currentOpts.enableEscapeButton) {
						e.preventDefault();
						$.fancybox.close();

					} else if ((e.keyCode == 37 || e.keyCode == 39) && currentOpts.enableKeyboardNav && e.target.tagName !== 'INPUT' && e.target.tagName !== 'TEXTAREA' && e.target.tagName !== 'SELECT') {
						e.preventDefault();
						$.fancybox[ e.keyCode == 37 ? 'prev' : 'next']();
					}
				});
			}

			if (!currentOpts.showNavArrows) { 
				nav_left.hide();
				nav_right.hide();
				return;
			}

			if ((currentOpts.cyclic && currentArray.length > 1) || currentIndex !== 0) {
				nav_left.show();
			}

			if ((currentOpts.cyclic && currentArray.length > 1) || currentIndex != (currentArray.length -1)) {
				nav_right.show();
			}
		},

		_finish = function () {
			if (!$.support.opacity) {
				content.get(0).style.removeAttribute('filter');
				wrap.get(0).style.removeAttribute('filter');
			}

			if (selectedOpts.autoDimensions) {
				content.css('height', 'auto');
			}

			wrap.css('height', 'auto');

			if (titleStr && titleStr.length) {
				title.show();
			}

			if (currentOpts.showCloseButton) {
				close.show();
			}

			_set_navigation();
	
			if (currentOpts.hideOnContentClick)	{
				content.bind('click', $.fancybox.close);
			}

			if (currentOpts.hideOnOverlayClick)	{
				overlay.bind('click', $.fancybox.close);
			}

			$(window).bind("resize.fb", $.fancybox.resize);

			if (currentOpts.centerOnScroll) {
				$(window).bind("scroll.fb", $.fancybox.center);
			}

			if (currentOpts.type == 'iframe') {
				$('<iframe id="fancybox-frame" name="fancybox-frame' + new Date().getTime() + '" frameborder="0" hspace="0" ' + ($.browser.msie ? 'allowtransparency="true""' : '') + ' scrolling="' + selectedOpts.scrolling + '" src="' + currentOpts.href + '"></iframe>').appendTo(content);
			}

			wrap.show();

			busy = false;

			$.fancybox.center();

			currentOpts.onComplete(currentArray, currentIndex, currentOpts);

			_preload_images();
		},

		_preload_images = function() {
			var href, 
				objNext;

			if ((currentArray.length -1) > currentIndex) {
				href = currentArray[ currentIndex + 1 ].href;

				if (typeof href !== 'undefined' && href.match(imgRegExp)) {
					objNext = new Image();
					objNext.src = href;
				}
			}

			if (currentIndex > 0) {
				href = currentArray[ currentIndex - 1 ].href;

				if (typeof href !== 'undefined' && href.match(imgRegExp)) {
					objNext = new Image();
					objNext.src = href;
				}
			}
		},

		_draw = function(pos) {
			var dim = {
				width : parseInt(start_pos.width + (final_pos.width - start_pos.width) * pos, 10),
				height : parseInt(start_pos.height + (final_pos.height - start_pos.height) * pos, 10),

				top : parseInt(start_pos.top + (final_pos.top - start_pos.top) * pos, 10),
				left : parseInt(start_pos.left + (final_pos.left - start_pos.left) * pos, 10)
			};

			if (typeof final_pos.opacity !== 'undefined') {
				dim.opacity = pos < 0.5 ? 0.5 : pos;
			}

			wrap.css(dim);

			content.css({
				'width' : dim.width - currentOpts.padding * 2,
				'height' : dim.height - (titleHeight * pos) - currentOpts.padding * 2
			});
		},

		_get_viewport = function() {
			return [
				$(window).width() - (currentOpts.margin * 2),
				$(window).height() - (currentOpts.margin * 2),
				$(document).scrollLeft() + currentOpts.margin,
				$(document).scrollTop() + currentOpts.margin
			];
		},

		_get_zoom_to = function () {
			var view = _get_viewport(),
				to = {},
				resize = currentOpts.autoScale,
				double_padding = currentOpts.padding * 2,
				ratio;

			if (currentOpts.width.toString().indexOf('%') > -1) {
				to.width = parseInt((view[0] * parseFloat(currentOpts.width)) / 100, 10);
			} else {
				to.width = currentOpts.width + double_padding;
			}

			if (currentOpts.height.toString().indexOf('%') > -1) {
				to.height = parseInt((view[1] * parseFloat(currentOpts.height)) / 100, 10);
			} else {
				to.height = currentOpts.height + double_padding;
			}

			if (resize && (to.width > view[0] || to.height > view[1])) {
				if (selectedOpts.type == 'image' || selectedOpts.type == 'swf') {
					ratio = (currentOpts.width ) / (currentOpts.height );

					if ((to.width ) > view[0]) {
						to.width = view[0];
						to.height = parseInt(((to.width - double_padding) / ratio) + double_padding, 10);
					}

					if ((to.height) > view[1]) {
						to.height = view[1];
						to.width = parseInt(((to.height - double_padding) * ratio) + double_padding, 10);
					}

				} else {
					to.width = Math.min(to.width, view[0]);
					to.height = Math.min(to.height, view[1]);
				}
			}

			to.top = parseInt(Math.max(view[3] - 20, view[3] + ((view[1] - to.height - 40) * 0.5)), 10);
			to.left = parseInt(Math.max(view[2] - 20, view[2] + ((view[0] - to.width - 40) * 0.5)), 10);

			return to;
		},

		_get_obj_pos = function(obj) {
			var pos = obj.offset();

			pos.top += parseInt( obj.css('paddingTop'), 10 ) || 0;
			pos.left += parseInt( obj.css('paddingLeft'), 10 ) || 0;

			pos.top += parseInt( obj.css('border-top-width'), 10 ) || 0;
			pos.left += parseInt( obj.css('border-left-width'), 10 ) || 0;

			pos.width = obj.width();
			pos.height = obj.height();

			return pos;
		},

		_get_zoom_from = function() {
			var orig = selectedOpts.orig ? $(selectedOpts.orig) : false,
				from = {},
				pos,
				view;

			if (orig && orig.length) {
				pos = _get_obj_pos(orig);

				from = {
					width : pos.width + (currentOpts.padding * 2),
					height : pos.height + (currentOpts.padding * 2),
					top	: pos.top - currentOpts.padding - 20,
					left : pos.left - currentOpts.padding - 20
				};

			} else {
				view = _get_viewport();

				from = {
					width : currentOpts.padding * 2,
					height : currentOpts.padding * 2,
					top	: parseInt(view[3] + view[1] * 0.5, 10),
					left : parseInt(view[2] + view[0] * 0.5, 10)
				};
			}

			return from;
		},

		_animate_loading = function() {
			if (!loading.is(':visible')){
				clearInterval(loadingTimer);
				return;
			}

			$('div', loading).css('top', (loadingFrame * -40) + 'px');

			loadingFrame = (loadingFrame + 1) % 12;
		};

	/*
	 * Public methods 
	 */

	$.fn.fancybox = function(options) {
		if (!$(this).length) {
			return this;
		}

		$(this)
			.data('fancybox', $.extend({}, options, ($.metadata ? $(this).metadata() : {})))
			.unbind('click.fb')
			.bind('click.fb', function(e) {
				e.preventDefault();

				if (busy) {
					return;
				}

				busy = true;

				$(this).blur();

				selectedArray = [];
				selectedIndex = 0;

				var rel = $(this).attr('rel') || '';

				if (!rel || rel == '' || rel === 'nofollow') {
					selectedArray.push(this);

				} else {
					selectedArray = $("a[rel=" + rel + "], area[rel=" + rel + "]");
					selectedIndex = selectedArray.index( this );
				}

				_start();

				return;
			});

		return this;
	};

	$.fancybox = function(obj) {
		var opts;

		if (busy) {
			return;
		}

		busy = true;
		opts = typeof arguments[1] !== 'undefined' ? arguments[1] : {};

		selectedArray = [];
		selectedIndex = parseInt(opts.index, 10) || 0;

		if ($.isArray(obj)) {
			for (var i = 0, j = obj.length; i < j; i++) {
				if (typeof obj[i] == 'object') {
					$(obj[i]).data('fancybox', $.extend({}, opts, obj[i]));
				} else {
					obj[i] = $({}).data('fancybox', $.extend({content : obj[i]}, opts));
				}
			}

			selectedArray = jQuery.merge(selectedArray, obj);

		} else {
			if (typeof obj == 'object') {
				$(obj).data('fancybox', $.extend({}, opts, obj));
			} else {
				obj = $({}).data('fancybox', $.extend({content : obj}, opts));
			}

			selectedArray.push(obj);
		}

		if (selectedIndex > selectedArray.length || selectedIndex < 0) {
			selectedIndex = 0;
		}

		_start();
	};

	$.fancybox.showActivity = function() {
		clearInterval(loadingTimer);

		loading.show();
		loadingTimer = setInterval(_animate_loading, 66);
	};

	$.fancybox.hideActivity = function() {
		loading.hide();
	};

	$.fancybox.next = function() {
		return $.fancybox.pos( currentIndex + 1);
	};

	$.fancybox.prev = function() {
		return $.fancybox.pos( currentIndex - 1);
	};

	$.fancybox.pos = function(pos) {
		if (busy) {
			return;
		}

		pos = parseInt(pos);

		selectedArray = currentArray;

		if (pos > -1 && pos < currentArray.length) {
			selectedIndex = pos;
			_start();

		} else if (currentOpts.cyclic && currentArray.length > 1) {
			selectedIndex = pos >= currentArray.length ? 0 : currentArray.length - 1;
			_start();
		}

		return;
	};

	$.fancybox.cancel = function() {
		if (busy) {
			return;
		}

		busy = true;

		$.event.trigger('fancybox-cancel');

		_abort();

		selectedOpts.onCancel(selectedArray, selectedIndex, selectedOpts);

		busy = false;
	};

	// Note: within an iframe use - parent.$.fancybox.close();
	$.fancybox.close = function() {
		if (busy || wrap.is(':hidden')) {
			return;
		}

		busy = true;

		if (currentOpts && false === currentOpts.onCleanup(currentArray, currentIndex, currentOpts)) {
			busy = false;
			return;
		}

		_abort();

		$(close.add( nav_left ).add( nav_right )).hide();

		$(content.add( overlay )).unbind();

		$(window).unbind("resize.fb scroll.fb");
		$(document).unbind('keydown.fb');

		content.find('iframe').attr('src', isIE6 && /^https/i.test(window.location.href || '') ? 'javascript:void(false)' : 'about:blank');

		if (currentOpts.titlePosition !== 'inside') {
			title.empty();
		}

		wrap.stop();

		function _cleanup() {
			overlay.fadeOut('fast');

			title.empty().hide();
			wrap.hide();

			$.event.trigger('fancybox-cleanup');

			content.empty();

			currentOpts.onClosed(currentArray, currentIndex, currentOpts);

			currentArray = selectedOpts	= [];
			currentIndex = selectedIndex = 0;
			currentOpts = selectedOpts	= {};

			busy = false;
		}

		if (currentOpts.transitionOut == 'elastic') {
			start_pos = _get_zoom_from();

			var pos = wrap.position();

			final_pos = {
				top	 : pos.top ,
				left : pos.left,
				width :	wrap.width(),
				height : wrap.height()
			};

			if (currentOpts.opacity) {
				final_pos.opacity = 1;
			}

			title.empty().hide();

			fx.prop = 1;

			$(fx).animate({ prop: 0 }, {
				 duration : currentOpts.speedOut,
				 easing : currentOpts.easingOut,
				 step : _draw,
				 complete : _cleanup
			});

		} else {
			wrap.fadeOut( currentOpts.transitionOut == 'none' ? 0 : currentOpts.speedOut, _cleanup);
		}
	};

	$.fancybox.resize = function() {
		if (overlay.is(':visible')) {
			overlay.css('height', $(document).height());
		}

		$.fancybox.center(true);
	};

	$.fancybox.center = function() {
		var view, align;

		if (busy) {
			return;	
		}

		align = arguments[0] === true ? 1 : 0;
		view = _get_viewport();

		if (!align && (wrap.width() > view[0] || wrap.height() > view[1])) {
			return;	
		}

		wrap
			.stop()
			.animate({
				'top' : parseInt(Math.max(view[3] - 20, view[3] + ((view[1] - content.height() - 40) * 0.5) - currentOpts.padding)),
				'left' : parseInt(Math.max(view[2] - 20, view[2] + ((view[0] - content.width() - 40) * 0.5) - currentOpts.padding))
			}, typeof arguments[0] == 'number' ? arguments[0] : 200);
	};

	$.fancybox.init = function() {
		if ($("#fancybox-wrap").length) {
			return;
		}

		$('body').append(
			tmp	= $('<div id="fancybox-tmp"></div>'),
			loading	= $('<div id="fancybox-loading"><div></div></div>'),
			overlay	= $('<div id="fancybox-overlay"></div>'),
			wrap = $('<div id="fancybox-wrap"></div>')
		);

		outer = $('<div id="fancybox-outer"></div>')
			.append('<div class="fancybox-bg" id="fancybox-bg-n"></div><div class="fancybox-bg" id="fancybox-bg-ne"></div><div class="fancybox-bg" id="fancybox-bg-e"></div><div class="fancybox-bg" id="fancybox-bg-se"></div><div class="fancybox-bg" id="fancybox-bg-s"></div><div class="fancybox-bg" id="fancybox-bg-sw"></div><div class="fancybox-bg" id="fancybox-bg-w"></div><div class="fancybox-bg" id="fancybox-bg-nw"></div>')
			.appendTo( wrap );

		outer.append(
			content = $('<div id="fancybox-content"></div>'),
			close = $('<a id="fancybox-close">Fechar</a>'),
			title = $('<div id="fancybox-title"></div>'),

			nav_left = $('<a href="javascript:;" id="fancybox-left"><span class="fancy-ico" id="fancybox-left-ico"></span></a>'),
			nav_right = $('<a href="javascript:;" id="fancybox-right"><span class="fancy-ico" id="fancybox-right-ico"></span></a>')
		);

		close.click($.fancybox.close);
		loading.click($.fancybox.cancel);

		nav_left.click(function(e) {
			e.preventDefault();
			$.fancybox.prev();
		});

		nav_right.click(function(e) {
			e.preventDefault();
			$.fancybox.next();
		});

		if ($.fn.mousewheel) {
			wrap.bind('mousewheel.fb', function(e, delta) {
				if (busy) {
					e.preventDefault();

				} else if ($(e.target).get(0).clientHeight == 0 || $(e.target).get(0).scrollHeight === $(e.target).get(0).clientHeight) {
					e.preventDefault();
					$.fancybox[ delta > 0 ? 'prev' : 'next']();
				}
			});
		}

		if (!$.support.opacity) {
			wrap.addClass('fancybox-ie');
		}

		if (isIE6) {
			loading.addClass('fancybox-ie6');
			wrap.addClass('fancybox-ie6');

			$('<iframe id="fancybox-hide-sel-frame" src="' + (/^https/i.test(window.location.href || '') ? 'javascript:void(false)' : 'about:blank' ) + '" scrolling="no" border="0" frameborder="0" tabindex="-1"></iframe>').prependTo(outer);
		}
	};

	$.fn.fancybox.defaults = {
		padding : 10,
		margin : 40,
		opacity : false,
		modal : false,
		cyclic : false,
		scrolling : 'auto',	// 'auto', 'yes' or 'no'

		width : 560,
		height : 340,

		autoScale : true,
		autoDimensions : true,
		centerOnScroll : false,

		ajax : {},
		swf : { wmode: 'transparent' },

		hideOnOverlayClick : true,
		hideOnContentClick : false,

		overlayShow : true,
		overlayOpacity : 0.7,
		overlayColor : '#777',

		titleShow : true,
		titlePosition : 'float', // 'float', 'outside', 'inside' or 'over'
		titleFormat : null,
		titleFromAlt : false,

		transitionIn : 'elastic', // 'elastic', 'fade' or 'none'
		transitionOut : 'elastic', // 'elastic', 'fade' or 'none'

		speedIn : 300,
		speedOut : 300,

		changeSpeed : 300,
		changeFade : 'fast',

		easingIn : 'swing',
		easingOut : 'swing',

		showCloseButton	 : true,
		showNavArrows : true,
		enableEscapeButton : true,
		enableKeyboardNav : true,

		onStart: function () {
		},
		onCancel : function(){},
		onComplete : function(){},
		onCleanup : function(){},
		onClosed: function () {
		},
		onError : function(){}
	};

	$(document).ready(function() {
		$.fancybox.init();
	});

})(jQuery);
; 
(function (a) { a.sliderTabs = function (b, c) { var d = this, e = { autoplay: !1, tabArrowWidth: 35, classes: { leftTabArrow: "", panel: "", panelActive: "", panelsContainer: "", rightTabArrow: "", tab: "", tabActive: "", tabsList: "" }, defaultTab: 1, height: null, indicators: !1, mousewheel: !0, position: "top", panelArrows: !1, panelArrowsShowOnHover: !1, tabs: !0, tabHeight: 30, tabArrows: !0, tabSlideLength: 100, tabSlideSpeed: 200, transition: "slide", transitionEasing: "easeOutCubic", transitionSpeed: 500, width: null }, f = a(b), g, h, i, j, k, l, m, n, o, p, q = !1, r = !0, s, t; d.selectedTab = e.defaultTab, d.init = function () { s = d.settings = a.extend({}, e, c), f.addClass("ui-slider-tabs"), i = f.children("div").addClass("ui-slider-tab-content").remove(), h = f.children("ul").addClass("ui-slider-tabs-list").remove(), h.children("li").remove().appendTo(h), d.count = h.children("li").length, k = a("<div class='ui-slider-tabs-list-wrapper'>"), j = a("<div class='ui-slider-tabs-list-container'>").append(h).appendTo(k), j.find("li").css("height", s.tabHeight + 2), j.find("li a").css("height", s.tabHeight + 2), m = a("<a href='#' class='ui-slider-left-arrow'><div></div></a>").css({ width: s.tabArrowWidth, height: s.tabHeight + 2 }).appendTo(j).click(function (a) { return d.slideTabs("right", s.tabSlideLength), !1 }), n = a("<a href='#' class='ui-slider-right-arrow'><div></div></a>").css({ width: s.tabArrowWidth, height: s.tabHeight + 2 }).appendTo(j).click(function (a) { return d.slideTabs("left", s.tabSlideLength), !1 }), l = a("<div class='ui-slider-tabs-content-container'>").append(i), s.position == "bottom" ? f.append(l).append(k.addClass("bottom")) : f.append(k).append(l), s.width && f.width(parseInt(s.width)), s.height && l.height(parseInt(s.height) - s.tabHeight), s.indicators && d.showIndicators(), d.selectTab(s.defaultTab), d.slideTabs("left", 0), w(), D(), f.delegate(".ui-slider-tabs-list li a", "click", function () { return !a(this).parent().hasClass("selected") && !q && d.selectTab(a(this).parent()), !1 }), g && g.delegate(".ui-slider-tabs-indicator", "click", function () { !a(this).hasClass("selected") && !q && d.selectTab(a(this).index() + 1) }), a.each(s.classes, function (a, b) { switch (a) { case "leftTabArrow": m.addClass(b); break; case "rightTabArrow": n.addClass(b); break; case "panel": i.addClass(b); break; case "panelsContainer": l.addClass(b); break; case "tab": h.find("li").addClass(b); break; case "tabsList": h.addClass(b); break; default: } }), s.panelArrows && B(), s.panelArrowsShowOnHover && (o && o.addClass("showOnHover"), p && p.addClass("showOnHover")), l.resize(B), k.resize(function () { C(), D() }), setInterval(function () { var a = l.children(".selected"); a.outerHeight() > l.outerHeight() && r && A(a) }, 100), C(), s.tabs || k.hide(), s.autoplay && setInterval(d.next, s.autoplay), f.unbind("mousewheel", function (a, b, c, e) { return b > 0 ? d.next() : b < 0 && d.prev(), !1 }) }, d.selectTab = function (a) { r = !1; var b = typeof a == "number" ? h.children("li:nth-child(" + a + ")") : a, c = b.find("a").attr("href").substr(1), e = l.children("#" + c); d.selectedTab = typeof a == "number" ? a : a.index() + 1, A(e), q = !0; var f = h.find(".selected").index() < b.index() ? "left" : "right"; b.siblings().removeClass("selected"), s.classes.tabActive != "" && b.siblings().removeClass(s.classes.tabActive), b.addClass("selected").addClass(s.classes.tabActive), y(l.children(".ui-slider-tab-content:visible"), f), z(e), v(b), u() }, d.next = function () { q || (d.count === d.selectedTab ? d.selectTab(1) : d.selectTab(d.selectedTab + 1)) }, d.prev = function () { q || (d.selectedTab === 1 ? d.selectTab(d.count) : d.selectTab(d.selectedTab - 1)) }, d.slideTabs = function (a, b) { var c = parseInt(h.css("margin-left")), d = c; m.removeClass("edge"), n.removeClass("edge"), a == "right" ? d += b : a == "left" && (d -= b), d >= 0 ? (d = 0, m.addClass("edge")) : d <= t && (d = t, n.addClass("edge")), h.animate({ "margin-left": d }, s.tabSlideSpeed) }, d.showIndicators = function () { if (!g) { g = a("<div class='ui-slider-tabs-indicator-container'>"); for (var b = 0; b < i.length; b++) g.append("<div class='ui-slider-tabs-indicator'></div>"); l.append(g) } else g.show() }, d.hideIndicators = function () { g && g.hide() }, d.showTabArrows = function () { if (!s.tabArrows) return; m.show(), n.show(), j.css("margin", "0 " + s.tabArrowWidth + "px") }, d.hideTabArrows = function () { m.hide(), n.hide(), j.css("margin", "0") }, d.showPanelArrows = function () { o && o.show(), p && p.show() }, d.hidePanelArrows = function () { o && o.hide(), p && p.hide() }; var u = function () { if (s.indicators && g) { var a = g.children("div:nth-child(" + d.selectedTab + ")"); a.siblings().removeClass("selected"), a.addClass("selected") } }, v = function (a) { var b = a.offset(), c = j.offset(), e = b.left - c.left, f = c.left + j.outerWidth() - (b.left + a.outerWidth()); e < 0 ? d.slideTabs("right", -e) : f < 0 && d.slideTabs("left", -f) }, w = function () { s.transition == "slide" && h.children("li").each(function (b, c) { var d = h.children(".selected").index(), e = a(c).index(), f = l.children("#" + a(c).find("a").attr("href").substr(1)); d < e ? f.css({ left: l.width() + "px" }) : d > e ? f.css({ left: "-" + l.width() + "px" }) : f.addClass(s.classes.panelActive) }), s.transition == "fade" && h.children("li").each(function (b, c) { var d = h.children(".selected").index(), e = a(c).index(), f = l.children("#" + a(c).find("a").attr("href").substr(1)); d != e ? f.css({ opacity: 0 }) : f.addClass(s.classes.panelActive) }) }, x = function (a) { return { hide: { slideleft: { left: "-" + a + "px" }, slideright: { left: a + "px" }, fade: { opacity: 0 } }, show: { slide: { left: 0 }, fade: { opacity: 1 } } } }, y = function (a, b) { if (s.transition == "slide") var c = "slide" + b; else var c = s.transition; a.animate(x(l.width()).hide[c], s.transitionSpeed, s.transitionEasing, function () { a.hide(), a.removeClass("selected"), q = !1, w() }) }, z = function (a) { a.show(), a.addClass(s.classes.panelActive).addClass("selected"), a.animate(x(l.width()).show[s.transition], s.transitionSpeed, s.transitionEasing, function () { q = !1, r = !0, w() }) }, A = function (a) { s.height || l.animate({ height: E(a) }, 200) }, B = function () { s.panelArrows && (!o && !p && (o = a("<div class='ui-slider-tabs-leftPanelArrow'>").click(function () { d.prev() }), p = a("<div class='ui-slider-tabs-rightPanelArrow'>").click(function () { d.next() }), o.appendTo(l), p.appendTo(l)), p.css({ top: l.height() / 2 - p.outerHeight() / 2 }), o.css({ top: l.height() / 2 - o.outerHeight() / 2 })) }, C = function () { var b = 0; h.children().each(function (c, d) { b += a(d).outerWidth(!0) }), h.width(b), j.width() < b && s.tabArrows ? (d.showTabArrows(), t = j.width() - b) : d.hideTabArrows() }, D = function () { i.width(l.width() - (i.outerWidth() - i.width())) }, E = function (a) { var b = { display: a.css("display"), left: a.css("left"), position: a.css("position") }; a.css({ display: "normal", left: -5e3, position: "absolute" }); var c = a.outerHeight(); return a.css(b), c }; d.init() }, a.fn.sliderTabs = function (b) { return this.each(function () { var c = a(this), d = c.data("sliderTabs"); if (!d) return d = new a.sliderTabs(this, b), c.data("sliderTabs", d), d; if (d.methods[b]) return d.methods[b].apply(this, Array.prototype.slice.call(arguments, 1)) }) } })(jQuery), $.extend($.easing, { def: "easeOutQuad", swing: function (a, b, c, d, e) { return $.easing[$.easing.def](a, b, c, d, e) }, easeInQuad: function (a, b, c, d, e) { return d * (b /= e) * b + c }, easeOutQuad: function (a, b, c, d, e) { return -d * (b /= e) * (b - 2) + c }, easeInOutQuad: function (a, b, c, d, e) { return (b /= e / 2) < 1 ? d / 2 * b * b + c : -d / 2 * (--b * (b - 2) - 1) + c }, easeInCubic: function (a, b, c, d, e) { return d * (b /= e) * b * b + c }, easeOutCubic: function (a, b, c, d, e) { return d * ((b = b / e - 1) * b * b + 1) + c }, easeInOutCubic: function (a, b, c, d, e) { return (b /= e / 2) < 1 ? d / 2 * b * b * b + c : d / 2 * ((b -= 2) * b * b + 2) + c }, easeInQuart: function (a, b, c, d, e) { return d * (b /= e) * b * b * b + c }, easeOutQuart: function (a, b, c, d, e) { return -d * ((b = b / e - 1) * b * b * b - 1) + c }, easeInOutQuart: function (a, b, c, d, e) { return (b /= e / 2) < 1 ? d / 2 * b * b * b * b + c : -d / 2 * ((b -= 2) * b * b * b - 2) + c }, easeInQuint: function (a, b, c, d, e) { return d * (b /= e) * b * b * b * b + c }, easeOutQuint: function (a, b, c, d, e) { return d * ((b = b / e - 1) * b * b * b * b + 1) + c }, easeInOutQuint: function (a, b, c, d, e) { return (b /= e / 2) < 1 ? d / 2 * b * b * b * b * b + c : d / 2 * ((b -= 2) * b * b * b * b + 2) + c }, easeInSine: function (a, b, c, d, e) { return -d * Math.cos(b / e * (Math.PI / 2)) + d + c }, easeOutSine: function (a, b, c, d, e) { return d * Math.sin(b / e * (Math.PI / 2)) + c }, easeInOutSine: function (a, b, c, d, e) { return -d / 2 * (Math.cos(Math.PI * b / e) - 1) + c }, easeInExpo: function (a, b, c, d, e) { return b == 0 ? c : d * Math.pow(2, 10 * (b / e - 1)) + c }, easeOutExpo: function (a, b, c, d, e) { return b == e ? c + d : d * (-Math.pow(2, -10 * b / e) + 1) + c }, easeInOutExpo: function (a, b, c, d, e) { return b == 0 ? c : b == e ? c + d : (b /= e / 2) < 1 ? d / 2 * Math.pow(2, 10 * (b - 1)) + c : d / 2 * (-Math.pow(2, -10 * --b) + 2) + c }, easeInCirc: function (a, b, c, d, e) { return -d * (Math.sqrt(1 - (b /= e) * b) - 1) + c }, easeOutCirc: function (a, b, c, d, e) { return d * Math.sqrt(1 - (b = b / e - 1) * b) + c }, easeInOutCirc: function (a, b, c, d, e) { return (b /= e / 2) < 1 ? -d / 2 * (Math.sqrt(1 - b * b) - 1) + c : d / 2 * (Math.sqrt(1 - (b -= 2) * b) + 1) + c }, easeInElastic: function (a, b, c, d, e) { var f = 1.70158, g = 0, h = d; if (b == 0) return c; if ((b /= e) == 1) return c + d; g || (g = e * .3); if (h < Math.abs(d)) { h = d; var f = g / 4 } else var f = g / (2 * Math.PI) * Math.asin(d / h); return -(h * Math.pow(2, 10 * (b -= 1)) * Math.sin((b * e - f) * 2 * Math.PI / g)) + c }, easeOutElastic: function (a, b, c, d, e) { var f = 1.70158, g = 0, h = d; if (b == 0) return c; if ((b /= e) == 1) return c + d; g || (g = e * .3); if (h < Math.abs(d)) { h = d; var f = g / 4 } else var f = g / (2 * Math.PI) * Math.asin(d / h); return h * Math.pow(2, -10 * b) * Math.sin((b * e - f) * 2 * Math.PI / g) + d + c }, easeInOutElastic: function (a, b, c, d, e) { var f = 1.70158, g = 0, h = d; if (b == 0) return c; if ((b /= e / 2) == 2) return c + d; g || (g = e * .3 * 1.5); if (h < Math.abs(d)) { h = d; var f = g / 4 } else var f = g / (2 * Math.PI) * Math.asin(d / h); return b < 1 ? -0.5 * h * Math.pow(2, 10 * (b -= 1)) * Math.sin((b * e - f) * 2 * Math.PI / g) + c : h * Math.pow(2, -10 * (b -= 1)) * Math.sin((b * e - f) * 2 * Math.PI / g) * .5 + d + c }, easeInBack: function (a, b, c, d, e, f) { return f == undefined && (f = 1.70158), d * (b /= e) * b * ((f + 1) * b - f) + c }, easeOutBack: function (a, b, c, d, e, f) { return f == undefined && (f = 1.70158), d * ((b = b / e - 1) * b * ((f + 1) * b + f) + 1) + c }, easeInOutBack: function (a, b, c, d, e, f) { return f == undefined && (f = 1.70158), (b /= e / 2) < 1 ? d / 2 * b * b * (((f *= 1.525) + 1) * b - f) + c : d / 2 * ((b -= 2) * b * (((f *= 1.525) + 1) * b + f) + 2) + c }, easeInBounce: function (a, b, c, d, e) { return d - $.easing.easeOutBounce(a, e - b, 0, d, e) + c }, easeOutBounce: function (a, b, c, d, e) { return (b /= e) < 1 / 2.75 ? d * 7.5625 * b * b + c : b < 2 / 2.75 ? d * (7.5625 * (b -= 1.5 / 2.75) * b + .75) + c : b < 2.5 / 2.75 ? d * (7.5625 * (b -= 2.25 / 2.75) * b + .9375) + c : d * (7.5625 * (b -= 2.625 / 2.75) * b + .984375) + c }, easeInOutBounce: function (a, b, c, d, e) { return b < e / 2 ? $.easing.easeInBounce(a, b * 2, 0, d, e) * .5 + c : $.easing.easeOutBounce(a, b * 2 - e, 0, d, e) * .5 + d * .5 + c } }), function (a) { function d(b) { var c = b || window.event, d = [].slice.call(arguments, 1), e = 0, f = !0, g = 0, h = 0; return b = a.event.fix(c), b.type = "mousewheel", c.wheelDelta && (e = c.wheelDelta / 120), c.detail && (e = -c.detail / 3), h = e, c.axis !== undefined && c.axis === c.HORIZONTAL_AXIS && (h = 0, g = -1 * e), c.wheelDeltaY !== undefined && (h = c.wheelDeltaY / 120), c.wheelDeltaX !== undefined && (g = -1 * c.wheelDeltaX / 120), d.unshift(b, e, g, h), (a.event.dispatch || a.event.handle).apply(this, d) } var b = ["DOMMouseScroll", "mousewheel"]; if (a.event.fixHooks) for (var c = b.length; c;) a.event.fixHooks[b[--c]] = a.event.mouseHooks; a.event.special.mousewheel = { setup: function () { if (this.addEventListener) for (var a = b.length; a;) this.addEventListener(b[--a], d, !1); else this.onmousewheel = d }, teardown: function () { if (this.removeEventListener) for (var a = b.length; a;) this.removeEventListener(b[--a], d, !1); else this.onmousewheel = null } }, a.fn.extend({ mousewheel: function (a) { return a ? this.unbind("mousewheel", a) : this.trigger("mousewheel") }, unmousewheel: function (a) { return this.unbind("mousewheel", a) } }) }(jQuery), function (a, b, c) { function l() { f = b[g](function () { d.each(function () { var b = a(this), c = b.width(), d = b.height(), e = a.data(this, i); (c !== e.w || d !== e.h) && b.trigger(h, [e.w = c, e.h = d]) }), l() }, e[j]) } var d = a([]), e = a.resize = a.extend(a.resize, {}), f, g = "setTimeout", h = "resize", i = h + "-special-event", j = "delay", k = "throttleWindow"; e[j] = 250, e[k] = !0, a.event.special[h] = { setup: function () { if (!e[k] && this[g]) return !1; var b = a(this); d = d.add(b), a.data(this, i, { w: b.width(), h: b.height() }), d.length === 1 && l() }, teardown: function () { if (!e[k] && this[g]) return !1; var b = a(this); d = d.not(b), b.removeData(i), d.length || clearTimeout(f) }, add: function (b) { function f(b, e, f) { var g = a(this), h = a.data(this, i); if (h) { h.w = e !== c ? e : g.width(), h.h = f !== c ? f : g.height(), d.apply(this, arguments) } } if (!e[k] && this[g]) return !1; var d; if (a.isFunction(b)) return d = b, f; d = b.handler, b.handler = f } } }(jQuery, this)
; 
var Fbits = Fbits || {};//Namespace Fbits
Fbits.Componentes = Fbits.Componentes || {};
Fbits.Componentes.Calculadora = {
    _mensagemErro: "",
    SetMensagemErro: function (mensagemErro) {
        this._mensagemErro = mensagemErro;
    },
    Load: function (destino, formula) {

        //variaveis de entrada de dados
        variaveis = formula.split("=")[0].match(/\[\b[^\]]*\]/igm);

        //criando os objs de resultado
        labelResultado = document.createElement("label");
        labelResultado.innerHTML = formula.split("=")[1];
        labelResultado.setAttribute("for", "resultado");
        inputResultado = document.createElement("input");
        inputResultado.setAttribute("disabled", "disabled");
        inputResultado.setAttribute("readonly", "readonly");
        spanErro = document.createElement("span");
        spanErro.setAttribute("class", "erro");

        //array que receberá todos os inputs para ref futura
        var inputs = new Array();

        for (var i in variaveis) {

            //cria cada input
            var input = document.createElement("input");
            input.setAttribute("id", "calculadora.in." + i);
            input.value = "0";
            //mantem os dados que serão usados na hora de calcular o resultado:
            //formula
            input.formula = formula.split("=")[0];
            //os outros inputs pra replace de valores
            input.inputs = inputs;
            //quem recebera o eval da formula
            input.inputResultado = inputResultado;
            //quando algum valor for digitado
            $(input).keyup(function () {
                var tempFormula = this.formula;
                //monta a formula pelos replaces
                for (var i in this.inputs) {
                    tempFormula = tempFormula.replace(this.inputs[i][1], this.inputs[i][2].value);
                }
                //tenta rodar
                try {
                    //ok
                    this.inputResultado.value = eval(tempFormula.replace("+", "*1+1*"));
                    spanErro.style.display = 'none';
                    if (isNaN(this.inputResultado.value)) {
                        this.inputResultado.value = '';
                        spanErro.innerHTML = Fbits.Componentes.Calculadora._mensagemErro;
                        spanErro.style.display = 'block';
                    }
                } catch (e) {
                    //dados invalidos gerando formula com erro
                    this.inputResultado.value = '';
                    spanErro.innerHTML = Fbits.Componentes.Calculadora._mensagemErro;
                    spanErro.style.display = 'block';
                }
            });

            //cria o label de cada input
            var label = document.createElement("label");
            label.setAttribute("for", "calculadora.in." + i);
            label.innerHTML = variaveis[i].split(",")[2].replace("]", "");

            //adiciona num array para ref futura em cada input 
            inputs.push(
                [
                    variaveis[i].split(",")[1], //ordenador
                    variaveis[i], //tag
                    input, //input ref
                    label //label ref
                ]);
        }

        if (destino instanceof jQuery)
            destino = destino[0];

        //limpa o obj destino
        while (destino.firstChild) {
            destino.removeChild(destino.firstChild);
        }

        //monta os nos ordenando pelo campo de ordem passado na tag (pos [0] de cada obj do array)
        for (var i in inputs.sort()) {
            destino.appendChild(inputs[i][3]);
            destino.appendChild(inputs[i][2]);
        }

        //e por fim adiciona o campo de resultado
        destino.appendChild(labelResultado);
        destino.appendChild(inputResultado);
        destino.appendChild(spanErro);
    }
}

; 
/*
 *  jquery-maskmoney - v3.0.2
 *  jQuery plugin to mask data entry in the input text in the form of money (currency)
 *  https://github.com/plentz/jquery-maskmoney
 *
 *  Made by Diego Plentz
 *  Under MIT License (https://raw.github.com/plentz/jquery-maskmoney/master/LICENSE)
 */
!function ($) { "use strict"; $.browser || ($.browser = {}, $.browser.mozilla = /mozilla/.test(navigator.userAgent.toLowerCase()) && !/webkit/.test(navigator.userAgent.toLowerCase()), $.browser.webkit = /webkit/.test(navigator.userAgent.toLowerCase()), $.browser.opera = /opera/.test(navigator.userAgent.toLowerCase()), $.browser.msie = /msie/.test(navigator.userAgent.toLowerCase())); var a = { destroy: function () { return $(this).unbind(".maskMoney"), $.browser.msie && (this.onpaste = null), this }, mask: function (a) { return this.each(function () { var b, c = $(this); return "number" == typeof a && (c.trigger("mask"), b = $(c.val().split(/\D/)).last()[0].length, a = a.toFixed(b), c.val(a)), c.trigger("mask") }) }, unmasked: function () { return this.map(function () { var a, b = $(this).val() || "0", c = -1 !== b.indexOf("-"); return $(b.split(/\D/).reverse()).each(function (b, c) { return c ? (a = c, !1) : void 0 }), b = b.replace(/\D/g, ""), b = b.replace(new RegExp(a + "$"), "." + a), c && (b = "-" + b), parseFloat(b) }) }, init: function (a) { return a = $.extend({ prefix: "", suffix: "", affixesStay: !0, thousands: ",", decimal: ".", precision: 2, allowZero: !1, allowNegative: !1 }, a), this.each(function () { function b() { var a, b, c, d, e, f = s.get(0), g = 0, h = 0; return "number" == typeof f.selectionStart && "number" == typeof f.selectionEnd ? (g = f.selectionStart, h = f.selectionEnd) : (b = document.selection.createRange(), b && b.parentElement() === f && (d = f.value.length, a = f.value.replace(/\r\n/g, "\n"), c = f.createTextRange(), c.moveToBookmark(b.getBookmark()), e = f.createTextRange(), e.collapse(!1), c.compareEndPoints("StartToEnd", e) > -1 ? g = h = d : (g = -c.moveStart("character", -d), g += a.slice(0, g).split("\n").length - 1, c.compareEndPoints("EndToEnd", e) > -1 ? h = d : (h = -c.moveEnd("character", -d), h += a.slice(0, h).split("\n").length - 1)))), { start: g, end: h } } function c() { var a = !(s.val().length >= s.attr("maxlength") && s.attr("maxlength") >= 0), c = b(), d = c.start, e = c.end, f = c.start !== c.end && s.val().substring(d, e).match(/\d/) ? !0 : !1, g = "0" === s.val().substring(0, 1); return a || f || g } function d(a) { s.each(function (b, c) { if (c.setSelectionRange) c.focus(), c.setSelectionRange(a, a); else if (c.createTextRange) { var d = c.createTextRange(); d.collapse(!0), d.moveEnd("character", a), d.moveStart("character", a), d.select() } }) } function e(b) { var c = ""; return b.indexOf("-") > -1 && (b = b.replace("-", ""), c = "-"), c + a.prefix + b + a.suffix } function f(b) { var c, d, f, g = b.indexOf("-") > -1 && a.allowNegative ? "-" : "", h = b.replace(/[^0-9]/g, ""), i = h.slice(0, h.length - a.precision); return i = i.replace(/^0*/g, ""), i = i.replace(/\B(?=(\d{3})+(?!\d))/g, a.thousands), "" === i && (i = "0"), c = g + i, a.precision > 0 && (d = h.slice(h.length - a.precision), f = new Array(a.precision + 1 - d.length).join(0), c += a.decimal + f + d), e(c) } function g(a) { var b, c = s.val().length; s.val(f(s.val())), b = s.val().length, a -= c - b, d(a) } function h() { var a = s.val(); s.val(f(a)) } function i() { var b = s.val(); return a.allowNegative ? "" !== b && "-" === b.charAt(0) ? b.replace("-", "") : "-" + b : b } function j(a) { a.preventDefault ? a.preventDefault() : a.returnValue = !1 } function k(a) { a = a || window.event; var d, e, f, h, k, l = a.which || a.charCode || a.keyCode; return void 0 === l ? !1 : 48 > l || l > 57 ? 45 === l ? (s.val(i()), !1) : 43 === l ? (s.val(s.val().replace("-", "")), !1) : 13 === l || 9 === l ? !0 : !$.browser.mozilla || 37 !== l && 39 !== l || 0 !== a.charCode ? (j(a), !0) : !0 : c() ? (j(a), d = String.fromCharCode(l), e = b(), f = e.start, h = e.end, k = s.val(), s.val(k.substring(0, f) + d + k.substring(h, k.length)), g(f + 1), !1) : !1 } function l(c) { c = c || window.event; var d, e, f, h, i, k = c.which || c.charCode || c.keyCode; return void 0 === k ? !1 : (d = b(), e = d.start, f = d.end, 8 === k || 46 === k || 63272 === k ? (j(c), h = s.val(), e === f && (8 === k ? "" === a.suffix ? e -= 1 : (i = h.split("").reverse().join("").search(/\d/), e = h.length - i - 1, f = e + 1) : f += 1), s.val(h.substring(0, e) + h.substring(f, h.length)), g(e), !1) : 9 === k ? !0 : !0) } function m() { r = s.val(), h(); var a, b = s.get(0); b.createTextRange && (a = b.createTextRange(), a.collapse(!1), a.select()) } function n() { setTimeout(function () { h() }, 0) } function o() { var b = parseFloat("0") / Math.pow(10, a.precision); return b.toFixed(a.precision).replace(new RegExp("\\.", "g"), a.decimal) } function p(b) { if ($.browser.msie && k(b), "" === s.val() || s.val() === e(o())) a.allowZero ? a.affixesStay ? s.val(e(o())) : s.val(o()) : s.val(""); else if (!a.affixesStay) { var c = s.val().replace(a.prefix, "").replace(a.suffix, ""); s.val(c) } s.val() !== r && s.change() } function q() { var a, b = s.get(0); b.setSelectionRange ? (a = s.val().length, b.setSelectionRange(a, a)) : s.val(s.val()) } var r, s = $(this); a = $.extend(a, s.data()), s.unbind(".maskMoney"), s.bind("keypress.maskMoney", k), s.bind("keydown.maskMoney", l), s.bind("blur.maskMoney", p), s.bind("focus.maskMoney", m), s.bind("click.maskMoney", q), s.bind("cut.maskMoney", n), s.bind("paste.maskMoney", n), s.bind("mask.maskMoney", h) }) } }; $.fn.maskMoney = function (b) { return a[b] ? a[b].apply(this, Array.prototype.slice.call(arguments, 1)) : "object" != typeof b && b ? ($.error("Method " + b + " does not exist on jQuery.maskMoney"), void 0) : a.init.apply(this, arguments) } }(window.jQuery || window.Zepto);
; 

var Fbits = Fbits || { __namespace: true };
Fbits.Produto = Fbits.Produto || { __namespace: true };
Fbits.Produto.AlertaValor = Fbits.Produto.AlertaValor || {
    urlAlertaValor: fbits.ecommerce.urlEcommerce + 'AlertaValores/CriarAlerta'
};

/**
* Para identificar as classes no visual studio
*/
Fbits.Produto.AlertaValor.__class = true;

$('#btnAlertaValores').click(function () {
    $.fancybox({
        'content': $("#divAlertaValores").html(),
        'width': 700,
        'height': 340,
        'autoSize': false,
        onComplete: function () {
            $('#fancybox-content input#alertPrecoDesejado').maskMoney({ thousands: '.', decimal: ',', affixesStay: true });
            $('#fancybox-content #btnAlertar').click(function () {
                var precoAtual = $('#fancybox-content input#alertPrecoAtual').val();
                var precoDesejado = $('#fancybox-content input#alertPrecoDesejado').val();
                var email = $('#fancybox-content input#alertEmail').val();
                var produtoVarianteId = $('#fancybox-content input#hdnprodutovariantealert').val();
                precoAtual = precoAtual.replace('.','').replace(',','.');
                precoDesejado = precoDesejado.replace('.', '').replace(',', '.');
                EnviarAlerta(this, produtoVarianteId, email, precoDesejado, precoAtual);
            });
            //Aceita a tecla enter como OK 
            $('#fancybox-content input#alertEmail').keyup(function (event) {
                if (event.keyCode == 13) {
                    $('#fancybox-content #btnAlertar').click();
                }
            });
        }
    });
});

$.validator.addMethod("notEqual", function (value, element, param) {
    return this.optional(element) || value != param;
});

function verificaEmail(email) {
    return (/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test(email));
};

function verificaAcentos(email) {
    var regex = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    return regex.test(email);
};

/**
*  Envia dados para cadastro de alerta valores.
*/
function EnviarAlerta(element, produto, email, precoDesejado, precoAtual) {
    email = email.replace(/ /g, '');
    if (ValidarDadosAlerta(produto, email, precoDesejado, precoAtual)) {
        $.ajax({
            type: 'POST',
            url: Fbits.Produto.AlertaValor.urlAlertaValor,
            data: { "produtoVarianteId": produto, "nome": null, "email": email, "precoDesejado": precoDesejado, "precoAtual" : precoAtual },
            success: function (dados) {
                if (dados.valido) {
                    $.fancybox("<div>Alerta de Valores</div><div>Seu cadastro foi efetuado com sucesso!</div>");
                }
                else {
                    $('#fancybox-content #divErroAlertaModal').after('<p htmlfor="divErroAlertaModal" id="errorAlerta" generated="true" class="error" style="">' + dados.msgErro + '</p>');
                }
            }
        });
    }
};


function ValidarDadosAlerta(produto, email, precoDesejado, precoAtual) {
    var retorno = true;

    if (email == '') {
        $('*#errorAlerta').remove();
        $('#fancybox-content #divErroAlertaModal').after('<p htmlfor="divErroAlertaModal" id="errorAlerta" generated="true" class="error" style="">Por favor, preencha os campos obrigatórios.</p>');
        $('#fancybox-content input#alertEmail').focus();
        retorno = false;
    } else if (email == 'Insira seu E-mail') {
        $('*#errorAlerta').remove();
        $('#fancybox-content #divErroAlertaModal').after('<p htmlfor="divErroAlertaModal" id="errorAlerta" generated="true" class="error" style="">Por favor, preencha os campos obrigatórios.</p>');
        $('#fancybox-content input#alertEmail').focus();
        retorno = false;
    } else if (email == 'seuemail@exemplo.com') {
        $('*#errorAlerta').remove();
        $('#fancybox-content #divErroAlertaModal').after('<p htmlfor="divErroAlertaModal" id="errorAlerta" generated="true" class="error" style="">Por favor, preencha os campos obrigatórios.</p>');
        $('#fancybox-content input#alertEmail').focus();
        retorno = false;
    } else if (!verificaEmail(email) || !verificaAcentos(email)) {
        $('*#errorAlerta').remove();
        $('#fancybox-content #divErroAlertaModal').after('<p htmlfor="divErroAlertaModal" id="errorAlerta" generated="true" class="error" style="">O campo E-mail deve conter um e-mail válido.</p>');
        $('#fancybox-content input#alertEmail').focus();
        retorno = false;
    } else if (precoDesejado == '' || precoDesejado == undefined) {
        $('*#errorAlerta').remove();
        $('#fancybox-content #divErroAlertaModal').after('<p htmlfor="divErroAlertaModal" id="errorAlerta" generated="true" class="error" style="">Por favor, preencha os campos obrigatórios.</p>');
        $('#fancybox-content input#alertPrecoDesejado').focus();
        retorno = false;
    } else if (!isNumber(precoDesejado)) {
        $('*#errorAlerta').remove();
        $('#fancybox-content #divErroAlertaModal').after('<p htmlfor="divErroAlertaModal" id="errorAlerta" generated="true" class="error" style="">O preço desejado deve conter um valor válido.</p>');
        $('#fancybox-content input#alertPrecoDesejado').focus();
        retorno = false;
    } else if (precoDesejado >= precoAtual) {
        $('*#errorAlerta').remove();
        $('#fancybox-content #divErroAlertaModal').after('<p htmlfor="divErroAlertaModal" id="errorAlerta" generated="true" class="error" style="">O preço desejado não pode ser maior ou igual ao preço atual.</p>');
        $('#fancybox-content input#alertPrecoDesejado').focus();
        retorno = false;
    }
    else {
        $('*#errorAlerta').remove();
        retorno = true;
    }

    return retorno;
}

function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}
