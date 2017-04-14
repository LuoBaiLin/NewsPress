package cn.bdqn.qianqian.dao;

import java.util.List;

import cn.bdqn.qianqian.entity.NewsUser;
/**
 * 用户接口
 * @author 罗柏林1
 *
 */
public interface NewsUserDao {
	/**
	 * 获取全部用户信息
	 * @return
	 */
	public List<NewsUser> getAll();
	/**
	 * 登录
	 * @param users
	 * @return
	 */
	public List<NewsUser> login(NewsUser users);
	/**
	 * 注册
	 * @param users
	 * @return
	 */
	public void register(NewsUser users);
	/**
	 * 根据用户编号查询用户信息
	 * @param userId
	 * @return
	 */
	public NewsUser selectById(int userId);
	/**
	 * 根据用户名查询用户信息
	 * @param userName
	 * @return
	 */
	public List<NewsUser> selectByName(String userName);
	/**
	 * 根据用户id删除用户
	 * @param userId
	 */
	public void delUser(int userId);
	/**
	 * 修改用户信息
	 * @param user
	 */
	public void update(NewsUser user);
}
