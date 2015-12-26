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
	 $('#brandtree').tree({    
		    url:'${ctx }/service/tree_data2.json'  ,
		    onSelect:function(){
		    	$('#telphone').datagrid({
		    		pagination:true,
		    		singleSelect:true,
		    		pageSize:10,
		    		toolbar: [{
		    			iconCls: 'icon-add',
		    			handler: function(){alert('添加按钮')}
		    		},'-',{
		    			iconCls: 'icon-edit',
		    			handler: function(){alert('编辑按钮')}
		    		},'-',{
		    			iconCls: 'icon-remove',
		    			handler: function(){alert('删除按钮')}
		    		}],
		    	    url:'${ctx }/service/datagrid_data1.json',    
		    	    columns:[[    
		    	        {field:'itemid',title:'手机名',width:100,align:'left'},    
		    	        {field:'productid',title:'价格',width:100,align:'left'},    
		    	        {field:'listprice',title:'处理器GUID',width:100,align:'left'} ,
		    	        {field:'unitcost',title:'屏幕GUID',width:100,align:'left'},  
		    	        {field:'attr1',title:'前置摄像头',width:100,align:'left'},  
		    	        {field:'status',title:'后置摄像头',width:100,align:'left'},
		    	        {field:'status',title:'RAM大小',width:100,align:'left'},
		    	        {field:'status',title:'ROM大小',width:100,align:'left'},
		    	        {field:'status',title:'操作系统',width:100,align:'left'},
		    	        {field:'status',title:'电池容量',width:100,align:'left'},
		    	        {field:'status',title:'电池类型',width:100,align:'left'},
		    	        {field:'status',title:'是否支持指纹识别',width:100,align:'left'},
		    	        {field:'status',title:'SIM卡',width:100,align:'left'},
		    	        {field:'status',title:'是否有陀螺仪',width:100,align:'left'},
		    	        {field:'status',title:'机身接口',width:100,align:'left'},
		    	        {field:'status',title:'WIFITYPE',width:100,align:'left'},
		    	        {field:'status',title:'蓝牙',width:100,align:'left'},
		    	        {field:'status',title:'是否有电子罗盘',width:100,align:'left'},
		    	        {field:'status',title:'是否有霍尔感应',width:100,align:'left'},
		    	        {field:'status',title:'是否光线感应',width:100,align:'left'},
		    	        {field:'status',title:'是否陀螺仪',width:100,align:'left'},
		    	        {field:'status',title:'是否红外',width:100,align:'left'},
		    	        {field:'status',title:'是否GPS',width:100,align:'left'},
		    	        {field:'status',title:'是否AGPS',width:100,align:'left'},
		    	        {field:'status',title:'是否GNONASS',width:100,align:'left'},
		    	        {field:'status',title:'是否北斗定位',width:100,align:'left'}
		    	    ]] ,
		    	    onSelect:function(){
		    	    	$('#test').datagrid({
		    	    		title:"测评信息",
		    	    		toolbar: [{
				    			iconCls: 'icon-add',
				    			handler: function(){alert('添加按钮')}
				    		},'-',{
				    			iconCls: 'icon-edit',
				    			handler: function(){alert('编辑按钮')}
				    		},'-',{
				    			iconCls: 'icon-remove',
				    			handler: function(){alert('删除按钮')}
				    		}],
		    	    		url:'${ctx }/service/datagrid_data1.json',
		    	    		columns:[[    
		    			    	        {field:'itemid',title:'手机名',width:100,align:'left'},    
		    			    	        {field:'productid',title:'价格',width:100,align:'left'},    
		    			    	        {field:'listprice',title:'处理器GUID',width:100,align:'left'} ,
		    			    	        {field:'unitcost',title:'屏幕GUID',width:100,align:'left'},  
		    			    	        {field:'attr1',title:'前置摄像头',width:100,align:'left'},  
		    			    	        {field:'status',title:'后置摄像头',width:100,align:'left'}
		    			    	    ]]
		    	    	});
		    	    	$('#pic').datagrid({
		    	    		title:"图片信息",
		    	    		toolbar: [{
				    			iconCls: 'icon-add',
				    			handler: function(){alert('添加按钮')}
				    		},'-',{
				    			iconCls: 'icon-edit',
				    			handler: function(){alert('编辑按钮')}
				    		},'-',{
				    			iconCls: 'icon-remove',
				    			handler: function(){alert('删除按钮')}
				    		}],
		    	    		url:'${ctx }/service/datagrid_data1.json',
		    	    		columns:[[    
		    			    	        {field:'itemid',title:'手机名',width:100,align:'left'},    
		    			    	        {field:'productid',title:'价格',width:100,align:'left'},    
		    			    	        {field:'listprice',title:'处理器GUID',width:100,align:'left'} ,
		    			    	        {field:'unitcost',title:'屏幕GUID',width:100,align:'left'},  
		    			    	        {field:'attr1',title:'前置摄像头',width:100,align:'left'},  
		    			    	        {field:'status',title:'后置摄像头',width:100,align:'left'}
		    			    	    ]]
		    	    	});
		    	    }
		    	});
		    }
		}); 
 })
 
 </script>
 <body class="easyui-layout">
    <div data-options="region:'west',title:'手机品牌选择'"  style="width:200px">
    	<div>
    		<ul id="brandtree"></ul>  
    	</div>
    </div>   
    <div data-options="region:'center',title:'手机详细信息'">
    	<div data-options="region:'center'">
    		<table id="telphone"></table> 
    	</div>
    	<div data-options="region:'south'" style="height:100px;">
    		<div data-options="region:'center'" style="width:50%;float:left">
    			<table id="test"></table> 
    		</div>
    		<div data-options="region:'east'" style="width:50%;float:left">
    			<table id="pic"></table>
    		</div>
    	</div> 
    </div>   
 </body>
</html>


