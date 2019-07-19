package cn.item.service;

import java.util.List;

import cn.item.bean.User;

public interface AuditManagementService {
	
	List<User> selectAll();
	
	int updateAudit(Integer checkStatus,Integer id);

	User selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(User user);

	int deleteByPrimaryKey(Integer id);

	List<User> fuzzyselect(String username, String company, Integer checkStatus);
}
