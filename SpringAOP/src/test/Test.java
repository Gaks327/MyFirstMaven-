package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import web.UserController2;

public class Test {

	public static void main(String[] args) {
		ApplicationContext app=
				new ClassPathXmlApplicationContext("applicationContext.xml");
		UserController2 controller = (UserController2) app.getBean("web");
		controller.web();
	}
}
