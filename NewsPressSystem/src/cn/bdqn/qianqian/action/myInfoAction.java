package cn.bdqn.qianqian.action;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsComment;
import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewUserService;
import cn.bdqn.qianqian.service.NewsCommentService;
import cn.bdqn.qianqian.service.NewsInfoService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class myInfoAction extends ActionSupport{
	
	private String userName;
	private String userPwd;
	private String userEmail;
	private String userIdNumber;
	private Long userPhone;
	private String userAddress;
	private Integer isadmin=0;
	private NewUserService newUserService=null;
	private NewsCommentService commentService=null;
	private NewsInfoService newsInfoService=null;
	/**
	 * 修改个人新闻
	 * @return
	 */
	public String update(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		NewsUser us=(NewsUser) session.getAttribute("newUser");
		NewsUser user=new NewsUser(us.getUserId(), userName, userPwd,
				userEmail, userIdNumber, userPhone, userAddress, isadmin);
		newUserService.update(user);
		return SUCCESS;
	}
	/**
	 * 注销账号
	 * @return
	 */
	public String delUser(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		NewsUser user=(NewsUser) session.getAttribute("newUser");
		try {
			newUserService.delUser(user.getUserId());
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return INPUT;
		}
	}
	public String findNewsByUserId(){
		HttpSession session=ServletActionContext.getRequest().getSession();
		NewsUser user=(NewsUser) session.getAttribute("newUser");
		try {
			List<NewsComment> comm=commentService.getByUserId(user.getUserId());
			List<NewsInfo> info=new ArrayList<NewsInfo>();
			for (int i = 0; i < comm.size(); i++) {
				info=newsInfoService.getByIdNew(comm.get(i).getNewsInfo().getNewsId());
			}
			session.setAttribute("comm", comm);
			session.setAttribute("info", info);
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return INPUT;
		}
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserIdNumber() {
		return userIdNumber;
	}
	public void setUserIdNumber(String userIdNumber) {
		this.userIdNumber = userIdNumber;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Long getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(Long userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public Integer getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(Integer isadmin) {
		this.isadmin = isadmin;
	}
	public NewUserService getNewUserService() {
		return newUserService;
	}
	public void setNewUserService(NewUserService newUserService) {
		this.newUserService = newUserService;
	}
	public NewsCommentService getCommentService() {
		return commentService;
	}
	public void setCommentService(NewsCommentService commentService) {
		this.commentService = commentService;
	}
	public NewsInfoService getNewsInfoService() {
		return newsInfoService;
	}
	public void setNewsInfoService(NewsInfoService newsInfoService) {
		this.newsInfoService = newsInfoService;
	}
	}
