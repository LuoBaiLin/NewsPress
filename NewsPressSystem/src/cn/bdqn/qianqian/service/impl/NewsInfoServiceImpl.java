package cn.bdqn.qianqian.service.impl;

import java.util.List;

import cn.bdqn.qianqian.dao.NewsInfoDao;
import cn.bdqn.qianqian.entity.NewsInfo;
import cn.bdqn.qianqian.service.NewsInfoService;

public class NewsInfoServiceImpl implements NewsInfoService {
	private NewsInfoDao newsinfodao;
	@Override
	public List<NewsInfo> getAll() throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsInfo> list=newsinfodao.getAll();
			if (list==null ) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！"+e);
		} 
	}

	@Override
	public List<NewsInfo> getAllByDate() throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsInfo> list=newsinfodao.getAll();
			if (list==null ) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	@Override
	public void addNews(NewsInfo news) throws Exception {
		// TODO Auto-generated method stub
		try {
			newsinfodao.addNews(news);
		} catch (Exception e) {
			throw new Exception("添加过程中出现错误！");
		} 
	}

	@Override
	public void delNews(int newsId) throws Exception {
		// TODO Auto-generated method stub
		try {
			newsinfodao.delNews(newsId);
		} catch (Exception e) {
			throw new Exception("删除过程中出现错误！");
		} 
	}

	@Override
	public void updateNews(NewsInfo news) throws Exception {
		// TODO Auto-generated method stub
		try {
			newsinfodao.updateNews(news);
		} catch (Exception e) {
			throw new Exception("修改过程中出现错误！");
		} 
	}

	@Override
	public NewsInfo getByIdNews(int newsId) throws Exception {
		// TODO Auto-generated method stub
		try {
			NewsInfo list=newsinfodao.getByIdNews(newsId);
			if (list==null) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	@Override
	public List<NewsInfo> getByTypeId(int typeId) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsInfo> list=newsinfodao.getByTypeId(typeId);
			if (list==null ) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	@Override
	public List<NewsInfo> getByKeywordNews(int newsId) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsInfo> list=newsinfodao.getByKeywordNews(newsId);
			if (list==null ) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！"+e);
		} 
	}

	@Override
	public List<NewsInfo> selectByLikeTitle(String title) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsInfo> list=newsinfodao.selectByLikeTitle(title);
			if (list==null ) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	@Override
	public List<NewsInfo> selectByAuther(String newsAuther) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsInfo> list=newsinfodao.selectByAuther(newsAuther);
			if (list==null ) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	public NewsInfoDao getNewsinfodao() {
		return newsinfodao;
	}

	public void setNewsinfodao(NewsInfoDao newsinfodao) {
		this.newsinfodao = newsinfodao;
	}

	@Override
	public List<NewsInfo> getByIdNew(int newsId) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsInfo> list=newsinfodao.getByIdNew(newsId);
			if (list==null) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	@Override
	public List<NewsInfo> getByKeywordNew(String Keyword) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsInfo> list=newsinfodao.getByKeywordNew(Keyword);
			if (list==null ) {
				return null;
			}else{
				return list;
			}
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！"+e);
		} 
	}
}
