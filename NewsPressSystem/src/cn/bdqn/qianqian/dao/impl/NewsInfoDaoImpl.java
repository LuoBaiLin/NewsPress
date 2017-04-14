package cn.bdqn.qianqian.dao.impl;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.bdqn.qianqian.dao.NewsInfoDao;
import cn.bdqn.qianqian.entity.NewsInfo;

public class NewsInfoDaoImpl extends HibernateDaoSupport implements NewsInfoDao {
	private JdbcTemplate jdbcTemplate;
	@SuppressWarnings("unchecked")
	@Override
	public List<NewsInfo> getAll() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from NewsInfo");  
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<NewsInfo> getAllByDate() {
		// TODO Auto-generated method stub
		 String hql = "from NewsInfo i order by i.newsStarttime desc";  
		 return this.getHibernateTemplate().find(hql);  
	}

	@Override
	public void addNews(NewsInfo news) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().save(news);
	}

	@Override
	public void delNews(int newsId) {
		// TODO Auto-generated method stub
		NewsInfo user = (NewsInfo) this.getHibernateTemplate().get(NewsInfo.class, newsId);
		super.getHibernateTemplate().delete(user);
	}

	@Override
	public void updateNews(NewsInfo news) {
		// TODO Auto-generated method stub
		super.getHibernateTemplate().update(news);
	}
	@Override
	public NewsInfo getByIdNews(int newsId) {
		// TODO Auto-generated method stub
       return super.getHibernateTemplate().get(NewsInfo.class, newsId);  
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsInfo> getByTypeId(int typeId) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate()
				.find("from NewsInfo e where e.newsType.typeId="+typeId+"");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsInfo> getByKeywordNews(int newsId) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate()
				.find("from NewsInfo e where e.newsId="+newsId+"");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsInfo> selectByLikeTitle(String title) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().find("from NewsInfo where newsTitle='"+title+"'");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsInfo> selectByAuther(String newsAuther) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().find("from NewsInfo r where r.newsAuther='"+newsAuther+"'");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsInfo> getByIdNew(int newsId) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate()
				.find("from NewsInfo e where e.newsId="+newsId+"");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<NewsInfo> getByKeywordNew(String Keyword) {
		// TODO Auto-generated method stub
		return super.getHibernateTemplate().find("from NewsInfo where newsKeyword='"+Keyword+"'");
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	}
