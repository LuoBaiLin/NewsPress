package cn.bdqn.qianqian.service.impl;

import java.util.List;

import cn.bdqn.qianqian.dao.NewsCommentDao;
import cn.bdqn.qianqian.entity.NewsComment;
import cn.bdqn.qianqian.service.NewsCommentService;

public class NewsCommentServiceImpl implements NewsCommentService{
	private NewsCommentDao newscommentdao;
	/*
	 * (non-Javadoc)
	 * @see cn.bdqn.qianqian.service.NewsCommentService#getAll()
	 */
	@Override
	public List<NewsComment> getAll() throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsComment> list=newscommentdao.getAll();
			if (list==null) {
				return null;
			}
			return list;
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}
	/*
	 * (non-Javadoc)
	 * @see cn.bdqn.qianqian.service.NewsCommentService#getByUserId(int)
	 */
	@Override
	public List<NewsComment> getByUserId(int userId) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsComment> list=newscommentdao.getByUserId(userId);
			if (list==null) {
				return null;
			}
			return list;
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}
	/*
	 * (non-Javadoc)
	 * @see cn.bdqn.qianqian.service.NewsCommentService#getByNewsId(int)
	 */
	@Override
	public List<NewsComment> getByNewsId(int NewsId) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsComment> list=newscommentdao.getByNewsId(NewsId);
			if (list==null) {
				return null;
			}
			return list;
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}
	/*
	 * (non-Javadoc)
	 * @see cn.bdqn.qianqian.service.NewsCommentService#addComment(cn.bdqn.qianqian.entity.NewsComment)
	 */
	@Override
	public void addComment(NewsComment comment) throws Exception {
		// TODO Auto-generated method stub
		try {
			newscommentdao.addComment(comment);
		} catch (Exception e) {
			throw new Exception("添加过程中出现错误！");
		} 
	}

	public NewsCommentDao getNewscommentdao() {
		return newscommentdao;
	}

	public void setNewscommentdao(NewsCommentDao newscommentdao) {
		this.newscommentdao = newscommentdao;
	}
}
