package web;

import bean.User;
import service.UserService;

public class UserController {
	
	public void setSer(UserService ser) {
		this.ser = ser;
	}
	
	UserService ser;
	User user;
	
	public UserController(UserService ser, User user) {
		super();
		System.out.println("½øÀ´ÁË");
		this.ser = ser;
		this.user = user;
	}
	
	public void web() {
		System.out.println("web"+ user);
		ser.service();
	}
	
	
}
