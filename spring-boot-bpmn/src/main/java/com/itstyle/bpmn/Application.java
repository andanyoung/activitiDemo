package com.itstyle.bpmn;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.scheduling.annotation.EnableAsync;
import org.thymeleaf.spring4.view.ThymeleafViewResolver;
/**
 * 工作流作图服务
 * @author zhipeng.zhang
 * 启动  java -Xms200m -Xmx600m -jar spring-boot-bpmn.jar &
 * 如果是 Linux 启动，不要直接关闭窗口，要使用 exit 退出。
 * 插件：https://github.com/Studio-42/elFinder
 * 参考：https://github.com/trustsystems/elfinder-java-connector
 */
@SpringBootApplication
@EnableAsync
public class Application  extends SpringBootServletInitializer  {
	private static final Logger logger = LoggerFactory.getLogger(Application.class);
	
	@Override 
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(Application.class);
	}
	
	public static void main(String[] args) throws InterruptedException {
		SpringApplication.run(Application.class, args);
		logger.info("工作流作图服务 ");
	}
	@Resource
    private void configureThymeleafStaticVars(ThymeleafViewResolver viewResolver) {
        if(viewResolver != null) {
            Map<String, Object> vars = new HashMap<>();
            vars.put("path", "https://blog.52itstyle.vip");
            viewResolver.setStaticVariables(vars);
        }
    }
}