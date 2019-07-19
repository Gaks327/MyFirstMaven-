package web;

import bean.User;
import service.UserService;

public class UserController2 {
	
	public void setSer(UserService ser) {
		this.ser = ser;
	}

	public UserController2(UserService ser) {
		super();
		this.ser = ser;
		System.out.println("a");
	}

	UserService ser;

	public void web() {
		System.out.println("web");
		ser.service(1);
	}
}
