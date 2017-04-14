package cn.bdqn.qianqian.dao;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsInfo;
/**
 * 新闻信息接口
 * @author 罗柏林1
 *
 */
public interface NewsInfoDao {
	/**
	 * 获取所有新闻信息
	 * @return
	 */
	public List<NewsInfo> getAll();
	/**
	 * 根据时间倒序显示新闻
	 * @return
	 */
	public List<NewsInfo> getAllByDate();
	/**
	 * 新增新闻信息
	 * @param news
	 * @return
	 */
	public void addNews(NewsInfo news);
	/**
	 * 删除新闻信息
	 * @param newsId
	 * @return
	 */
	public void delNews(int newsId);
	/**
	 * 修改新闻信息
	 * @param news
	 * @return
	 */
	public void updateNews(NewsInfo news);
	/**
	 * 根据id获取新闻信息
	 * @param newsId
	 * @return
	 */
	public NewsInfo getByIdNews(int newsId);
	public List<NewsInfo> getByIdNew(int newsId);
	/**
	 * 根据类型id查询新闻
	 * @param typeId
	 * @return
	 */
	public List<NewsInfo> getByTypeId(int typeId);
	/**
	 * 根据关键字获取新闻信息
	 * @param Keyword
	 * @return
	 */
	public List<NewsInfo> getByKeywordNews(int newsId);
	public List<NewsInfo> getByKeywordNew(String Keyword);
	/**
	 * 根据用户输入的信息查找新闻
	 * @param title
	 * @return
	 */
	public List<NewsInfo> selectByLikeTitle(String title);
	/**
	 * 根据作者查询新闻
	 * @param newsAuther
	 * @return
	 */
	public List<NewsInfo> selectByAuther(String newsAuther);
}
