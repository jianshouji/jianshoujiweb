package com.jianshouji.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.jianshouji.model.Brand;
import com.jianshouji.model.Camera;
import com.jianshouji.model.Ceping;
import com.jianshouji.model.Cpu;
import com.jianshouji.model.Pic;
import com.jianshouji.model.Screen;
import com.jianshouji.model.Sell;
import com.jianshouji.model.Telphone;
import com.jianshouji.model.TelphoneType;
import com.jianshouji.service.ICameraService;
import com.jianshouji.service.ICepingService;
import com.jianshouji.service.ICpuService;
import com.jianshouji.service.IScreenService;
import com.jianshouji.service.ITelphoneService;
import com.jianshouji.service.ITelphoneTypeService;
import com.jianshouji.util.JSONUtil;

@Scope("requet")
@Controller("serviceAction")
@Namespace("/admin/service")
public class ServiceAction extends AbstractAction {
	private static final long serialVersionUID = 10L;
	private Brand brand;
	private Telphone telphone =new Telphone();
	private Ceping ceping=new Ceping();
	private Pic pic;
	private Sell sell;
	private String brandguid;
	private Integer number;
	@Autowired
	private ITelphoneTypeService telphoneTypeService;
	@Autowired
	private ITelphoneService telphoneService;
	@Autowired
	private ICameraService cameraService;
	@Autowired
	private IScreenService screenService;
	@Autowired
	private ICpuService cpuService;
	@Autowired
	private ICepingService cepingService;
	//进入管理主界面
	@Action(value="toManagePage",results={@Result(name=SUCCESS,location="/service/index.jsp")})
	public String toManagePage(){
		return SUCCESS;
	}
	//左侧品牌树
	@Action(value="brandTree",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String brandtree(){
/*		try {
			List<TreeModel> list=telphoneTypeService.selectTree();
			result=JSONUtil.ToJson(list);
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		List<TelphoneType> list=telphoneTypeService.listbrand();
		result=JSONUtil.ToJson(list);
		return SUCCESS;
	}
	//中间手机参数表单
	@Action(value="telphoneList",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String telphoneList(){
		List<Telphone> list=telphoneService.selectTelphoneByBrand(brandguid);
		result=JSONUtil.ToJson(list);
		return SUCCESS;
	}
	//手机测评列表
	@Action(value="cepingList",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String cepingList(){
		List<Ceping> list=cepingService.selectListByTelphoneGuid(brandguid);
		result=JSONUtil.ToJson(list);
		return SUCCESS;
	}
	//手机图片列表
	@Action(value="picList",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String picList(){
		return SUCCESS;
	}
	//手机销售列表
	@Action(value="sellList",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String sellList(){
		return SUCCESS;
	}
	//进入添加手机信息页面
	@Action(value="toPhoneAddPage",results={@Result(name=SUCCESS,location="/service/input.jsp")})
	public String toPhoneAddPage(){
		telphone.setBrandguid(brandguid);
		return SUCCESS;
	}
	//手机信息添加
	@Action(value="phoneInsert",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String phoneInsert(){
//		System.out.println("aaaa");
		linenum=telphoneService.insert(telphone);
		result=linenum>0?"1":"0";
		return SUCCESS;
	}
	//进入修改手机信息页面
	@Action(value="toPhoneEditPage",results={@Result(name=SUCCESS,location="/service/update.jsp")})
	public String toPhoneEditPage(){
		telphone=telphoneService.selectTelphoneByNumber(number);
		return SUCCESS;
	}
	//手机信息编辑修改
	@Action(value="phoneEdit",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String phoneEdit(){
		linenum=telphoneService.update(telphone);
		result=linenum>0?"1":"0";
		return SUCCESS;
	}
	//手机信息条目删除
	@Action(value="phoneRemove",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String phoneRemove(){
		linenum=telphoneService.delete(number);
		result=linenum>0?"1":"0";
		return SUCCESS;
	}
	//进入添加测评信息页面
	@Action(value="toCepingAddPage",results={@Result(name=SUCCESS,location="/service/testinput.jsp")})
	public String toCepingAddPage(){
		return SUCCESS;
	}
	//手机测评信息添加
	@Action(value="cepingInsert",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String cepingInsert(){
		linenum=cepingService.insert(ceping);
		result=linenum>0?"1":"0";
		return SUCCESS;
	}
	//进入修改测评信息页面
	@Action(value="toCepingEditPage",results={@Result(name=SUCCESS,location="/service/testinput.jsp")})
	public String toCepingEditPage(){
		ceping=cepingService.selectListByGuid(guid);
		return SUCCESS;
	}
	//手机测评信息编辑修改
	@Action(value="cepingEdit",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String cepingEdit(){
		linenum=cepingService.update(ceping);
		result=linenum>0?"1":"0";
		return SUCCESS;
	}
	//手机测评信息条目删除
	@Action(value="cepingRemove",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String cepingRemove(){
		linenum=cepingService.delete(guid);
		result=linenum>0?"1":"0";
		return SUCCESS;
	}
	//进入添加图片信息页面
	@Action(value="toPicAddPage",results={@Result(name=SUCCESS,location="/service/picinput.jsp")})
	public String toPicAddPage(){
		return SUCCESS;
	}
	//手机图片信息添加
	@Action(value="picInsert",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String picInsert(){
		return SUCCESS;
	}
	//进入修改图片信息页面
	@Action(value="toPicEditPage",results={@Result(name=SUCCESS,location="/service/picinput.jsp")})
	public String toPicEditPage(){
		return SUCCESS;
	}
	//手机图片信息编辑修改
	@Action(value="picEdit",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String picEdit(){
		return SUCCESS;
	}
	//手机图片条目删除
	@Action(value="picRemove",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String picRemove(){
		return SUCCESS;
	}
	//进入添加销售信息页面
	@Action(value="toSellAddPage",results={@Result(name=SUCCESS,location="/service/picinput.jsp")})
	public String toSellAddPage(){
		return SUCCESS;
	}
	//销售信息添加
	@Action(value="sellInsert",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String sellInsert(){
		return SUCCESS;
	}
	//进入修改销售信息页面
	@Action(value="toSellEditPage",results={@Result(name=SUCCESS,location="/service/picinput.jsp")})
	public String toSellEditPage(){
		return SUCCESS;
	}
	//销售修改
	@Action(value="sellEdit",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String sellEdit(){
		return SUCCESS;
	}
	//销售条目删除
	@Action(value="sellRemove",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String sellRemove(){
		return SUCCESS;
	}
	//手机图片条目删除
	@Action(value="getCameraCombobox",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String getCameraCombobox(){
		List<Camera> list=cameraService.getCameraCombobox();
		result=JSONUtil.ToJson(list);
		return SUCCESS;
	}
	//手机屏幕下拉框
	@Action(value="getScreenCombobox",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String getScreenCombobox(){
		List<Screen> list=screenService.getScreenCombobox();
		result=JSONUtil.ToJson(list);
		return SUCCESS;
	}
	//手机cpu下拉框
	@Action(value="getCpucombobox",results={@Result(name=SUCCESS,location="/jsonresult.jsp")})
	public String getCpucombobox(){
		List<Cpu> list=cpuService.getCpucombobox();
		result=JSONUtil.ToJson(list);
		return SUCCESS;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	public Telphone getTelphone() {
		return telphone;
	}
	public void setTelphone(Telphone telphone) {
		this.telphone = telphone;
	}
	public Ceping getCeping() {
		return ceping;
	}
	public void setCeping(Ceping ceping) {
		this.ceping = ceping;
	}
	public Pic getPic() {
		return pic;
	}
	public String getBrandguid() {
		return brandguid;
	}
	public void setBrandguid(String brandguid) {
		this.brandguid = brandguid;
	}
	public void setPic(Pic pic) {
		this.pic = pic;
	}
	public Sell getSell() {
		return sell;
	}
	public void setSell(Sell sell) {
		this.sell = sell;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}

}
