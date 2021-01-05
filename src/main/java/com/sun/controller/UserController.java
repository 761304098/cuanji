package com.sun.controller;

import com.sun.bean.User;
import com.sun.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;
    @RequestMapping("/loginPage")           //返回登录页面
    public String loginPage(){
        return "/user/login.jsp";
    }

    @RequestMapping("/homePage")      //返回主页面
    public  String homePage(){
         return "/homePage.jsp";
    }
    @RequestMapping("/registerPage")  //注册页面
    public String register(){
        return "/user/register.jsp";
    }
    @RequestMapping("/findPasswordPage")  //忘记密码页面
    public String findPassword(){
        return "/user/findPassword.jsp";
    }
    @RequestMapping("/changePasswordPage")  //忘记密码页面
    public String changePassword(){
        return "/WEB-INF/view/changePassword.jsp";
    }


    @RequestMapping("/login")
    @ResponseBody
    public String login(String username){
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("username",username);
        List<User> users = userService.queryForUser(map);

        if(users.isEmpty()){
            return "用户名可用";
        }else{
            return "用户名已存在";
        }

    }
    @RequestMapping("/loginForJson")
    @ResponseBody
    public String loginForJson(String username, String password, HttpSession session){
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("username",username);
        map.put("password",password);
        List<User> users = userService.queryForUser(map);

        if(users.isEmpty()){
            return "用户名或密码错误";
        }else{
            session.setAttribute("userLoginInfo",username);
            return "登录成功";
        }
    }

   @RequestMapping("/register")
   public String register(String username,String password,String id_card){
           Map<String,Object> map=new HashMap<String, Object>();
           map.put("username",username);
           map.put("password",password);
           map.put("id_card",id_card);
           userService.addUser(map);
           return "redirect:/loginPage";
   }

   @RequestMapping("/findPassword")
   public  String findPassword(String username,String password,String id_card){
       Map<String,Object> map=new HashMap<String, Object>();
       map.put("username",username);
       map.put("password",password);
       map.put("id_card",id_card);
       userService.updateUser(map);
       return "redirect:/loginPage";
   }

   @RequestMapping("/findUserAndCard")
   @ResponseBody
    public String findUserAndCard(String username,String id_card){
       Map<String,Object> map=new HashMap<String, Object>();
       map.put("username",username);
       map.put("id_card",id_card);
       List<User> users = userService.queryForUser(map);
       if(users.isEmpty()){
           return "身份证与用户名不匹配";
       }else{
           return "已查到用户";
       }
    }

   @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
          request.getSession().invalidate();
          return "redirect:/homePage";
    }

   @RequestMapping("/changePassword")
    public String changePasswordPage(HttpServletRequest request,String password){
        String username=(String)request.getSession().getAttribute("userLoginInfo");
       Map<String,Object> map=new HashMap<String, Object>();
       map.put("username",username);
       map.put("password",password);
         userService.updateUser(map);
        return "redirect:/homePage";
    }
}

