package service.impl;

import dao.UserDao;
import service.UserService;

public class UserServiceImpl2 implements UserService{

	
	public void setQdao(UserDao qdao) {
		this.qdao = qdao;
	}

	public UserServiceImpl2(UserDao qdao) {
		super();
		this.qdao = qdao;
	}

	UserDao qdao;
	
	@Override
	public void service() {
		System.out.println("service");
		qdao.dao();
	}

}
