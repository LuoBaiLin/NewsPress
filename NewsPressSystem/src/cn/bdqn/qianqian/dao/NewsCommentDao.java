package cn.bdqn.qianqian.dao;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsComment;
/**
 * 新闻留言信息
 * @author 罗柏林1
 *
 */
public interface NewsCommentDao {
	/**
	 * 获取所有留言
	 * @return
	 */
	public List<NewsComment> getAll();
	/**
	 * 根据用户id查询评论信息
	 * @param userId
	 * @return
	 */
	public List<NewsComment> getByUserId(int userId);
	/**
	 * 根据新闻id查询评论信息
	 * @param NewsId
	 * @return
	 */
	public List<NewsComment> getByNewsId(int NewsId);
	/**
	 * 新增评论信息
	 * @param comment
	 * @return
	 */
	public void addComment(NewsComment comment);
}
