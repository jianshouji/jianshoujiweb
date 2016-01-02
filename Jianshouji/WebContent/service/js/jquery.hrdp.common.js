(function($){

	function create(){
		var loadding=window.top.$("#loading");
		if(loadding.size()==0)
			loadding = $("<div id=\"loading\" class=\"loading\" style='z-index:999999' />").appendTo(window.top.$("#index-body")).hide();
		return loadding;
	}
	
	$.Loading = $.Loading || {};
	$.Loading.show=function(text){
		var loading = create();
		
		if(this.text){
			loading.html(this.text);	
		}else{
			if(text)
				loading.html(text);			
		}
		
		$("<div id=\"msg_mask\" style=\"height: 100%; width: 100%; position: fixed; left: 0pt; top: 0pt; z-index: 29999; opacity: 0.4;\" class=\"window-mask\"></div>").appendTo(window.top.$("#index-body"));
		loading.show();		
	};

	$.Loading.hide=function(){
		create().hide();		
		window.top.$("#msg_mask").remove();
	};

	
})(jQuery);

/**
 * @author 孙宇
 * 
 * @requires jQuery,EasyUI
 * 
 * panel关闭时回收内存，主要用于layout使用iframe嵌入网页时的内存泄漏问题
 */
$.fn.panel.defaults.onBeforeDestroy = function() {
	var frame = $('iframe', this);
	try {
		if (frame.length > 0) {
			for ( var i = 0; i < frame.length; i++) {
				frame[i].contentWindow.document.write('');
				frame[i].contentWindow.close();
			}
			frame.remove();
			if ($.browser.msie) {
				CollectGarbage();
			}
		}
	} catch (e) {
	}
};

/**
 * 扩展Array对象，加入contains方法，判断数组中是否包含指定对象
 */
Array.prototype.contains=function(element){
	for(var e in this)
		if(e==element) return true;
	return false;
};

String.prototype.startWith=function(str){
	var reg=new RegExp("^"+str);
	return reg.test(this);
};
String.prototype.endWith=function(str){
	var reg=new RegExp(str+"$");
	return reg.test(this);
};
String.prototype.isPictureUrl=function(){
	if(!this) return false;
	var s = this.toLowerCase();
	return s.endWith(".jpg")||s.endWith(".png")||s.endWith(".bmp")||s.endWith(".gif");
}
/**
 * 设置不显示列表分页中的“页面尺寸”
 */
$.fn.pagination.defaults.showPageList = false;

/**
 * 设置对话框默认属性
 */
$.fn.window.defaults = $.extend({}, $.fn.panel.defaults, {
	zIndex: 9000,
	draggable: true,
	resizable: true,
	shadow: true,
	modal: true,
	inline: false,	// true to stay inside its parent, false to go on top of all elements
	//iconCls:'icon-tip',
	collapsible: false,
	minimizable: false,
	maximizable: false,
	closable: true,
	closed: false
});
/**
 * 设置linkbutton默认属性
 */
$.fn.linkbutton.defaults = $.extend({
		disabled: false,
		toggle: false,
		selected: false,
		plain: false,
		iconCls: 'icon-save',
		iconAlign: 'left'
	});
/**
 * 此代码初始化<input type='file'/>，为其加上一个'清空'按钮
 */
var HRTek=HRTek||{};
HRTek.InputFile = {
	init:function(){
		$("input[type='file'][processed!='true']").attr("processed","true").after("&nbsp;<input type='button' value='" + msg.fileinputbtntext + "' style='height:19px'/>").next("input[type='button']").click(function(){
			var ie = (navigator.appVersion.indexOf("MSIE") != -1);//IE 
			if (ie) {
				var file = $(this).prev("input");
				var file2 = file.clone(false);
				file2.onchange = file.onchange;
				file.before(file2).remove();
			} else
				$(this).prev("input").attr("value", "");
		});
	}
};

