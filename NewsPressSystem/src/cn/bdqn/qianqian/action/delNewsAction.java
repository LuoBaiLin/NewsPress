package cn.bdqn.qianqian.action;

import cn.bdqn.qianqian.service.NewsInfoService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class delNewsAction extends ActionSupport{
	private Integer newsId;
	private NewsInfoService newsInfoService=null;
	
	public String execute(){
		try {
			newsInfoService.delNews(newsId);
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return INPUT;
		}
	}
	
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public NewsInfoService getNewsInfoService() {
		return newsInfoService;
	}
	public void setNewsInfoService(NewsInfoService newsInfoService) {
		this.newsInfoService = newsInfoService;
	}
}
