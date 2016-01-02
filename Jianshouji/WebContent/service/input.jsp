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
  	<form id="phonemsg" action="${ctx }/admin/service/phoneInsert" method="post">
  		<table>
  			<thead>
  				<th align="right">属性</th>
  				<th>值</th>
  			</thead>
  			<tr>
  				<td align="right">手机GUID</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphone.guid" value="${telphone.brandguid }" />
  					<input type="text" style="width:200px;" name="telphone.number" value="${telphone.number }" hidden="true">
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
  					<input type="text" style="width:200px;" name="telphone.price" >
  				</td>
  			</tr>
  			<tr>
  				<td align="right">处理器</td>
  				<td>
  					<input class="easyui-combobox" style="width:200px;" name="telphone.cpuguid" data-options="editable:false,valueField:'guid',textField:'cpu_name',url:'${ctx }/admin/service/getCpucombobox'" > 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">屏幕</td>
  				<td>
  					<input class="easyui-combobox" style="width:200px;" name="telphone.screenguid" data-options="editable:false,valueField:'guid',textField:'texture',url:'${ctx }/admin/service/getScreenCombobox'" style="width:200px;" > 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">前置摄像头</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.beforepixel" value="500万">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">后置摄像头</td>
  				<td>
  					<input class="easyui-combobox" data-options="editable:false,valueField:'guid',textField:'cameratype',url:'${ctx }/admin/service/getCameraCombobox'" style="width:200px;" name="telphone.cameryguid" value="${telphone.cameryguid }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">RAM大小</td>
  				<td>
					<select class="easyui-combobox" name="telphone.ramvol"  style="width:200px;" >   
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
  					<select class="easyui-combobox" name="telphone.ramtype"  style="width:200px;" >   
    				<option value="LPDDR3933MHz">LPDDR3 933 MHz</option>   
    				<option value="LPDDR41600MHz">LPDDR4 1600 MHz</option>   
					<option value="LPDDR31600MHz">LPDDR3-1600MHz</option>
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td align="right">ROM大小</td>
  				<td>
  				  	<select class="easyui-combobox" name="telphone.romvol" style="width:200px;" >   
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
  					<select class="easyui-combobox" name="telphone.opration"  style="width:200px;">   
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
  					<input type="text"  style="width:200px;" name="telphone.color" >
  				</td>
  			</tr>
  			<tr>
  				<td align="right">电池容量</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.battery" >
  				</td>
  			</tr>
  			<tr>
  				<td align="right">电池类型</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.batterytype"  style="width:200px;">   
    				<option value="1">不可拆卸</option>   
    				<option value="0">可拆卸</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否支持指纹识别</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.fingerprint" style="width:200px;">   
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
  					<select class="easyui-combobox" name="telphone.isgyro"  style="width:200px;">   
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
  					<input type="text" align="right" style="width:200px;" name="telphone.wifitype" value="支持 2.4GHz和 5GHz频 ">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">蓝牙</td>
  				<td>
  					<input type="text" align="right" value="蓝牙4.1" style="width:200px;" name="telphone.blueteeth" >
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否有电子罗盘</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.iscompase"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否有霍尔感应</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.ishallsenser"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否光线感应</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.islightsenser"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否陀螺仪</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isgyroscope"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否红外</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isinfrared"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否GPS</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isgps"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否AGPS</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isagps"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			  <tr>
  				<td align="right">是否支持北斗</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isbeidou"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否GNONASS</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isgnonass"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			 <tr>
  				<td align="right">是否为推荐</td>
  				<td>
  					<select class="easyui-combobox" name="telphone.isrecommend"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  		</table>
  		<div>
  			<input type="submit" id="submit_btn"  onclick="submitbtn()" value="确定">
  			<input type="reset" id="cancel_btn" value="重置">
  			<input style="" type="submit" id="close_btn" onclick="window.close()" value="关闭">
  		</div>
  	</form>
  <script type="text/javascript">
  /*function submitbtn(){
	 $('#phonemsg').action='${ctx }/admin/service/phoneInsert',
	 $('#phonemsg').submit();
		 $('#phonemsg').submit(function(){
 		 $.ajax({
				type: "POST",
				url:'${ctx }/admin/service/phoneInsert',
			    success: function(data) {
			    	var info = eval('(' + data + ')');  
					if(info.result=='1'){
						window.close();
					}else{
						window.top.$.messager.alert("信息","提交失败，请重试或与管理员联系");
					}
			    },
			   error:function(data){
				   alert(111);  
				}
			}); 
	
	 

 }*/
  </script>
 </body>
</html>


