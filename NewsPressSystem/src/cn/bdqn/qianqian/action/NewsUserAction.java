package cn.bdqn.qianqian.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewUserService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class NewsUserAction	extends ActionSupport{
		
	private String username;
	private String password;
	private NewsUser newsUser;
	private NewUserService newsUserService=null;
	private List<NewsUser> newuser=new ArrayList<NewsUser>();
	@Override
	public String execute()throws Exception{
		newsUser=new NewsUser(username, password);
		try {
			newuser=newsUserService.login(newsUser);
		} catch (Exception e) {
			this.addActionMessage(e.getMessage());
		}
		if (newuser.size()<1) {
			return INPUT;
		}else{
			HttpSession session=ServletActionContext.getRequest().getSession();
			NewsUser use=newuser.get(0);
			session.setAttribute("newUser", use);
			return SUCCESS;
		}
	}
	public List<NewsUser> getNewuser() {
		return newuser;
	}
	public void setNewuser(List<NewsUser> newuser) {
		this.newuser = newuser;
	}

	public NewsUser getNewsUser() {
		return newsUser;
	}
	public void setNewsUser(NewsUser newsUser) {
		this.newsUser = newsUser;
	}
	public NewUserService getNewsUserService() {
		return newsUserService;
	}
	public void setNewsUserService(NewUserService newsUserService) {
		this.newsUserService = newsUserService;
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
}	
