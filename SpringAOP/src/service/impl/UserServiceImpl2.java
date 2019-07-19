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
	public int service(int id) {
		
		System.out.println("service11");
		qdao.dao();
		//System.out.println(1/0);
		return 3;
	}

}
