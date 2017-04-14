package cn.bdqn.qianqian.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * newsType
 */
@SuppressWarnings("serial")
public class NewsType implements Serializable {

	private Integer typeId;
	private String typeTitle;
	private Set<NewsInfo> newsInfos = new HashSet<NewsInfo>();
	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTypeTitle() {
		return typeTitle;
	}
	public void setTypeTitle(String typeTitle) {
		this.typeTitle = typeTitle;
	}
	public Set<NewsInfo> getNewsInfos() {
		return newsInfos;
	}
	public void setNewsInfos(Set<NewsInfo> newsInfos) {
		this.newsInfos = newsInfos;
	}
	
	public NewsType() {
	}
	
	public NewsType(String typeTitle, Set<NewsInfo> newsInfos) {
		this.typeTitle = typeTitle;
		this.newsInfos = newsInfos;
	}
	
	public NewsType(Integer typeId, String typeTitle, Set<NewsInfo> newsInfos) {
		this.typeId = typeId;
		this.typeTitle = typeTitle;
		this.newsInfos = newsInfos;
	}
	public NewsType(Integer typeId) {
		this.typeId = typeId;
	}

	
}
