package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.User;

public class Test3 {

	/**
	 * spring 中的对象属于单例模式
	 * @param args
	 */
	public static void main(String[] args) {
		/*User user = new User();
		System.out.println(user);*/
		
		ApplicationContext app=
				new ClassPathXmlApplicationContext("applicationContext.xml");
		User user2 = (User) app.getBean("user1");
		System.out.println(user2.getV());
	
	}
	
	public static User aa(ApplicationContext app) {
		User user2 = (User) app.getBean("user");
		return user2;
	}
}
