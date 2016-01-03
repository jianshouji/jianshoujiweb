<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
 <head >
 	<jsp:include page="/service/common/header.jsp"></jsp:include>
	<title>手机信息添加页面</title>
 </head>
 <body >
  	<form id="phonemsg" action="${ctx }/admin/service/phoneEdit" method="post">
  		<table>
  			<thead>
  				<th align="right" style="width:40%">属性</th>
  				<th style="width:60%">值</th>
  			</thead>
  			<tr>
  				<td align="right">手机GUID</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphone.guid" value="${telphone.brandguid }" />
  					<input type="text" style="width:200px;" name="telphone.brandguid" value="${telphone.brandguid }" hidden="true">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">手机名</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphone.telphone_name" value="${telphone.brandguid }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">价格</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphone.price" value="${telphone.price }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">处理器</td>
  				<td>
  					<input class="easyui-combobox" style="width:200px;" name="telphone.cpuguid" id="cpuguid" data-options="editable:false,valueField:'guid',textField:'cpu_name',url:'${ctx }/admin/service/getCpucombobox'" > 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">屏幕</td>
  				<td>
  					<input class="easyui-combobox" style="width:200px;" name="telphone.screenguid"  id="screenguid" data-options="editable:false,valueField:'guid',textField:'texture',url:'${ctx }/admin/service/getScreenCombobox'" style="width:200px;" > 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">前置摄像头</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.beforepixel" value="${telphone.beforepixel }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">后置摄像头</td>
  				<td>
  					<input class="easyui-combobox"  id="cameryguid" data-options="editable:false,valueField:'guid',textField:'cameratype',url:'${ctx }/admin/service/getCameraCombobox'" style="width:200px;" name="telphone.cameryguid" value="${telphone.cameryguid }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">RAM大小</td>
  				<td>
					<select class="easyui-combobox" id="ramvol" name="telphone.ramvol"  style="width:200px;" >   
    				<option value="1">1G</option>   
    				<option value="2">2G</option> 
    				<option value="3">3G</option>   
    				<option value="4">4G</option> 
    				<option value="6">6G</option> 
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td align="right">内存类型</td>
  				<td>
  					<select class="easyui-combobox" id="ramtype"  name="telphone.ramtype"  style="width:200px;" >   
    				<option value="LPDDR3933MHz">LPDDR3 933 MHz</option>   
    				<option value="LPDDR41600MHz">LPDDR4 1600 MHz</option>   
					<option value="LPDDR31600MHz">LPDDR3-1600MHz</option>
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td align="right">ROM大小</td>
  				<td>
  				  	<select class="easyui-combobox"  id="romvol" name="telphone.romvol" style="width:200px;" >   
    				<option value="8">8G</option>   
    				<option value="16">16G</option> 
    				<option value="32">32G</option>   
    				<option value="64">64G</option>  
    				<option value="128">128G</option>
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td align="right">操作系统</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.opration"  id="opration" style="width:200px;">   
  					<option value="IOS">IOS</option>  
    				<option value="MIUI">MIUI</option>   
    				<option value="EMUI">EMUI</option>
    				<option value="FLYME">FLYME</option>   
    				<option value="EUI">EUI</option> 
    				<option value="360OS">360OS</option> 
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td align="right">手机颜色</td>
  				<td>
  					<input type="text"  style="width:200px;" name="telphone.color"  value="${telphone.color }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">电池容量</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.battery"  value="${telphone.battery }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">电池类型</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.batterytype"  style="width:200px;"  id="batterytype">   
    				<option value="1">不可拆卸</option>   
    				<option value="0">可拆卸</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否支持指纹识别</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.fingerprint" id="fingerprint" style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">SIM卡</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.sim" value="Microsim\NANOsim">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否有陀螺仪</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isgyro"  id="isgyro" style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">机身接口</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.interfacetype" value="${telphone.interfacetype }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">WIFITYPE</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.wifitype" value="${telphone.wifitype }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">蓝牙</td>
  				<td>
  					<input type="text" align="right" value="蓝牙4.1" style="width:200px;" name="telphone.blueteeth"  value="${telphone.blueteeth }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否有电子罗盘</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.iscompase"  style="width:200px;" id="iscompase">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否有霍尔感应</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.ishallsenser"  style="width:200px;" id="ishallsenser">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否光线感应</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.islightsenser"  style="width:200px;" id="islightsenser">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否陀螺仪</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isgyroscope"  style="width:200px;" id="isgyroscope">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否红外</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isinfrared"  style="width:200px;" id="isinfrared">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否GPS</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isgps"  style="width:200px;" id="isgps">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否AGPS</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isagps"  style="width:200px;" id="isagps">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			  <tr>
  				<td align="right">是否支持北斗</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isbeidou"  value="${telphone.isbeidou}" style="width:200px;" id="isbeidou">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否GNONASS</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isgnonass"  style="width:200px;" id="isgnonass">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			 <tr>
  				<td align="right">是否为推荐</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isrecommend"  style="width:200px;" id="isrecommend">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  		</table>
  		<div>
  			<input type="submit" id="submit_btn"   value="确定">
  			<input type="reset" id="cancel_btn" value="重置">
  			<input style="" type="submit" id="close_btn" onclick="window.close()" value="关闭">
  		</div>
  	</form>
  <script type="text/javascript">
