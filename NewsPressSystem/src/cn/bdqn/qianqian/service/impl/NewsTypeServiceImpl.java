package cn.bdqn.qianqian.service.impl;

import java.util.List;

import cn.bdqn.qianqian.dao.NewsTypeDao;
import cn.bdqn.qianqian.entity.NewsType;
import cn.bdqn.qianqian.service.NewsTypeService;

public class NewsTypeServiceImpl implements NewsTypeService {
	private NewsTypeDao newstypedao;

	@Override
	public List<NewsType> getAll() throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsType> list=newstypedao.getAll();
			if (list==null) {
				return null;
			}
			return list;
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	@Override
	public void addType(NewsType type) throws Exception {
		// TODO Auto-generated method stub
		try {
			newstypedao.addType(type);
		} catch (Exception e) {
			throw new Exception("添加过程中出现错误！");
		} 
	}

	@Override
	public void delType(int typeId) throws Exception {
		// TODO Auto-generated method stub
		try {
			newstypedao.delType(typeId);
		} catch (Exception e) {
			throw new Exception("删除过程中出现错误！");
		} 
	}

	@Override
	public void updateType(NewsType type) throws Exception {
		// TODO Auto-generated method stub
		try {
			newstypedao.updateType(type);
		} catch (Exception e) {
			throw new Exception("修改过程中出现错误！");
		} 
	}

	public NewsTypeDao getNewstypedao() {
		return newstypedao;
	}

	public void setNewstypedao(NewsTypeDao newstypedao) {
		this.newstypedao = newstypedao;
	}

}
