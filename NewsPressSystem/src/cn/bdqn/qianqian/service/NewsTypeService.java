package cn.bdqn.qianqian.service;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsType;

public interface NewsTypeService {
	/**
	 * 获取所有类型
	 * @return
	 */
	public List<NewsType> getAll() throws Exception;
	/**
	 * 新增类型
	 * @param type
	 * @return
	 */
	public void addType(NewsType type) throws Exception;
	/**
	 * 删除类型
	 * @param typeId
	 * @return
	 */
	public void delType(int typeId) throws Exception;
	/**
	 * 修改类型
	 * @param type
	 * @return
	 */
	public void updateType(NewsType type) throws Exception;
}
