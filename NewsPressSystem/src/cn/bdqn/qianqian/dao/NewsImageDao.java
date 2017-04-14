package cn.bdqn.qianqian.dao;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsImage;
/**
 * 新闻图片信息
 * @author 罗柏林1
 *
 */
public interface NewsImageDao {
	/**
	 * 获取所有的新闻图片
	 * @return
	 */
	public List<NewsImage> getAll();
	/**
	 * 新增图片
	 * @param image
	 * @return
	 */
	public void addImage(NewsImage image);
	/**
	 * 删除图片
	 * @param newsId
	 * @return
	 */
	public void del(int newsId);
	/**
	 * 修改图片
	 * @param image
	 * @return
	 */
	public void update(NewsImage image);
	/**
	 * 根据新闻id查询新闻
	 * @param newsId
	 * @return
	 */
	public List<NewsImage> getByNewsId(int newsId);
}
