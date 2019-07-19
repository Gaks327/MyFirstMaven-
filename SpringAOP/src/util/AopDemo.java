package util;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class AopDemo {
	public void dd() {
		System.out.println("最终");
	}
	
	public void aa(JoinPoint point) {
		
	}

	public void bb() {
		System.out.println("后置");
	}
	
	public void ee() {
		System.out.println("异常");
	}
	
	public void cc(ProceedingJoinPoint  point) {
		System.out.println("环绕开始");
		try {
			point.proceed();//依靠方法进行阻塞
			System.out.println("环绕结束");
			System.out.println("切入点对象:"+point.getTarget().getClass().getName());
			System.out.println("切入点方法:"+point.getSignature().getName());
			System.out.println("切入点参数:"+point.getArgs().length);
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
