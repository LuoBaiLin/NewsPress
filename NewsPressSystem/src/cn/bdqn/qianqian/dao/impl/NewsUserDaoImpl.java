package cn.bdqn.qianqian.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.bdqn.qianqian.dao.NewsUserDao;
import cn.bdqn.qianqian.entity.NewsUser;

public class NewsUserDaoImpl extends HibernateDaoSupport implements NewsUserDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsUser> login(NewsUser users) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().find(
				"from NewsUser e where e.userName= '"+ users.getUserName() +
				"'  and e.userPassword= '"+ users.getUserPassword() +"'");
	}

	@Override
	public void register(NewsUser users) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().save(users);
	}

	@Override
	public NewsUser selectById(int userId) {
		// TODO Auto-generated method stub
		NewsUser newsUser = (NewsUser) getHibernateTemplate().get(
		NewsUser.class, userId);
		return newsUser;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsUser> selectByName(String userName) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().findByNamedQuery(userName);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsUser> getAll() {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().find("from NewsUser");  
	}

	@Override
	public void delUser(int userId) {
		// TODO Auto-generated method stub
		NewsUser user = (NewsUser) this.getHibernateTemplate().get(NewsUser.class, userId);
		super.getHibernateTemplate().delete(user);
	}

	@Override
	public void update(NewsUser user) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().update(user);
	}
}
