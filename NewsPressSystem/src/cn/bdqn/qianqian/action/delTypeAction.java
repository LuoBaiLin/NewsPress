package cn.bdqn.qianqian.action;

import cn.bdqn.qianqian.service.NewsTypeService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class delTypeAction extends ActionSupport{
	private Integer typeId;
	private NewsTypeService newsTypeService=null;
	public String execute(){
		try {
		newsTypeService.delType(typeId);
		return SUCCESS;
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return INPUT;
	}
		}
	
	
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public NewsTypeService getNewsTypeService() {
		return newsTypeService;
	}
	public void setNewsTypeService(NewsTypeService newsTypeService) {
		this.newsTypeService = newsTypeService;
	}
	
}
