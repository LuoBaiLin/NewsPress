package cn.bdqn.qianqian.action;

import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewUserService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class registerAction extends ActionSupport{
	private String username;
	private String password;
	private	String email;
	private String IDnumber;
	private Long phone;
	private String address;
	private NewsUser newsUser;
	private int isadmin=0;
	private NewUserService newuserService=null;
	@Override
	public String execute(){
		String name=null;
		String addresss=null;
		 try {
			 name=new String(username.getBytes("iso-8859-1"),"utf-8");
			 addresss=new String(address.getBytes("iso-8859-1"),"utf-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		newsUser=new NewsUser(name, password, email, IDnumber, phone, addresss,isadmin);
		try {
			newuserService.register(newsUser);
			return SUCCESS;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return INPUT;
		}
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
	public String getIDnumber() {
		return IDnumber;
	}
	public void setIDnumber(String iDnumber) {
		IDnumber = iDnumber;
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
	public NewUserService getNewuserService() {
		return newuserService;
	}
	public void setNewuserService(NewUserService newuserService) {
		this.newuserService = newuserService;
	}
	public NewsUser getNewsUser() {
		return newsUser;
	}
	public void setNewsUser(NewsUser newsUser) {
		this.newsUser = newsUser;
	}
	
}
