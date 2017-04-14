package cn.bdqn.qianqian.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import cn.bdqn.qianqian.entity.NewsImage;
import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewUserService;
import cn.bdqn.qianqian.service.NewsImageService;
import cn.bdqn.qianqian.service.NewsInfoService;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AllNewsAction extends ActionSupport{
	private NewsInfoService infoService=null;
	private NewsImageService imageService=null;
	private NewUserService newUserService=null;
	public String execute(){
		List<NewsInfo> newsInfos=new ArrayList<NewsInfo>();
		List<NewsImage> newsImage=new ArrayList<NewsImage>();
		List<NewsUser> NewsUser=new ArrayList<NewsUser>();
		try {
			newsInfos=infoService.getAll();
			newsImage=imageService.getAll();
			NewsUser=newUserService.getAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		HttpSession session=ServletActionContext.getRequest().getSession();
		if(newsInfos!=null){
			session.setAttribute("allImageNews", newsImage);
			session.setAttribute("newsInfo", newsInfos);
			session.setAttribute("NewsUser", NewsUser);
			return SUCCESS;
		}else{
			return INPUT;
		}
	}

	public NewUserService getNewUserService() {
		return newUserService;
	}

	public void setNewUserService(NewUserService newUserService) {
		this.newUserService = newUserService;
	}

	public NewsInfoService getInfoService() {
		return infoService;
	}
	public void setInfoService(NewsInfoService infoService) {
		this.infoService = infoService;
	}
	public NewsImageService getImageService() {
		return imageService;
	}
	public void setImageService(NewsImageService imageService) {
		this.imageService = imageService;
	}
}
