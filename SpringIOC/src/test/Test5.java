package test;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Properties;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import bean.User;

public class Test5 {

	/**
	 * spring 中的对象属于单例模式
	 * 
	 * xml文件项目启动的时候加载，服务器启动时候 到服务关闭
	 * @param args
	 * @throws IOException 
	 */
	
	public static void main(String[] args) throws IOException {
		 InputStream inputStream = Test5.class.getClassLoader().getResourceAsStream("aaaa.Properties");
		 Properties properties = new Properties();
		 properties.load(inputStream);
		 System.out.println(properties.getProperty("pass"));
	}
}
