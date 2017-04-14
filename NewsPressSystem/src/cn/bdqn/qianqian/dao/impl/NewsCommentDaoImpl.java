package cn.bdqn.qianqian.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.bdqn.qianqian.dao.NewsCommentDao;
import cn.bdqn.qianqian.entity.NewsComment;

public class NewsCommentDaoImpl extends HibernateDaoSupport implements NewsCommentDao{

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsComment> getAll() {
		// TODO Auto-generated method stub
		 List<NewsComment> list = this.getHibernateTemplate().find("from NewsComment");  
	     return list; 
	   
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsComment> getByUserId(int userId) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate()
				.find("from NewsComment e where e.newsUser.userId="+userId+"");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsComment> getByNewsId(int NewsId) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate()
				.find("from NewsComment e where e.newsInfo.newsId="+NewsId+"");
	}

	@Override
	public void addComment(NewsComment comment) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().save(comment);
	}
}
