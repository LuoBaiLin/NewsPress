package cn.bdqn.qianqian.service.impl;

import java.util.List;

import cn.bdqn.qianqian.dao.NewsImageDao;
import cn.bdqn.qianqian.entity.NewsImage;
import cn.bdqn.qianqian.service.NewsImageService;

public class NewsImageServiceImpl implements NewsImageService {
	private NewsImageDao newsimagedao;
	@Override
	public List<NewsImage> getAll() throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsImage> list=newsimagedao.getAll();
			if (list==null ) {
				return null;
			}
			return list;
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	@Override
	public void addImage(NewsImage image) throws Exception {
		// TODO Auto-generated method stub
		try {
			newsimagedao.addImage(image);
		} catch (Exception e) {
			throw new Exception("添加过程中出现错误！");
		} 
	}

	@Override
	public void del(int newsId) throws Exception {
		// TODO Auto-generated method stub
		try {
			newsimagedao.del(newsId);;
		} catch (Exception e) {
			throw new Exception("删除过程中出现错误！");
		} 
	}

	@Override
	public void update(NewsImage image) throws Exception {
		// TODO Auto-generated method stub
		try {
			newsimagedao.update(image);;
		} catch (Exception e) {
			throw new Exception("修改过程中出现错误！");
		} 
	}

	@Override
	public List<NewsImage> getByNewsId(int newsId) throws Exception {
		// TODO Auto-generated method stub
		try {
			List<NewsImage> list=newsimagedao.getByNewsId(newsId);
			if (list==null ) {
				return null;
			}
			return list;
		} catch (Exception e) {
			throw new Exception("查询过程中出现错误！");
		} 
	}

	public NewsImageDao getNewsimagedao() {
		return newsimagedao;
	}

	public void setNewsimagedao(NewsImageDao newsimagedao) {
		this.newsimagedao = newsimagedao;
	}

}
