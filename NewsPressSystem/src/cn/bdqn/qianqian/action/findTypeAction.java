package cn.bdqn.qianqian.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.service.NewsInfoService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class findTypeAction extends ActionSupport{
	private Integer typeId;
	private NewsInfoService newsInfoService=null;
	public String execute(){
		List<NewsInfo> findTypeList=new ArrayList<NewsInfo>();
		try {
			findTypeList=newsInfoService.getByTypeId(typeId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session=ServletActionContext.getRequest().getSession();
		if (findTypeList!=null) {
			session.setAttribute("findTypeList", findTypeList);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public NewsInfoService getNewsInfoService() {
		return newsInfoService;
	}
	public void setNewsInfoService(NewsInfoService newsInfoService) {
		this.newsInfoService = newsInfoService;
	}
}
