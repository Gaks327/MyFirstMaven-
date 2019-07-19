package service.impl;

import dao.UserDao;
import service.UserService;

public class UserServiceImpl implements UserService{

	public UserServiceImpl() {
		super();
	}
	public UserServiceImpl(UserDao dao) {
		super();
		this.dao = dao;
	}
	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	UserDao dao;
	@Override
	public void service() {
		System.out.println("service");
		dao.dao();
	}

}