$(function(){
	$("#cpuguid").combobox({
		onLoadSuccess:function(){
			$("#cpuguid").combobox('setValue',"${telphone.cpuguid}")
		}
	});
	$("#screenguid").combobox({
		onLoadSuccess:function(){
			$("#screenguid").combobox('setValue',"${telphone.screenguid}")
		}
	});
	$("#cameryguid").combobox({
		onLoadSuccess:function(){
			$("#cameryguid").combobox('setValue',"${telphone.cameryguid}")
		}
	});
	$("#ramvol").combobox({
		onLoadSuccess:function(){
			$("#ramvol").combobox('setValue',"${telphone.ramvol}")
		}
	});
	$("#ramtype").combobox({
		onLoadSuccess:function(){
			$("#ramtype").combobox('setValue',"${telphone.ramtype}")
		}
	});
	$("#romvol").combobox({
		onLoadSuccess:function(){
			$("#romvol").combobox('setValue',"${telphone.ramvol}")
		}
	});
	$("#opration").combobox({
		onLoadSuccess:function(){
			$("#opration").combobox('setValue',"${telphone.opration}")
		}
	});
	$("#batterytype").combobox({
		onLoadSuccess:function(){
			$("#batterytype").combobox('setValue',"${telphone.batterytype}")
		}
	});
	$("#fingerprint").combobox({
		onLoadSuccess:function(){
			$("#fingerprint").combobox('setValue',"${telphone.fingerprint}")
		}
	});
	$("#isgyro").combobox({
		onLoadSuccess:function(){
			$("#isgyro").combobox('setValue',"${telphone.isgyro}")
		}
	});
	$("#iscompase").combobox({
		onLoadSuccess:function(){
			$("#iscompase").combobox('setValue',"${telphone.iscompase}")
		}
	});
	$("#ishallsenser").combobox({
		onLoadSuccess:function(){
			$("#ishallsenser").combobox('setValue',"${telphone.ishallsenser}")
		}
	});
	$("#isgyroscope").combobox({
		onLoadSuccess:function(){
			$("#isgyroscope").combobox('setValue',"${telphone.isgyroscope}")
		}
	});
	$("#isinfrared").combobox({
		onLoadSuccess:function(){
			$("#isinfrared").combobox('setValue',"${telphone.isinfrared}")
		}
	});
	$("#isgps").combobox({
		onLoadSuccess:function(){
			$("#isgps").combobox('setValue',"${telphone.isgps}")
		}
	});
	$("#isagps").combobox({
		onLoadSuccess:function(){
			$("#isagps").combobox('setValue',"${telphone.isagps}")
		}
	});
	$("#isbeidou").combobox({
		onLoadSuccess:function(){
			$("#isbeidou").combobox('setValue',"${telphone.isbeidou}")
		}
	});
	$("#isgnonass").combobox({
		onLoadSuccess:function(){
			$("#isgnonass").combobox('setValue',"${telphone.isgnonass}")
		}
	});
	$("#isrecommend").combobox({
		onLoadSuccess:function(){
			$("#isrecommend").combobox('setValue',"${telphone.isrecommend}")
		}
	});
})
  </script>
 </body>
</html>


