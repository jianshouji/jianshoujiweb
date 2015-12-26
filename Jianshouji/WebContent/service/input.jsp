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
  	<form action="">
  		<table>
  			<thead>
  				<th align="right">属性</th>
  				<th>值</th>
  			</thead>
  			<tr>
  				<td align="right">手机GUID</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphone.guid" value="${telphone.guid }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">手机名</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphone.telphone_name" value="${telphone.telphone_name }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">价格</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphone.price" value="${telphone.price }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">品牌</td>
  				<td>
  					<input type="text" style="width:200px;" name="telphone.brandguid" value="${telphone.brandguid }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">处理器GUID</td>
  				<td>
  					<input type="text" id="cc" name="dept" value="aa" style="width:200px;" name="telphone.cpuguid" value="${telphone.cpuguid }"> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">屏幕GUID</td>
  				<td>
  					<input type="text" id="cc" name="dept" value="aa" style="width:200px;" name="telphone.screenguid" value="${telphone.screenguid }"> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">前置摄像头</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.beforepixel" value="${telphone.beforepixel }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">后置摄像头GUID</td>
  				<td>
  					<input type="text" id="cc" name="dept" value="aa" style="width:200px;" name="telphone.cameryguid" value="${telphone.cameryguid }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">RAM大小</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.ramvol" value="${telphone.ramvol }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">内存类型</td>
  				<td>
  					<select class="easyui-combobox"  style="width:200px;" >   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td align="right">ROM大小</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.romvol" value="${telphone.romvol }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">操作系统</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">MIUI</option>   
    				<option value="0">EMUI</option>
    				<option value="1">FLYME</option>   
    				<option value="0">EUI</option> 
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td align="right">手机颜色</td>
  				<td>
  					<input type="text"  style="width:200px;" name="telphone.color" value="${telphone.color }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">电池容量</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.battery" value="${telphone.battery }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">电池类型</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">不可拆卸</option>   
    				<option value="0">可拆卸</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否支持指纹识别</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">SIM卡</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.sim" value="${telphone.sim }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否有陀螺仪</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">机身接口</td>
  				<td>
  					<input type="text" align="right" style="width:200px;" name="telphone.Interface" value="${telphone.Interface }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">WIFITYPE</td>
  				<td>
  					<input type="text" align="right" value="" style="width:200px;" name="telphone.wifitype" value="${telphone.wifitype }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">蓝牙</td>
  				<td>
  					<input type="text" align="right" value="" style="width:200px;" name="telphone.blueteeth" value="${telphone.blueteeth }">
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否有电子罗盘</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否有霍尔感应</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否光线感应</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否陀螺仪</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否红外</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否GPS</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否AGPS</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  			<tr>
  				<td align="right">是否GNONASS</td>
  				<td>
  					<select class="easyui-combobox deflag"  style="width:200px;">   
    				<option value="1">是</option>   
    				<option value="0">否</option>   
					</select> 
  				</td>
  			</tr>
  		</table>
  		<div>
  			<input style="" type="submit" value="确定">
  			<input type="reset" value="取消">
  		</div>
  	</form>
 </body>
</html>


