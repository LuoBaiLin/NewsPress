package cn.bdqn.qianqian.dao;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsType;
/**
 * 新闻类型接口
 * @author 罗柏林1
 *
 */
public interface NewsTypeDao {
	/**
	 * 获取所有类型
	 * @return
	 */
	public List<NewsType> getAll();
	/**
	 * 新增类型
	 * @param type
	 * @return
	 */
	public void addType(NewsType type);
	/**
	 * 删除类型
	 * @param typeId
	 * @return
	 */
	public void delType(int typeId);
	/**
	 * 修改类型
	 * @param type
	 * @return
	 */
	public void updateType(NewsType type);
}
