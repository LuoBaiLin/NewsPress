package cn.bdqn.qianqian.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.bdqn.qianqian.dao.NewsTypeDao;
import cn.bdqn.qianqian.entity.NewsType;

public class NewsTypeDaoImpl  extends HibernateDaoSupport  implements NewsTypeDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsType> getAll() {
		// TODO Auto-generated method stub
	     List<NewsType> list = this.getHibernateTemplate().find("from NewsType");  
	     return list;  
	}

	@Override
	public void addType(NewsType type) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().save(type);
	}

	@Override
	public void delType(int typeId) {
		// TODO Auto-generated method stub
		NewsType type=new NewsType(typeId);
		super.getHibernateTemplate().delete(type);
	}

	@Override
	public void updateType(NewsType type) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().update(type);;
	}
	}
