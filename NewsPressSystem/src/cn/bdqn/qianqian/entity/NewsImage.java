package cn.bdqn.qianqian.entity;

import java.io.Serializable;
import java.sql.Blob;


/**
 * IMAGE
 */
@SuppressWarnings("serial")
public class NewsImage  implements Serializable { 
	private Integer imageNewsId;
	private NewsInfo newsInfo;
	private Blob newsImage;
	public Integer getImageNewsId() {
		return imageNewsId;
	}
	public void setImageNewsId(Integer imageNewsId) {
		this.imageNewsId = imageNewsId;
	}
	public NewsInfo getNewsInfo() {
		return newsInfo;
	}
	public void setNewsInfo(NewsInfo newsInfo) {
		this.newsInfo = newsInfo;
	}
	public Blob getNewsImage() {
		return newsImage;
	}
	public void setNewsImage(Blob newsImage) {
		this.newsImage = newsImage;
	}
	public NewsImage() {
	}
	public NewsImage(NewsInfo newsInfo, Blob newsImage) {
		this.newsInfo = newsInfo;
		this.newsImage = newsImage;
	}
	}
