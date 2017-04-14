package cn.bdqn.qianqian.service;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsUser;

public interface NewUserService {
	/**
	 * 获取全部用户信息
	 * @return
	 */
	public List<NewsUser> getAll()throws Exception;
	/**
	 * 登录
	 * @param users 用户对象，包含用户名和密码
	 * @return	登录成功返回用户对象，失败返回null
	 * @throws Exception 抛出异常
	 */
	public List<NewsUser> login(NewsUser users) throws Exception;
	/**
	 * 注册
	 * @param users
	 * @return
	 */
	public void register(NewsUser users) throws Exception;
	/**
	 * 根据用户编号查询用户信息
	 * @param userId
	 * @return
	 */
	public NewsUser selectById(int userId) throws Exception;
	/**
	 * 根据用户名查询用户信息
	 * @param userName
	 * @return
	 */
	public List<NewsUser> selectByName(String userName) throws Exception;
	/**
	 * 删除用户信息
	 * @param userId
	 * @throws Exception
	 */
    public void delUser(int userId) throws Exception;
    /**
	 * 修改用户信息
	 * @param user
	 */
	public void update(NewsUser user);
}
