package cn.bdqn.qianqian.service;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsComment;

public interface NewsCommentService {

	/**
	 * 获取所有留言
	 * @return
	 */
	public List<NewsComment> getAll() throws Exception;
	/**
	 * 根据用户id查询评论信息
	 * @param userId
	 * @return
	 */
	public List<NewsComment> getByUserId(int userId) throws Exception;
	/**
	 * 根据新闻id查询评论信息
	 * @param NewsId
	 * @return
	 */
	public List<NewsComment> getByNewsId(int NewsId) throws Exception;
	/**
	 * 新增评论信息
	 * @param comment
	 * @return
	 */
	public void addComment(NewsComment comment) throws Exception;

}
