<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head >
 	<jsp:include page="/service/common/header.jsp"></jsp:include>
	<title>管理页面</title>
 </head>
 <script type="text/javascript">
 $(function(){
	 $('#brandtree').datagrid({    
//		    url:'${ctx }/service/tree_data2.json'  ,
			url:'${ctx }/admin/service/brandTree',
			singleSelect:true,
			fit:true,
			toolbar: [{
    			iconCls: 'icon-add',
    			handler: function(){addbrand();}
    		},'-',/* {
    			iconCls: 'icon-edit',
    			handler: function(){editbrand();}
    		},'-', */{
    			iconCls: 'icon-remove',
    			handler: function(){removebrand();}
    		}],
    	    columns:[[  {field:'brandname',title:'品牌',width:60,align:'left'},
		    	        {field:'telphoneguid',title:'手机型号',width:130,align:'left'}
		    	    ]] ,
		    onSelect:function(){
		    	var row=$('#brandtree').datagrid('getSelected');
//		    	alert(row.telphoneguid);
		    	$('#telphone').datagrid({
		    		fit:true,
		    		pagination:true,
		    		singleSelect:true,
		    		pageSize:10,
		    		toolbar: [{
		    			iconCls: 'icon-add',
		    			handler: function(){addtelphone();}
		    		},'-',{
		    			iconCls: 'icon-edit',
		    			handler: function(){edittelphone();}
		    		},'-',{
		    			iconCls: 'icon-remove',
		    			handler: function(){removetelphone();}
		    		}],
		    	    url:'${ctx }/admin/service/telphoneList?brandguid='+row.telphoneguid,    
		    	    columns:[[    
						{field:'number',title:'手机编号',width:100,align:'left',hidden:true},
		    	        {field:'telphone_name',title:'手机名',width:100,align:'left'},    
		    	        {field:'price',title:'价格',width:100,align:'left'},    
		    	        {field:'cpuname',title:'处理器',width:100,align:'left'} ,
		    	        {field:'screenname',title:'屏幕',width:150,align:'left'},  
		    	        {field:'beforepixel',title:'前置摄像头',width:100,align:'left'},  
		    	        {field:'cameranme',title:'后置摄像头',width:100,align:'left'},
		    	        {field:'ramvol',title:'RAM大小（单位G）',width:150,align:'left'},
		    	        {field:'romvol',title:'ROM大小（单位G）',width:150,align:'left'},
		    	        {field:'opration',title:'操作系统',width:100,align:'left'},
		    	        {field:'battery',title:'电池容量',width:100,align:'left'},
		    	        {field:'batterytype',title:'电池类型',width:100,align:'left'},
		    	        {field:'fingerprint',title:'是否支持指纹识别',width:100,align:'left'},
		    	        {field:'sim',title:'SIM卡',width:100,align:'left'},
		    	        {field:'isgyro',title:'是否有陀螺仪',width:100,align:'left'},
		    	        {field:'interfacetype',title:'机身接口',width:100,align:'left'},
		    	        {field:'wifitype',title:'WIFITYPE',width:100,align:'left'},
		    	        {field:'blueteeth',title:'蓝牙',width:100,align:'left'},
		    	        {field:'iscompase',title:'是否有电子罗盘',width:100,align:'left'},
		    	        {field:'ishallsenser',title:'是否有霍尔感应',width:100,align:'left'},
		    	        {field:'islightsenser',title:'是否光线感应',width:100,align:'left'},
		    	        {field:'isgyroscope',title:'是否陀螺仪',width:100,align:'left'},
		    	        {field:'isinfrared',title:'是否红外',width:100,align:'left'},
		    	        {field:'isgps',title:'是否GPS',width:100,align:'left'},
		    	        {field:'isagps',title:'是否AGPS',width:100,align:'left'},
		    	        {field:'isgnonass',title:'是否GNONASS',width:100,align:'left'},
		    	        {field:'isbeidou',title:'是否北斗定位',width:100,align:'left'},
		    	        {field:'pubtimestr',title:'发布时间',width:100,align:'left'},
		    	        {field:'isrecommend',title:'是否为品牌内推荐',width:100,align:'left'},
		    	        {field:'isshowindex',title:'是否为首页推荐',width:100,align:'left'},
		    	        {field:'islowprice',title:'是否为性价比推荐',width:100,align:'left'}
		    	    ]] 
		    	});
    	    	$('#test').datagrid({
    	    		fit:true,
    	    		singleSelect:true,
    	    		title:"测评信息",
    	    		toolbar: [{
		    			iconCls: 'icon-add',
		    			handler: function(){addtest();}
		    		},'-',{
		    			iconCls: 'icon-edit',
		    			handler: function(){edittest();}
		    		},'-',{
		    			iconCls: 'icon-remove',
		    			handler: function(){removetest();}
		    		}],
    	    		url:'${ctx }/admin/service/cepingList?telphoneguid='+row.telphoneguid,
    	    		columns:[[   
								{field:'guid',title:'测评GUID',align:'left',hidden:true},
    			    	        {field:'title',title:'测评标题',width:100,align:'left'},    
    			    	        {field:'testaddress',title:'测评地址',width:315,align:'left'},    
    			    	        {field:'testtimestr',title:'测评时间',width:146,align:'left'} ,
    			    	        {field:'testflag',title:'是否为精',width:146,align:'left'} 
    			    	    ]]
    	    	});
    	    	$('#pic').datagrid({
    	    		title:"图片信息",
    	    		fit:true,
    	    		singleSelect:true,
    	    		toolbar: [{
		    			iconCls: 'icon-add',
		    			handler: function(){addpic();}
		    		},'-',{
		    			iconCls: 'icon-edit',
		    			handler: function(){editpic();}
		    		},'-',{
		    			iconCls: 'icon-remove',
		    			handler: function(){removepic();}
		    		}],
    	    		url:'${ctx }/admin/service/picList?telphoneguid='+row.telphoneguid,
    	    		columns:[[    
    			    	        {field:'guid',title:'图片guid',width:100,align:'left',hidden:true},    
    			    	        {field:'pictitle',title:'图片标题',width:150,align:'left'},    
    			    	        {field:'picname',title:'图片名称',width:170,align:'left'} ,
    			    	        {field:'picaddress',title:'图片地址',width:220,align:'left'},
    			    	        {field:'isrecommend',title:'是否为品牌内推荐',width:100,align:'left'},
    			    	        {field:'isshowindex',title:'是否为首页推荐',width:100,align:'left'},
    			    	        {field:'islowprice',title:'是否为性价比推荐',width:100,align:'left'}
    			    	    ]]
    	    	});
    	    	$('#sell').datagrid({
    	    		title:"销售信息",
    	    		fit:true,
    	    		singleSelect:true,
    	    		toolbar: [{
		    			iconCls: 'icon-add',
		    			handler: function(){addsell();}
		    		},'-',{
		    			iconCls: 'icon-edit',
		    			handler: function(){editsell();}
		    		},'-',{
		    			iconCls: 'icon-remove',
		    			handler: function(){removesell();}
		    		}],
    	    		url:'${ctx }/admin/service/sellList?telphoneguid='+row.telphoneguid,
    	    		columns:[[    
    			    	        {field:'guid',title:'guid',width:100,align:'left',hidden:true},    
    			    	        {field:'industryaddress',title:'官网地址',width:300,align:'left'},    
    			    	        {field:'tmalladdress',title:'天猫地址',width:300,align:'left'} ,
    			    	        {field:'jdaddress',title:'京东地址',width:300,align:'left'}
    			    	    ]]
    	    	});
		    }
		}); 
 })
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
function addbrand(){
	var win=showWindow("手机型号添加", '${ctx }/admin/service/toTelphoneTypeAddPage', 400,400,true, null, null);
}

