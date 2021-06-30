package com.itstyle.bpmn.common.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
 
@Configuration
public class MyWebAppConfigurer extends WebMvcConfigurerAdapter {
 
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		String[] patterns = new String[] {"/bpmn.shtml", "/login.shtml","/login","/logout","/swagger-resources/**"};
		registry.addInterceptor(new SysInterceptor())
		                         .addPathPatterns("/**")
		                         .excludePathPatterns(patterns);
		super.addInterceptors(registry);
	}
}