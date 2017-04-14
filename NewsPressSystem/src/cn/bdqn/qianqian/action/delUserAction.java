package cn.bdqn.qianqian.action;

import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewUserService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class delUserAction extends ActionSupport{
	private Integer userId;
	private NewUserService newUserService=null;
	public String execute(){try {
		NewsUser user=newUserService.selectById(userId);
		if (user.getIsadmin()==1) {
			return INPUT;
		}else {
			newUserService.delUser(userId);
			return SUCCESS;
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return INPUT;
	}}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public NewUserService getNewUserService() {
		return newUserService;
	}
	public void setNewUserService(NewUserService newUserService) {
		this.newUserService = newUserService;
	}
	
}
