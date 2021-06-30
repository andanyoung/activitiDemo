package andanyoung.act.config;

import andanyoung.act.handler.MyAuthenctiationFailureHandler;
import andanyoung.act.handler.MyAuthenctiationSuccessHandler;
import andanyoung.act.security.MyUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

/**
 * SpringSecurity的配置类
 */
@Component
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private MyUserDetailsService myUserDetailsService;
    @Autowired
    private PasswordEncoder encoder;
    @Autowired
    private MyAuthenctiationSuccessHandler myAuthSuccessHandler;
    @Autowired
    private MyAuthenctiationFailureHandler myAuthFailureHandler;
    /**
     * 用户授权
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        //使用自定义的认证类实现授权
        auth.userDetailsService(myUserDetailsService).passwordEncoder(encoder);
    }

    /**
     * 配置放行的请求
     * @param web
     * @throws Exception
     */
    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/css/**");
        web.ignoring().antMatchers("/js/**");
        web.ignoring().antMatchers("/img/**");
        web.ignoring().antMatchers("/plugins/**");
        web.ignoring().antMatchers("/login.html");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //其他任何路径都需要管理员登录
        http.authorizeRequests().
                antMatchers("/**").
                access("hasRole('ADMIN')");

        //登录相关配置
        http.formLogin()
                .loginPage("/login.html")   //指定登录地址
                .loginProcessingUrl("/login")       //指定处理登录的请求地址
                .successHandler(myAuthSuccessHandler) //登录成功的回调
                .failureHandler(myAuthFailureHandler); //登录失败的回调

        //登出配置
        http.logout().
                logoutUrl("/logout").           //登出地址为/logout
                invalidateHttpSession(true);    //并且登出后销毁session

        //设置用户只允许在一处登录，在其他地方登录则挤掉已登录用户，被挤掉的已登录用户则需要返回/login.html重新登录
        http.sessionManagement().maximumSessions(1).expiredUrl("/login.html");

        //关闭CSRF安全策略
        http.csrf().disable();

        //允许跳转显示iframe
        http.headers().frameOptions().disable();

        //异常处理页面，例如没有权限访问等
        http.exceptionHandling().accessDeniedPage("/error.html");
    }


}
