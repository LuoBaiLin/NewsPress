package cn.bdqn.qianqian.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsComment;
import cn.bdqn.qianqian.entity.NewsImage;
import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.service.NewsCommentService;
import cn.bdqn.qianqian.service.NewsImageService;
import cn.bdqn.qianqian.service.NewsInfoService;
import cn.bdqn.qianqian.service.NewsTypeService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class NewsInfoAction extends ActionSupport{
	private Integer newsId;
	private NewsInfoService newsinfoService=null;
	private NewsImageService newsimageService=null;
	private NewsCommentService newscommentService=null;
	private NewsTypeService newsTypeService=null;
	/*NewsInfo newsInfo = null;*/
	@Override
	public String execute(){
		List<NewsInfo> newsInfoLists = new ArrayList<NewsInfo>();
		List<NewsImage> NewsImageList = new ArrayList<NewsImage>();
		List<NewsComment> newsCommentList = new ArrayList<NewsComment>();
		List<NewsInfo> xiangGuanList = new ArrayList<NewsInfo>();
		try {
			newsInfoLists=newsinfoService.getByIdNew(newsId);
		/*	newsInfo = newsinfoService.getByIdNews(newsId);*/
			NewsImageList=newsimageService.getByNewsId(newsId);
			newsCommentList=newscommentService.getByNewsId(newsId);
			xiangGuanList = newsinfoService.getByTypeId(newsInfoLists.get(0).getNewsType().getTypeId());
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		HttpSession session=ServletActionContext.getRequest().getSession();
		if(newsInfoLists!=null){
			session.setAttribute("newsInfoLists", newsInfoLists);
			session.setAttribute("NewsImageList", NewsImageList);
			session.setAttribute("newsCommentList", newsCommentList);
			session.setAttribute("xiangGuanList", xiangGuanList);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public NewsInfoService getNewsinfoService() {
		return newsinfoService;
	}
	public void setNewsinfoService(NewsInfoService newsinfoService) {
		this.newsinfoService = newsinfoService;
	}
	public NewsImageService getNewsimageService() {
		return newsimageService;
	}
	public void setNewsimageService(NewsImageService newsimageService) {
		this.newsimageService = newsimageService;
	}
	public NewsCommentService getNewscommentService() {
		return newscommentService;
	}
	public void setNewscommentService(NewsCommentService newscommentService) {
		this.newscommentService = newscommentService;
	}
	public NewsTypeService getNewsTypeService() {
		return newsTypeService;
	}
	public void setNewsTypeService(NewsTypeService newsTypeService) {
		this.newsTypeService = newsTypeService;
	}
	
}		
