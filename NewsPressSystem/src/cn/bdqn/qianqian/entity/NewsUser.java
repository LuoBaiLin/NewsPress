package cn.bdqn.qianqian.entity;

import java.io.Serializable;
import java.sql.Blob;
import java.util.HashSet;
import java.util.Set;

/**
 * USERS
 */
@SuppressWarnings("serial")
public class NewsUser implements Serializable {
	private Integer userId;
	private String userName;
	private String userPassword;
	private String userEmail;
	private String userIdnumber;
	private Long userPhone;
	private String userAddress;
	private Blob userImage;
	private Integer isadmin;
	private Set<NewsComment> newsComments = new HashSet<NewsComment>();
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserIdnumber() {
		return userIdnumber;
	}
	public void setUserIdnumber(String userIdnumber) {
		this.userIdnumber = userIdnumber;
	}
	public Long getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(Long userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	
	public Blob getUserImage() {
		return userImage;
	}
	public void setUserImage(Blob userImage) {
		this.userImage = userImage;
	}
	public Integer getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(Integer isadmin) {
		this.isadmin = isadmin;
	}
	public Set<NewsComment> getNewsComments() {
		return newsComments;
	}
	public void setNewsComments(Set<NewsComment> newsComments) {
		this.newsComments = newsComments;
	}
	public NewsUser() {
	}
	public NewsUser(String userName, String userPassword) {
		this.userName = userName;
		this.userPassword = userPassword;
	}
	public NewsUser(String userName, String userPassword, String userEmail,
			String userIdnumber, Long userPhone, String userAddress,
			Blob userImage, Integer isadmin, Set<NewsComment> newsComments) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userIdnumber = userIdnumber;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.userImage = userImage;
		this.isadmin = isadmin;
		this.newsComments = newsComments;
	}
	public NewsUser(String userName, String userPassword, String userEmail,
			String userIdnumber, Long userPhone, String userAddress) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userIdnumber = userIdnumber;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
	}
	public NewsUser(Integer userId, String userName, String userPassword,
			String userEmail, String userIdnumber, Long userPhone,
			String userAddress, Integer isadmin) {
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userIdnumber = userIdnumber;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.isadmin = isadmin;
	}
	public NewsUser(Integer userId, String userName, String userEmail,
			String userIdnumber, Long userPhone, String userAddress,
			Integer isadmin) {
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userIdnumber = userIdnumber;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.isadmin = isadmin;
	}
	public NewsUser(String userName, String userPassword, String userEmail,
			String userIdnumber, Long userPhone, String userAddress,
			Integer isadmin) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userIdnumber = userIdnumber;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.isadmin = isadmin;
	}
}

