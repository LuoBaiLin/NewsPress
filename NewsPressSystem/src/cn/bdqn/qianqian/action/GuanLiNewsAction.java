package cn.bdqn.qianqian.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.entity.NewsType;
import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewsInfoService;
import cn.bdqn.qianqian.service.NewsTypeService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class GuanLiNewsAction extends ActionSupport{
	private Integer newsId;
	/**
	 * 新增新闻属性
	 */
	private int newsType;
	private String newsTitle;
	private String newsContent;
	private String newsSmalltitle;
	private String newsKeyword;
	private Integer newsBorwse=0;
	private String newsSmallcontent;
	
	
	private String newsTitles;
	private String KeyWords;
	private int newsTypes;
	private String newsSmalltitles;
	private String newsContents;
	private String newsSmallcontents;
	
	private NewsInfoService newsInfoService=null;
	private NewsTypeService  newsTypeService=null;
	/**
	 * 根据作者查找自己所发布的新闻
	 * @return
	 */
	public String findNewsByAuther(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		NewsUser newUser=(NewsUser) session.getAttribute("newUser");
		List<NewsInfo> autherList=new ArrayList<NewsInfo>();
		try {
			autherList=newsInfoService.selectByAuther(newUser.getUserName());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (autherList!=null) {
			session.setAttribute("authNews", autherList);
			return SUCCESS;
		}else{
			return SUCCESS;
		}
	}
	/**
	 * 新增新闻
	 * @return
	 */
	public String addNews(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		NewsUser newUser=(NewsUser) session.getAttribute("newUser");
		NewsType type=new NewsType(newsType);
		String auther=newUser.getUserName();
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//date
		String date=df.format(new Date());
		Date da = null;
		try {
			da = df.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		NewsInfo newsInfo=new NewsInfo(type, newsTitle, newsContent, newsSmalltitle,
				da, auther, newsKeyword, newsBorwse, newsSmallcontent);
		try {
			newsInfoService.addNews(newsInfo);
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return INPUT;
		}
	
	}
	/**
	 * 根据新闻id修改新闻
	 * @return
	 */
	public String findNewsById(){
		try {
			NewsInfo news=newsInfoService.getByIdNews(newsId);
			HttpSession session=ServletActionContext.getRequest().getSession();
			if (news!=null) {
				session.setAttribute("newsInfos", news);
				return SUCCESS;
			}else {
				return INPUT;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return INPUT;
		}
	}
	/**
	 * 修改新闻
	 * @return
	 */
	public String updateNewsById(){
		try {
			HttpSession session=ServletActionContext.getRequest().getSession();
			NewsUser newUser=(NewsUser) session.getAttribute("newUser");
			NewsInfo news=newsInfoService.getByIdNews(newsId);
			int browse=10;
			NewsType type=new NewsType(newsTypes);
			NewsInfo newsInfo=new NewsInfo(newsId,type, newsTitles, newsContents, newsSmalltitles,
					news.getNewsStarttime(), newUser.getUserName(), KeyWords, browse, newsSmallcontents);
			newsInfoService.updateNews(newsInfo);
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return INPUT;
		}
	}
	public String getNewsTitles() {
		return newsTitles;
	}
	public void setNewsTitles(String newsTitles) {
		this.newsTitles = newsTitles;
	}
	public String getKeyWords() {
		return KeyWords;
	}
	public void setKeyWords(String keyWords) {
		KeyWords = keyWords;
	}
	public int getNewsTypes() {
		return newsTypes;
	}
	public void setNewsTypes(int newsTypes) {
		this.newsTypes = newsTypes;
	}
	public String getNewsSmalltitles() {
		return newsSmalltitles;
	}
	public void setNewsSmalltitles(String newsSmalltitles) {
		this.newsSmalltitles = newsSmalltitles;
	}
	public String getNewsContents() {
		return newsContents;
	}
	public void setNewsContents(String newsContents) {
		this.newsContents = newsContents;
	}
	public String getNewsSmallcontents() {
		return newsSmallcontents;
	}
	public void setNewsSmallcontents(String newsSmallcontents) {
		this.newsSmallcontents = newsSmallcontents;
	}
	public NewsTypeService getNewsTypeService() {
		return newsTypeService;
	}
	public void setNewsTypeService(NewsTypeService newsTypeService) {
		this.newsTypeService = newsTypeService;
	}
	public NewsInfoService getNewsInfoService() {
		return newsInfoService;
	}

	public void setNewsInfoService(NewsInfoService newsInfoService) {
		this.newsInfoService = newsInfoService;
	}
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public int getNewsType() {
		return newsType;
	}
	public void setNewsType(int newsType) {
		this.newsType = newsType;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public String getNewsSmalltitle() {
		return newsSmalltitle;
	}
	public void setNewsSmalltitle(String newsSmalltitle) {
		this.newsSmalltitle = newsSmalltitle;
	}
	public String getNewsKeyword() {
		return newsKeyword;
	}
	public void setNewsKeyword(String newsKeyword) {
		this.newsKeyword = newsKeyword;
	}
	public Integer getNewsBorwse() {
		return newsBorwse;
	}
	public void setNewsBorwse(Integer newsBorwse) {
		this.newsBorwse = newsBorwse;
	}
	public String getNewsSmallcontent() {
		return newsSmallcontent;
	}
	public void setNewsSmallcontent(String newsSmallcontent) {
		this.newsSmallcontent = newsSmallcontent;
	}
}
