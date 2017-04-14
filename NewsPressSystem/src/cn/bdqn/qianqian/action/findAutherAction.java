package cn.bdqn.qianqian.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.service.NewsInfoService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class findAutherAction extends ActionSupport{
	private String newsAuther;
	private NewsInfoService newsInfoService=null;
	public String execute(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		List<NewsInfo> autherList=new ArrayList<NewsInfo>();
		try {
			String name=new String(newsAuther.getBytes("iso-8859-1"),"utf-8").trim();
			autherList=newsInfoService.selectByAuther(name);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (autherList!=null) {
			session.setAttribute("autherList", autherList);
			return SUCCESS;
		} else {
			return INPUT;
		}
	}
	public String getNewsAuther() {
		return newsAuther;
	}
	public void setNewsAuther(String newsAuther) {
		this.newsAuther = newsAuther;
	}
	public NewsInfoService getNewsInfoService() {
		return newsInfoService;
	}
	public void setNewsInfoService(NewsInfoService newsInfoService) {
		this.newsInfoService = newsInfoService;
	}
}