Date.prototype.Format=function(fmt){
	var o = {
			"M+" : this.getMonth() + 1,
			"d+" : this.getDate(),
			"h+" : this.getHours(),
			"m+" : this.getMinutes(),
			"s+" : this.getSeconds(),
			"S"  : this.getMilliseconds()
	};
	if(/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear()+"")/*.substr(4, RegExp.$1.length)*/);
	for(var k in o)
		if(new RegExp("(" + k + ")").test(fmt))
			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1?(o[k]):(("00"+o[k]).substr(("" + o[k]).length))));
	return fmt;
};

//获取当前时间
function gettimeline(){
	var d = new Date();
	return d.getTime();
}

function createwindow(winid){
	var winhtml = "<div id='" + winid + "' style=''/>";
	$(winhtml).appendTo(window.top.$("#index-body"));
	var $win = window.top.$("#"+winid);
	$win.window({
		
		onClose:function(){
			var $delwin = window.top.$("div.window:has('#" + winid + "')");//取得窗口包装div
			$delwin.next("div.window-shadow").next("div.window-mask").remove();//删除mask
			$delwin.next("div.window-shadow").remove();//删除shadow
			$delwin.remove();
		}
	});
	return $win;
}
//用于单表
function createparams1(keys, row){
	if(!keys) return "";
	var result = "";
	for(var i=0;i<keys.length;i++){
		if(""!=result) result += "&";
		var value = keys[i].value;
		if(row && value.length>6 && value.substring(0,6).toUpperCase()=="CURROW"){
			value = row[value.substring(7)];
		}
		result += keys[i].key + "=" + encodeURI(encodeURI(value));
	}
	return "?" + result;
}
/***
 * 建立独立窗体
 * @param guid, table_common中的guid或是table_def中的guid
 * @param idtype, 不传值(指明guid为来自table_common表)/tabledefid(指明guid来自table_def表)
 * @param action, INSERT/UPDATE
 * @param data, 初始数据，当action=UPDATE时，data应形如data.guid=xxxxxxxxxxxxxxxxxxxxx
 * @param callback, 回调函数，应是完整javascript方法，如refreshGrid('aaaa','bb',td)　不需要加入;
 */
function executeSingleForm(guid, idtype, action, data, callback){
	var url=path + "/admin/data/getForm.do?guid="+guid+"&action="+action+"&callback="+callback;
	if(data) url+="&"+data;
	if(idtype) url += "&idtype=" + idtype;
	$.getScript(url,function(){showform();});
}

