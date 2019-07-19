package test;

import java.util.Iterator;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.User;

public class Test7 {

	/**
	 * spring 中的对象属于单例模式
	 * 
	 * xml文件项目启动的时候加载，服务器启动时候 到服务关闭
	 * @param args
	 */
	public static void main(String[] args) {
		/*User user = new User();
		System.out.println(user);*/
		
		ApplicationContext app=
				new ClassPathXmlApplicationContext("applicationContext3.xml");
		User user2 = (User) app.getBean("user3");
		System.out.println(user2.getAa());
	}
		
}
