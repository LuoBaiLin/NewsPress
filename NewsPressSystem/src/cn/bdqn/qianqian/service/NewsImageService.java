package cn.bdqn.qianqian.service;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsImage;

public interface NewsImageService {

	/**
	 * 获取所有的新闻图片
	 * @return
	 */
	public List<NewsImage> getAll() throws Exception;
	/**
	 * 新增图片
	 * @param image
	 * @return
	 */
	public void addImage(NewsImage image) throws Exception;
	/**
	 * 删除图片
	 * @param newsId
	 * @return
	 */
	public void del(int newsId) throws Exception;
	/**
	 * 修改图片
	 * @param image
	 * @return
	 */
	public void update(NewsImage image) throws Exception;
	/**
	 * 根据新闻id查询新闻
	 * @param newsId
	 * @return
	 */
	public List<NewsImage> getByNewsId(int newsId) throws Exception;

}
