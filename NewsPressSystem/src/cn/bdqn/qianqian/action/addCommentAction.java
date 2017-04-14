package cn.bdqn.qianqian.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsComment;
import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewsCommentService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class addCommentAction extends ActionSupport{
		private NewsCommentService commentService=null;
		private String comment;
		@SuppressWarnings("unchecked")
		public String execute(){
			String  comms  = comment.replaceAll("</?[^>]+>", "");
			HttpSession session=ServletActionContext.getRequest().getSession();
			List<NewsInfo> newsInfolist1=(List<NewsInfo>) session.getAttribute("keyWordList");
			List<NewsInfo> newsInfolist2=(List<NewsInfo>) session.getAttribute("newsInfoLists");
			NewsUser user=(NewsUser) session.getAttribute("newUser");
			SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//date
			String date=df.format(new Date());
			Date da = null;
			try {
				da = df.parse(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (newsInfolist1!=null) {
				NewsInfo newsInfo1=newsInfolist1.get(0);
				NewsComment comm=new NewsComment(newsInfo1, user, comms, da);
				try {
					commentService.addComment(comm);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
 				return SUCCESS;
			}else if(newsInfolist2!=null){
				NewsInfo newsInfo2=newsInfolist2.get(0);
				NewsComment comm=new NewsComment(newsInfo2, user, comms, da);
				try {
					commentService.addComment(comm);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "success2";
			}else {
				return INPUT;
			}
		}
		
		public String getComment() {
			return comment;
		}
		public void setComment(String comment) {
			this.comment = comment;
		}
		public NewsCommentService getCommentService() {
			return commentService;
		}
		public void setCommentService(NewsCommentService commentService) {
			this.commentService = commentService;
		}
}
