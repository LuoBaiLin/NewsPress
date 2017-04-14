package cn.bdqn.qianqian.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.bdqn.qianqian.dao.NewsImageDao;
import cn.bdqn.qianqian.entity.NewsImage;
import cn.bdqn.qianqian.entity.NewsInfo;

public class NewsImageDaoImpl extends HibernateDaoSupport implements NewsImageDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsImage> getAll() {
		// TODO Auto-generated method stub
	    List<NewsImage> list = this.getHibernateTemplate().find("from NewsImage");  
        return list;  
	}

	@Override
	public void addImage(NewsImage image) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().save(image);
	}

	@Override
	public void del(int newsId) {
		// TODO Auto-generated method stub
		NewsInfo info=new NewsInfo(newsId);
		super.getHibernateTemplate().delete(info);
	}

	@Override
	public void update(NewsImage image) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().update(image);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsImage> getByNewsId(int newsId) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate()
				.find("from NewsImage e where e.newsInfo.newsId="+newsId+"");
	}}
