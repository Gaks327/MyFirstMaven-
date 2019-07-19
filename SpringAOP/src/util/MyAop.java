package util;

import java.lang.reflect.Method;

import org.springframework.aop.MethodBeforeAdvice;

public class MyAop implements MethodBeforeAdvice{

	@Override//前置增强
	public void before(Method arg0, Object[] arg1, Object arg2) throws Throwable {
		
		System.out.println(arg0.getName());//方法名
		System.out.println(arg1[0]);//参数列表的参数值
		System.out.println(arg2.toString());//被增强类的对象
		
	}
	
	
	

}
