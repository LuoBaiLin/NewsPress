package cn.bdqn.qianqian.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * COMMENT
 */
@SuppressWarnings("serial")
public class NewsComment implements Serializable {
		private Integer commentId;
		private NewsInfo newsInfo;
		private NewsUser newsUser;
		private String commentInfo;
		private Date commentTime;
		public Integer getCommentId() {
			return commentId;
		}
		public void setCommentId(Integer commentId) {
			this.commentId = commentId;
		}
		public NewsInfo getNewsInfo() {
			return newsInfo;
		}
		public void setNewsInfo(NewsInfo newsInfo) {
			this.newsInfo = newsInfo;
		}
		public NewsUser getNewsUser() {
			return newsUser;
		}
		public void setNewsUser(NewsUser newsUser) {
			this.newsUser = newsUser;
		}
		public String getCommentInfo() {
			return commentInfo;
		}
		public void setCommentInfo(String commentInfo) {
			this.commentInfo = commentInfo;
		}
		public Date getCommentTime() {
			return commentTime;
		}
		public void setCommentTime(Date commentTime) {
			this.commentTime = commentTime;
		}
		public NewsComment() {
		}
		public NewsComment(NewsInfo newsInfo, NewsUser newsUser,
				String commentInfo, Date commentTime) {
			this.newsInfo = newsInfo;
			this.newsUser = newsUser;
			this.commentInfo = commentInfo;
			this.commentTime = commentTime;
		}
		
}
