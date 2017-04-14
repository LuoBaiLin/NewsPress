package cn.bdqn.qianqian.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * NEWS
 */
@SuppressWarnings("serial")
public class NewsInfo implements Serializable {

	private Integer newsId;
	private NewsType newsType;
	private String newsTitle;
	private String newsContent;
	private String newsSmalltitle;
	private Date newsStarttime;
	private String newsAuther;
	private String newsKeyword;
	private Integer newsBorwse;
	private String newsSmallcontent;
	private Set<NewsImage> NewsImages = new HashSet<NewsImage>();
	private Set<NewsComment> newsComments = new HashSet<NewsComment>();
	public Integer getNewsId() {
		return newsId;
	}
	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}
	public NewsType getNewsType() {
		return newsType;
	}
	public void setNewsType(NewsType newsType) {
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
	public Date getNewsStarttime() {
		return newsStarttime;
	}
	public void setNewsStarttime(Date newsStarttime) {
		this.newsStarttime = newsStarttime;
	}
	public String getNewsAuther() {
		return newsAuther;
	}
	public void setNewsAuther(String newsAuther) {
		this.newsAuther = newsAuther;
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
	public Set<NewsImage> getNewsImages() {
		return NewsImages;
	}
	public void setNewsImages(Set<NewsImage> newsImages) {
		NewsImages = newsImages;
	}
	public Set<NewsComment> getNewsComments() {
		return newsComments;
	}
	public void setNewsComments(Set<NewsComment> newsComments) {
		this.newsComments = newsComments;
	}
	public NewsInfo() {
	}
	public NewsInfo(Integer newsId) {
		this.newsId = newsId;
	}
	public NewsInfo(NewsType newsType, String newsTitle, String newsContent,
			String newsSmalltitle, Date newsStarttime, String newsAuther,
			String newsKeyword, Integer newsBorwse, String newsSmallcontent) {
		this.newsType = newsType;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsSmalltitle = newsSmalltitle;
		this.newsStarttime = newsStarttime;
		this.newsAuther = newsAuther;
		this.newsKeyword = newsKeyword;
		this.newsBorwse = newsBorwse;
		this.newsSmallcontent = newsSmallcontent;
	}
	public NewsInfo(Integer newsId, NewsType newsType, String newsTitle,
			String newsContent, String newsSmalltitle, Date newsStarttime,
			String newsAuther, String newsKeyword, Integer newsBorwse,
			String newsSmallcontent) {
		this.newsId = newsId;
		this.newsType = newsType;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsSmalltitle = newsSmalltitle;
		this.newsStarttime = newsStarttime;
		this.newsAuther = newsAuther;
		this.newsKeyword = newsKeyword;
		this.newsBorwse = newsBorwse;
		this.newsSmallcontent = newsSmallcontent;
	}
	

}
