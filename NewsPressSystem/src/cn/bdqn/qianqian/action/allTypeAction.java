package cn.bdqn.qianqian.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsType;
import cn.bdqn.qianqian.service.NewsTypeService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class allTypeAction extends ActionSupport{
	private NewsTypeService typeService=null;
	
	public String execute(){
		List<NewsType> newsType=new ArrayList<NewsType>();
		try {
			newsType=typeService.getAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session=ServletActionContext.getRequest().getSession();
		if (newsType!=null) {
			session.setAttribute("newsType", newsType);
			return SUCCESS;
		}else {
			return INPUT;
		}
	}

	public NewsTypeService getTypeService() {
		return typeService;
	}
	public void setTypeService(NewsTypeService typeService) {
		this.typeService = typeService;
	}
}