(function($){
	
	function showhelp(jq, opts){
		var $win =createwindow('sys_help');
		$win.window({
			height:opts.ext.hlp.height,
			width:opts.ext.hlp.width,
			top:($(window).height()-opts.ext.hlp.height)*0.5+40,
			left:($(window).width()-opts.ext.hlp.width)*0.5,
			close:false,
			title:msg.helpbtntext,
			href: opts.ext.hlp.url,
			onLoad:function(){
				$win.find("#close_btn").click(function(){
					$win.window('close');
				});
			}
		});
	}
	
	function executeInsert(jq, opts){
		var $win =createwindow(opts.ext.winid);
		var keys = opts.ext.ins.params?opts.ext.ins.params.slice():null;
		if(!keys){ keys = new Array();keys.push({key:'action',value:'insert'});}
		if(keys[keys.length-1].key!='action')
			keys.push({key:'action',value:'insert'});
		var rowdata = jq.attr('rowdata');
		if(rowdata){
			var parms = jq.attr('parms');
			keys.push({key:'initData.'+rowdata, value:parms});
		}
		var insurl = opts.ext.ins.url + createparams(keys);
		opts.ext.ins.height=(opts.ext.ins.height>($(window).height()-80)?$(window).height()-80:opts.ext.ins.height);
		opts.ext.ins.width=(opts.ext.ins.width>($(window).width()-80)?$(window).width()-80:opts.ext.ins.width);
		$win.window({
			height:opts.ext.ins.height,
			width:opts.ext.ins.width,
			top:($(window).height()-opts.ext.ins.height)*0.5+40,
			left:($(window).width()-opts.ext.ins.width)*0.5,
			close:false,
			title:opts.ext.ins.title,
			href: insurl,
			onLoad:function(){
				$win.find("#close_btn").click(function(){
					$win.window('close');
				});
				$win.find("#reset_btn").click(function(){
					$win.find(opts.ext.formid).form("reset");
				});
				$win.find(".submit_btn").click(function(){
					var btn = this;
					if($win.find(opts.ext.formid).form("validate")){
						var opt = {
								url : opts.ext.ins.saveurl,
								type : "POST",
								dataType : 'json',
								success : function(result) {
									if(result.result=='0'){
										if($(btn).attr("id")=="submit_close_btn"){
											$win.html("");
											$win.window('close');
										}else{
											$win.window('refresh', insurl);
										}
										if(opts.gridtype=='datagrid'){
											jq.datagrid('reload');
										}else{
											jq.treegrid('reload');
										}
									}else{
										window.top.$.messager.alert(msg.infotitle,result.msg);
									}
								},
								error : function(info) {
									window.top.$.messager.alert(msg.infotitle,info.responseText);
								}
						};
						$win.find(opts.ext.formid).ajaxSubmit(opt);	
					}
				});
			}
		});
	}
	
	function executeInsertRoot(jq, opts){
		var $win =createwindow(opts.ext.winid);
		var keys = opts.ext.ins.params?opts.ext.ins.params.slice():null;
		if(!keys){ keys = new Array();keys.push({key:'action',value:'insert'});}
		if(keys[keys.length-1].key!='action')
			keys.push({key:'action',value:'insert'});
		keys.push({key:'initData.'+opts.parentField, value:'0'});
		var rowdata = jq.attr('rowdata');
		if(rowdata){
			var parms = jq.attr('parms');
			keys.push({key:'initData.'+rowdata, value:parms});
		}
		var insurl = opts.ext.ins.url + createparams(keys);
		opts.ext.ins.height=(opts.ext.ins.height>($(window).height()-80)?$(window).height()-80:opts.ext.ins.height);
		opts.ext.ins.width=(opts.ext.ins.width>($(window).width()-80)?$(window).width()-80:opts.ext.ins.width);
		$win.window({
			height:opts.ext.ins.height,
			width:opts.ext.ins.width,
			top:($(window).height()-opts.ext.ins.height)*0.5+40,
			left:($(window).width()-opts.ext.ins.width)*0.5,
			close:false,
			title:opts.ext.ins.title,
			href: insurl,
			onLoad:function(){
				$win.find("#close_btn").click(function(){
					$win.window('close');
				});
				$win.find("#reset_btn").click(function(){
					$win.find(opts.ext.formid).form("reset");
				});
				$win.find(".submit_btn").click(function(){
					var btn = this;
					if($win.find(opts.ext.formid).form("validate")){
						var opt = {
								url : opts.ext.ins.saveurl,
								type : "POST",
								dataType : 'json',
								success : function(result) {
									if(result.result=='0'){
										if($(btn).attr("id")=="submit_close_btn"){
											$win.html("");
											$win.window('close');
										}else{
											$win.window('refresh', insurl);
										}
										jq.treegrid('reload');
									}else{
										window.top.$.messager.alert(msg.infotitle,result.msg);
									}
								},
								error : function(info) {
									window.top.$.messager.alert(msg.infotitle,info.responseText);
								}
						};
						$win.find(opts.ext.formid).ajaxSubmit(opt);		
					}
				});
			}
		});
	}
	
	function executeInsertChild(jq, opts){
		var row = jq.treegrid('getSelected');
		if (row){
			var $win =createwindow(opts.ext.winid);
			var keys = opts.ext.ins.params?opts.ext.ins.params.slice():null;
			if(!keys){ keys = new Array();keys.push({key:'action',value:'insert'});}
			if(keys[keys.length-1].key!='action')
				keys.push({key:'action',value:'insert'});
			keys.push({key:'initData.'+opts.parentField, value:'curRow.'+opts.idField});
			var rowdata = jq.attr('rowdata');
			if(rowdata){
				var parms = jq.attr('parms');
				keys.push({key:'initData.'+rowdata, value:parms});
			}
			var insurl = opts.ext.ins.url + createparams(keys, row);
			opts.ext.ins.height=(opts.ext.ins.height>($(window).height()-80)?$(window).height()-80:opts.ext.ins.height);
			opts.ext.ins.width=(opts.ext.ins.width>($(window).width()-80)?$(window).width()-80:opts.ext.ins.width);
			$win.window({
				height:opts.ext.ins.height,
				width:opts.ext.ins.width,
				top:($(window).height()-opts.ext.ins.height)*0.5+40,
				left:($(window).width()-opts.ext.ins.width)*0.5,
				close:false,
				title:opts.ext.ins.title,
				href: insurl,
				onLoad:function(){
					$win.find("#close_btn").click(function(){
						$win.window('close');
					});
					$win.find("#reset_btn").click(function(){
						$win.find(opts.ext.formid).form("reset");
					});
					$win.find(".submit_btn").click(function(){
						var btn = this;
						if($win.find(opts.ext.formid).form("validate")){
							var opt = {
									url : opts.ext.ins.saveurl,
									type : "POST",
									//dataType : 'json',
									success : function(data) {
										var result = eval('(' + data + ')');
										if(result.result=='0'){
											if($(btn).attr("id")=="submit_close_btn"){
												$win.html("");
												$win.window('close');
											}else{
												$win.window('refresh', insurl);
											}
											jq.treegrid('reload');
										}else{
											window.top.$.messager.alert(msg.infotitle,result.msg);
										}
									},
									error : function(info) {
										window.top.$.messager.alert(msg.infotitle,info.responseText);
									}
							};
							$win.find(opts.ext.formid).ajaxSubmit(opt);		
						}
					});
				}
			});
		}else{
			$.messager.show({
				title: msg.infotitle,
				msg: msg.selectrow
			});
		}
	}
	
	function executeUpdate(jq, opts){
		var row = jq.datagrid('getSelected');
		if (row){
			var $win =createwindow(opts.ext.winid);
			
			var keys = opts.ext.udp.params?opts.ext.udp.params.slice():null;
			if(!keys){
				keys=[{key:'guid',value:'currow.guid'}];
			}
			var rowdata = jq.attr('rowdata');
			if(rowdata){
				var parms = jq.attr('parms');
				keys.push({key:'initData.'+rowdata, value:parms});
			}
			var udpurl = opts.ext.udp.url + createparams(keys, row);
			opts.ext.udp.height=(opts.ext.udp.height>($(window).height()-80)?$(window).height()-80:opts.ext.udp.height);
			opts.ext.udp.width=(opts.ext.udp.width>($(window).width()-80)?$(window).width()-80:opts.ext.udp.width);
			$win.window({
				height:opts.ext.udp.height,
				width:opts.ext.udp.width,
				top:($(window).height()-opts.ext.udp.height)*0.5+40,
				left:($(window).width()-opts.ext.udp.width)*0.5,
				close:false,
				title:opts.ext.udp.title,
				href: udpurl,
				onLoad:function(){
					$win.find("#close_btn").click(function(){
						$win.window('close');
					});
					$win.find("#submit_close_btn").click(function(){
						if($win.find(opts.ext.formid).form("validate")){
							var opt = {
									url : opts.ext.udp.saveurl,
									type : "POST",
									dataType : 'json',
									success : function(result) {
										if(result.result=='0'){																																												
											$win.html("");
											$win.window('close');
											if(opts.gridtype=='datagrid'){
												jq.datagrid('reload');
											}else{
												jq.treegrid('reload');
											}
										}else{
											window.top.$.messager.alert(msg.infotitle,result.msg);
										}
									},
									error : function(info) {
										window.top.$.messager.alert(msg.infotitle,info.responseText);
									}
							};
							$win.find(opts.ext.formid).ajaxSubmit(opt);	
						}
					});
				}
			});
		}else{
			$.messager.show({
				title: msg.infotitle,
				msg: msg.selectrow
			});
		}
	}
	
	function executeDelete(jq, opts){
		var row = jq.datagrid('getSelected');
		if (row){
			window.top.$.messager.confirm(msg.warningtitle, msg.deletewarning, function(r){
				if (r){
					var keys = opts.ext.del.params?opts.ext.del.params.slice():null;
					if(!keys){
						keys=[{key:'guid',value:'currow.guid'}];
					}
					var delurl = opts.ext.del.url + createparams(keys, row);
					$.ajax({
						url:delurl,
						success:function(data){
							var info = eval('(' + data + ')');  
							if(info.result=='0'){
								if(opts.gridtype=='datagrid'){
									jq.datagrid('reload');
								}else{
									jq.treegrid('reload');
								}
							}else{
								window.top.$.messager.alert(msg.infotitle,info.msg);
							}
						},
						error:function(info){
							window.top.$.messager.alert(msg.infotitle,info.responseText);
						}
					});		
				}
			});
		}else{
			window.top.$.messager.show({
				title: msg.infotitle,
				msg: msg.selectrow
			});
		}
	}
	//显示图标
	function showChart(jq, opts){
		var $win = createwindow(opts.ext.winid);
		$win.window({
			height:opts.ext.chart.height,
			width:opts.ext.chart.width,
			top:($(window).height()-opts.ext.chart.height)*0.5+40,
			left:($(window).width()-opts.ext.chart.width)*0.5,
			close:false,
			title:opts.ext.chart.title,
			href: opts.ext.chart.url,
			onLoad:function(){
				$win.find("#close_btn").click(function(){
					$win.window('close');
				});
				$win.find("#submit_close_btn").click(function(){
					
				});
			}
		});
	}
	
	function exportDataXml(jq, opts){
		var flag = true;
		var flagrowdata = true;
		var row = jq.datagrid('getData');
		var parms = "";
		if(row.rows.length>0){
			var keys = opts.ext.expxml.params;
			var rowdata = jq.attr('rowdata');
			if(rowdata!=undefined){
				parms = jq.attr('parms');
				for(var i=0;i<keys.length;i++){
					var key = keys[i].key;
					if(key && key=="rowdata"){
						keys[i].value = rowdata;
						flagrowdata =false;
					}
					if(key && key=="parms"){
						keys[i].value = parms;
						flagrowdata =false;
					}
				}
			}else{
				flagrowdata =false;
			}
			var tid = jq.attr("id");
			if ($("#sb"+ tid).size()>0) {
				var searchname = $("#sb"+ tid).searchbox('getName');
				var searchvalue = $("#sb"+ tid).searchbox('getValue');
				
				for(var i=0;i<keys.length;i++){
					var key = keys[i].key;
					if(key && key.length>5 && key.substring(0,5)=="data."){
						keys[i].key = searchname;
						keys[i].value = searchvalue;
						flag = false;
					}
				}
				if(flag){
					keys.push({key:searchname,value:searchvalue});
				}
			}
			if(flagrowdata){
				keys.push({key:'rowdata', value:rowdata});
				keys.push({key:'parms', value:parms});
			}
			var exporturl = opts.ext.expxml.url + createparams(keys);
			window.location = exporturl;
		}else{
			window.top.$.messager.alert(msg.infotitle,"暂无可导出数据");
		}
	}
	
	function exportDataXls(jq, opts){
		var flag = true;
		var flagrowdata = true;
		var row = jq.datagrid('getData');
		var parms = "";
		if(row.rows.length>0){
			var keys = opts.ext.expxls.params;
			var rowdata = jq.attr('rowdata');
			if(rowdata!=undefined){
				parms = jq.attr('parms');
				for(var i=0;i<keys.length;i++){
					var key = keys[i].key;
					if(key && key=="rowdata"){
						keys[i].value = rowdata;
						flagrowdata =false;
					}
					if(key && key=="parms"){
						keys[i].value = parms;
						flagrowdata =false;
					}
				}
			}else{
				flagrowdata =false;
			}
			var tid = jq.attr("id");
			if ($("#sb"+ tid).size()>0) {
				var searchname = $("#sb"+ tid).searchbox('getName');
				var searchvalue = $("#sb"+ tid).searchbox('getValue');
				
				for(var i=0;i<keys.length;i++){
					var key = keys[i].key;
					if(key && key.length>5 && key.substring(0,5)=="data."){
						keys[i].key = searchname;
						keys[i].value = searchvalue;
						flag = false;
					}
				}
				if(flag){
					keys.push({key:searchname,value:searchvalue});
				}
			}
			if(flagrowdata){
				keys.push({key:'rowdata', value:rowdata});
				keys.push({key:'parms', value:parms});
			}
			var exporturl = opts.ext.expxls.url + createparams(keys);
			window.location = exporturl;
		}else{
			window.top.$.messager.alert(msg.infotitle,"暂无可导出数据");
		}
	}
	
	function executeImport(jq, opts){
		var $win =createwindow(opts.ext.winid);
		var keys = opts.ext.ins.params?opts.ext.ins.params.slice():null;
		if(!keys){ keys = new Array();keys.push({key:'action',value:'import'});}
		if(keys[keys.length-1].key!='action')
			keys.push({key:'action',value:'import'});
		var rowdata = jq.attr('rowdata');
		if(rowdata){
			var parms = jq.attr('parms');
			keys.push({key:'initData.'+rowdata, value:parms});
		}
		var impurl = opts.ext.impxls.url + createparams(keys);
		opts.ext.impxls.height=100;
		opts.ext.impxls.width=300;
		$win.window({
			height:opts.ext.impxls.height,
			width:opts.ext.impxls.width,
			top:($(window).height()-opts.ext.impxls.height)*0.5+40,
			left:($(window).width()-opts.ext.impxls.width)*0.5,
			close:false,
			title:'导入数据',
			href: impurl,
			onLoad:function(){
				//$.parser.parse($win.find("importExcelForm"));
				$win.find("#close_btn").click(function(){
					$win.window('close');
				});
				$win.find(".submit_btn").click(function(){
					$win.find("#importExcelForm").ajaxSubmit({
						url : path + "/admin/data/importData.do",
						dataType : 'json',
						contentType : "application/json;charset=utf-8",
						method : "post",
						success : function(result) {
							if(result.result=='0'){
								$win.html("");
								$win.window('close');
								jq.datagrid('reload');
							}else{
								window.top.$.messager.alert(msg.infotitle,result.msg);
							}
						},
						erron:function(data){
							alert(data);
						}
					});	
				});
			}
		});
	}
	
	function clearSelection(){
		if(document.selection && document.selection.empty){
			document.selection.empty();
		}else if(window.getSelection){
			var sel = window.getSelection();
			sel.removeAllRanges();
		}
	}
	
	$.fn.hrdatagrid=function(options, param){
		var self = this;
		var toolbararr;
		if(options.toolbar){toolbararr = options.toolbar;}
		else{toolbararr = new Array();}
		if(options.enableInsert)
			toolbararr.push({iconCls:'icon-add',text:msg.insertbtntext,handler:function(){executeInsert($(self), options);}});
		if(options.enableUpdate)
			toolbararr.push({iconCls:'icon-edit',text:msg.updatebtntext,handler:function(){executeUpdate($(self), options);}});
		if(options.enableDelete)
			toolbararr.push({iconCls:'icon-remove',text:msg.deletebtntext,handler:function(){executeDelete($(self), options);}});
		//toolbararr.push("-");
		if(options.enableExportXml)
			toolbararr.push({iconCls:'icon-exportxml-table',text:msg.exportxmlbtntext,handler:function(){exportDataXml($(self), options);}});
		if(options.enableExportXls)
			toolbararr.push({iconCls:'icon-exportxls-table',text:msg.exportxlsbtntext,handler:function(){exportDataXls($(self), options);}});
		if(options.enableImportXls)
			toolbararr.push({iconCls:'icon-importxls-table',text:msg.importxlsbtntext,handler:function(){executeImport($(self), options);}});
		if(options.enableChart)
			toolbararr.push({iconCls:'icon-chart',text:'显示图表',handler:function(){showChart($(self), options);}});
		//toolbararr.push("-");
	    //toolbararr.push({iconCls:'icon-help',text:msg.helpbtntext,handler:function(){showhelp($(self),options);}});
	    /////////////////////////////////////////
	   
		if(options.ext.extbtn){
			for(var i=0;i<options.ext.extbtn.length;i++){
				toolbararr.push("-");
				toolbararr.push(options.ext.extbtn[i]);
			}
		}
		
		///////////////////////////////////
		options = $.extend({
			gridtype:'datagrid',
			fit:true,
			border:false,
			singleSelect:true,
			pagination:true,
			pageSize:20,
			rownumbers:true,
			onDblClickRow:function(rowIndex, rowData){
				if(options.enableUpdate){
					clearSelection();//双击不选中文本
					executeUpdate($(self), options);
				}
			},
			toolbar:toolbararr
		}, options);
		return $(this).datagrid(options);
	};
	
	$.fn.hrtreegrid=function(options, param){
		var self = this;
		var toolbararr = new Array();
		if(options.enableInsert){
			toolbararr.push({iconCls:'icon-add',text:msg.insertrootbtntext,handler:function(){executeInsertRoot($(self), options);}});
			toolbararr.push({iconCls:'icon-child',text:msg.insertchildbtntext,handler:function(){executeInsertChild($(self), options);}});
		}
		if(options.enableUpdate)
			toolbararr.push({iconCls:'icon-edit',text:msg.updatebtntext,handler:function(){executeUpdate($(self), options);}});
		if(options.enableDelete)
			toolbararr.push({iconCls:'icon-remove',text:msg.deletebtntext,handler:function(){executeDelete($(self), options);}});
		//toolbararr.push("-");
		//toolbararr.push({iconCls:'icon-help',text:msg.helpbtntext,handler:function(){showhelp($(self),options);}});
		options = $.extend(options , {
			gridtype:'treegrid',
			fit:true,
			border:false,
			singleSelect:true,
			rownumbers:true,
			pagination:false,
			onDblClickRow:function(rowIndex, rowData){
				if(options.enableUpdate){
					clearSelection();//双击不选中文本
					executeUpdate($(self), options);
				}
			},
			onSelect:function(rowIndex, rowData){
				var $table = $(self);
		    	var row = $table.datagrid('getSelected');
		    	if (row){
		    		var keys = options.ext.detail.params;
					if(!keys){
						keys=[{key:'guid',value:'currow.guid'}];
					}
					var detailurl = options.ext.detail.url + createparams(keys, row);
		    		$($table.selector+"_detail").propertygrid({
					    url: detailurl
				    });
		    	}
			},
			toolbar:toolbararr
		});
		return $(this).treegrid(options);
	};
	
	$.fn.hrwindow = function(opts){
		opts = $.extend({
			top:($(window).height()-opts.height)*0.5,
			left:($(window).width()-opts.width)*0.5
		}, opts);
		return $(this).window(opts);
	};
	
	$.extend($.fn.hrdatagrid.options,$.fn.datagrid.options,{
		enableInsert:true,
		enableUpdate:true,
		enableDelete:true,
		enableChart:false		//是否显示图表		
	});
	
	function createparams(keys, row){
		if(!keys) return "";
		var result = "";
		for(var i=0;i<keys.length;i++){
			if(""!=result) result += "&";
			var value = keys[i].value;
			if(row && value.length>6 && value.substring(0,6).toUpperCase()=="CURROW"){
				value = row[value.substring(7)];
			}
			result += keys[i].key + "=" + encodeURI(encodeURI(value));
		}
		return "?" + result;
	}

})(jQuery);




 


