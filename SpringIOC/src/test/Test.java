package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.User;

public class Test {

	/**
	 * spring 中的对象属于单例模式
	 * @param args
	 */
	public static void main(String[] args) {
		/*User user = new User();
		System.out.println(user);*/
		
		ApplicationContext app=
				new ClassPathXmlApplicationContext("applicationContext.xml");
		User user2 = (User) app.getBean("user");
		User user = aa(app);
		System.out.println(user.equals(user2));
	
	}
	
	public static User aa(ApplicationContext app) {
		User user2 = (User) app.getBean("user");
		return user2;
	}
}
