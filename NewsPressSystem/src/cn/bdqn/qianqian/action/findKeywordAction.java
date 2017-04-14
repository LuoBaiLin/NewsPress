package cn.bdqn.qianqian.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.service.NewsInfoService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class findKeywordAction extends ActionSupport{
	private String Keyword;
	private Integer KeywordId;
	private NewsInfoService newsInfoService=null;
	public String find(){
		List<NewsInfo> keyWordList=new ArrayList<NewsInfo>();
		HttpSession session=ServletActionContext.getRequest().getSession();
		try {
			keyWordList=newsInfoService.getByKeywordNews(KeywordId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (keyWordList!=null) {
			session.setAttribute("keyWordList", keyWordList);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public String finds(){
		List<NewsInfo> keyWordList=new ArrayList<NewsInfo>();
		HttpSession session=ServletActionContext.getRequest().getSession();
		try {
			keyWordList=newsInfoService.getByKeywordNew(Keyword);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (keyWordList!=null) {
			session.setAttribute("keyWordList", keyWordList);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public Integer getKeywordId() {
		return KeywordId;
	}
	public void setKeywordId(Integer keywordId) {
		KeywordId = keywordId;
	}
	public NewsInfoService getNewsInfoService() {
		return newsInfoService;
	}
	public void setNewsInfoService(NewsInfoService newsInfoService) {
		this.newsInfoService = newsInfoService;
	}
	public String getKeyword() {
		return Keyword;
	}
	public void setKeyword(String keyword) {
		Keyword = keyword;
	}
	
}
