package andanyoung.act.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 登录请求
 */
@RestController
public class LoginController {

    /***
     * 获取用户登录名字
     * @return
     */
    @GetMapping("/login/name")
    public String getUserName(){
        //获取登录的用户名
        return SecurityContextHolder.getContext().getAuthentication().getName();
    }
}