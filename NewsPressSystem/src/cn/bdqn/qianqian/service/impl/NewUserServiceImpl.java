package cn.bdqn.qianqian.service.impl;

import java.util.List;

import cn.bdqn.qianqian.dao.NewsUserDao;
import cn.bdqn.qianqian.entity.NewsUser;
import cn.bdqn.qianqian.service.NewUserService;

public class NewUserServiceImpl implements NewUserService {

	private NewsUserDao newsuserdao;
	/*
	 * (non-Javadoc)
	 * @see cn.bdqn.qianqian.service.NewUserService#login(cn.bdqn.qianqian.entity.NewsUser)
	 */
	@Override
	public List<NewsUser> login(NewsUser users) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsUser> list=newsuserdao.login(users);
			if (list==null ) {
				return null;
			}
			return list;
		} catch (Exception e) {
			throw new Exception("登录过程中出现错误！");
		} 
	}

	public NewsUserDao getNewsuserdao() {
		return newsuserdao;
	}
	public void setNewsuserdao(NewsUserDao newsuserdao) {
		this.newsuserdao = newsuserdao;
	}

	@Override
	public void register(NewsUser users) throws Exception {
		// TODO Auto-generated method stub
		newsuserdao.register(users);
	}

	@Override
	public NewsUser selectById(int userId) throws Exception {
		// TODO Auto-generated method stub
		return newsuserdao.selectById(userId);
	}

	@Override
	public List<NewsUser> selectByName(String userName) throws Exception {
		// TODO Auto-generated method stub
		return newsuserdao.selectByName(userName);
	}

	@Override
	public List<NewsUser> getAll() throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsUser> list=newsuserdao.getAll();
			if (list==null ) {
				return null;
			}
			return list;
		} catch (Exception e) {
			throw new Exception("登录过程中出现错误！");
		} 
	}

	@Override
	public void delUser(int userId) throws Exception {
		// TODO Auto-generated method stub
		try {
			newsuserdao.delUser(userId);
		} catch (Exception e) {
			throw new Exception("删除过程中出现错误！");
		} 
	}

	@Override
	public void update(NewsUser user) {
		// TODO Auto-generated method stub
		try {
			newsuserdao.update(user);
		} catch (Exception e) {
			try {
				throw new Exception("修改过程中出现错误！"+e);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

}