function editbrand(){
	var row=$('#brandtree').datagrid('getSelected');
	if(row){
		var win=showWindow("手机型号编辑", '${ctx }/admin/service/totelphoneTypeEditPage?telphoneguid='+row.telphoneguid, 400,400,true, null, null);
	}
}

function removebrand(){
	var row=$('#brandtree').datagrid('getSelected');
	$.ajax({
		url:'${ctx }/admin/service/telphoneTypeRemove?telphoneguid='+row.telphoneguid,
		success: function(msg){
			$('#brandtree').datagrid('reload');
		   }
	})
}
function addtelphone(){
var row=$('#brandtree').datagrid('getSelected');
if(row){
	var win=showWindow("手机信息添加", '${ctx }/admin/service/toPhoneAddPage?brandguid='+row.telphoneguid, 400,500,true, null, null);
}
}
function edittelphone(){
	var row=$('#telphone').datagrid('getSelected');
	if(row){
		var win=showWindow("手机信息编辑", '${ctx }/admin/service/toPhoneEditPage?number='+row.number, 400,500,true, null, null);
	}

}
function removetelphone(){
	var row=$('#telphone').datagrid('getSelected');
	$.ajax({
		url:'${ctx }/admin/service/phoneRemove?number='+row.number,
		success: function(msg){
			$('#telphone').datagrid('reload');
		   }

		
	})
}
function addtest(){
	var row=$('#brandtree').datagrid('getSelected');
	if(row){
		var win=showWindow("测评添加", '${ctx }/admin/service/toCepingAddPage?brandguid='+row.telphoneguid, 400,400,true, null, null);
	}
}
function edittest(){
	var row=$('#test').datagrid('getSelected');
	if(row){
		var win=showWindow("测评编辑", '${ctx }/admin/service/toCepingEditPage?guid='+row.guid, 400,400,true, null, null);
	}
}
function removetest(){
	var row=$('#test').datagrid('getSelected');
	$.ajax({
		url:'${ctx }/admin/service/cepingRemove?guid='+row.guid,
		success: function(msg){
			$('#test').datagrid('reload');
		   }

		
	})
}

