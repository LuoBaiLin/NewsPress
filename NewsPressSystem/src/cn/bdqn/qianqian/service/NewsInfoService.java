package cn.bdqn.qianqian.service;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsInfo;

public interface NewsInfoService {

	/**
	 * 获取所有新闻信息
	 * @return
	 */
	public List<NewsInfo> getAll() throws Exception;
	/**
	 * 根据时间倒序显示新闻
	 * @return
	 */
	public List<NewsInfo> getAllByDate() throws Exception;
	/**
	 * 新增新闻信息
	 * @param news
	 * @return
	 */
	public void addNews(NewsInfo news) throws Exception;
	/**
	 * 删除新闻信息
	 * @param newsId
	 * @return
	 */
	public void delNews(int newsId) throws Exception;
	/**
	 * 修改新闻信息
	 * @param news
	 * @return
	 */
	public void updateNews(NewsInfo news) throws Exception;
	/**
	 * 根据id获取新闻信息
	 * @param newsId
	 * @return
	 */
	public NewsInfo getByIdNews(int newsId) throws Exception;
	public List<NewsInfo> getByIdNew(int newsId) throws Exception;
	/**
	 * 根据类型id查询新闻
	 * @param typeId
	 * @return
	 */
	public List<NewsInfo> getByTypeId(int typeId) throws Exception;
	/**
	 * 根据关键字获取新闻信息
	 * @param Keyword
	 * @return
	 */
	public List<NewsInfo> getByKeywordNews(int newsId) throws Exception;
	public List<NewsInfo> getByKeywordNew(String Keyword) throws Exception;
	/**
	 * 根据用户输入的信息查找新闻
	 * @param title
	 * @return
	 */
	public List<NewsInfo> selectByLikeTitle(String title) throws Exception;
	/**
	 * 根据作者查询新闻
	 * @param newsAuther
	 * @return
	 */
	public List<NewsInfo> selectByAuther(String newsAuther) throws Exception;

}
