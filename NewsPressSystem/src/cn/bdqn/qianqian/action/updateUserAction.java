package cn.bdqn.qianqian.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewUserService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class updateUserAction extends ActionSupport{
	private Integer userId;
	private String username;
	private String password;
	private	String email;
	private String numlberId;
	private Long phone;
	private String address;
	private Integer isadmin;
	private NewsUser newsUser;
	private NewUserService newuserService=null;
	
	public String update(){
		try {
			NewsUser user=newuserService.selectById(userId);
			newsUser=new NewsUser(userId,username,user.getUserPassword(),email, numlberId, phone, address,isadmin);
			newuserService.update(newsUser);
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return INPUT;
		}
	}
	public String find(){
		try {
			NewsUser user=newuserService.selectById(userId);
			HttpSession session=ServletActionContext.getRequest().getSession();
			if (user!=null) {
				session.setAttribute("Newsuser", user);
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
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(Integer isadmin) {
		this.isadmin = isadmin;
	}
	public NewsUser getNewsUser() {
		return newsUser;
	}
	public void setNewsUser(NewsUser newsUser) {
		this.newsUser = newsUser;
	}
	public NewUserService getNewuserService() {
		return newuserService;
	}
	public void setNewuserService(NewUserService newuserService) {
		this.newuserService = newuserService;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumlberId() {
		return numlberId;
	}
	public void setNumlberId(String numlberId) {
		this.numlberId = numlberId;
	}
	public Long getPhone() {
		return phone;
	}
	public void setPhone(Long phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