function addpic(){
	var row=$('#brandtree').datagrid('getSelected');
	if(row){
		var win=showWindow("测评添加", '${ctx }/admin/service/toPicAddPage?telphoneguid='+row.telphoneguid, 400,300,true, null, null);
	}
}

function editpic(){
	var row=$('#pic').datagrid('getSelected');
	if(row){
		var win=showWindow("测评编辑", '${ctx }/admin/service/toPicEditPage?guid='+row.guid, 400,300,true, null, null);
	}
}

function removepic(){
	var row=$('#pic').datagrid('getSelected');
	$.ajax({
		url:'${ctx }/admin/service/picRemove?guid='+row.guid,
		success: function(msg){
			$('#pic').datagrid('reload');
		   }

		
	})
}

function addsell(){
	var row=$('#brandtree').datagrid('getSelected');
	if(row){
		var win=showWindow("测评添加", '${ctx }/admin/service/toSellAddPage?telphoneguid='+row.telphoneguid, 400,200,true, null, null);
	}
}

function editsell(){
	var row=$('#sell').datagrid('getSelected');
	if(row){
		var win=showWindow("销售信息编辑", '${ctx }/admin/service/toSellEditPage?telphoneguid='+row.telphoneguid, 400,200,true, null, null);
	}
}

function removesell(){
	var row=$('#sell').datagrid('getSelected');
	$.ajax({
		url:'${ctx }/admin/service/sellRemove?telphoneguid='+row.telphoneguid,
		success: function(msg){
			$('#sell').datagrid('reload');
		   }

		
	})
}
function showWindow(title, href, width, height, modal, minimizable, maximizable) {
	      var openWin = window.top.$('<div id="myWinId" class="easyui-window" closed="true"></div>').appendTo(window.top.document.body);
	      openWin.window({
	          title: title,
	          width: width === undefined ? 600 : width,
	          height: height === undefined ? 400 : height,
	          content: '<iframe scrolling="yes" frameborder="0"  src="' + href + '" style="width:100%;height:99%;"></iframe>',
	         modal: modal === undefined ? true : modal,
	         minimizable: minimizable === undefined ? false : minimizable,
	         maximizable: maximizable === undefined ? false : maximizable,
	         shadow: false,
	         cache: false,
	         closed: false,
	         collapsible: true,
	         closable:true,
	         resizable: true,
	         scrollbars:true,
	         loadingMessage: '正在加载数据，请稍等片刻......',
	         onClose : function(){ 
	             openWin.window("destroy"); 
	         } 
	     });
	      return openWin;
	 }

 </script>
 <body class="easyui-layout">
    <div data-options="region:'west',title:'手机品牌选择'"  style="width:200px">
    	
    		<table id="brandtree"></table>  
    	
    </div>   
    <div data-options="region:'center',title:'手机详细信息'">
    	<div data-options="region:'center'" style="height:350px">
    		<table id="telphone"></table> 
    	</div>
    	<div data-options="region:'south'" style="height:100px;">
    		<div data-options="region:'center'" style="width:61%;height:200px;float:left">
    			<table id="test"></table> 
    		</div>
    		<div data-options="region:'east'" style="width:39%;height:200px;float:left">
    			<table id="pic"></table>
    		</div>
    		<div data-options="region:'south'" style="width:100%;height:200px;float:left">
    			<table id="sell"></table>
    		</div>
    	</div> 
    </div>   
 </body>
</html>


