package cn.item.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.item.bean.User;
import cn.item.dao.UserMapper;
import cn.item.service.AuditManagementService;

@Service
public class AuditManagementServiceImpl implements AuditManagementService {

	@Autowired
	private UserMapper usermapper;
	
	@Override
	public List<User> selectAll() {
		return usermapper.selectAll();
	}

	@Override
	public int updateAudit(Integer checkStatus,Integer id) {
		return usermapper.updateAudit(checkStatus,id);
	}
	
	@Override
	public User selectByPrimaryKey(Integer id) {
		return usermapper.selectByPrimaryKey(id);
	}

	@Override 
	public  int updateByPrimaryKeySelective(User user) {
		return usermapper.updateByPrimaryKeySelective(user);
	}
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return usermapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<User> fuzzyselect(String username,String company,Integer checkStatus) {
		return usermapper.fuzzyselect(username,company,checkStatus);
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
