package cn.bdqn.qianqian.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.service.NewsInfoService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class findNewsAction extends ActionSupport{
	private String findInfo;
	private NewsInfoService newsinfoService=null;
	@Override
	public String execute(){
		List<NewsInfo> newsInfoList = new ArrayList<NewsInfo>();
		try {
			newsInfoList=newsinfoService.selectByLikeTitle(findInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		HttpSession session=ServletActionContext.getRequest().getSession();
		if(newsInfoList!=null){
			session.setAttribute("newsInfoList", newsInfoList);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}

	public String getFindInfo() {
		return findInfo;
	}
	public void setFindInfo(String findInfo) {
		this.findInfo = findInfo;
	}

	public NewsInfoService getNewsinfoService() {
		return newsinfoService;
	}

	public void setNewsinfoService(NewsInfoService newsinfoService) {
		this.newsinfoService = newsinfoService;
	}
}
