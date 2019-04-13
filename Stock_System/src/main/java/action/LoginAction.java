package action;


import app.UsersEntity;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;
import service.UserService;

import java.util.Map;

public class LoginAction extends ActionSupport implements SessionAware{
    private UserService userService;
    private String usersid;
    private String password;

    private Map session;

    public void setSession(Map session){
        this.session=session;
    }

    public void setUserService(UserService userService){
        this.userService=userService;
    }
    public String  getUsersid(){
        return usersid;
    }

    public void setUsersid(String  usersid){
        this.usersid=usersid;
    }

    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password=password;
    }

    public void validate(){
        super.clearErrorsAndMessages();
        if ("".equals(usersid)){
            super.addActionError("用户不能为空！");
        }
        if ("".equals(password)){
            super.addActionError("密码不能为空！");
        }
    }

    public String execute(){
        if (userService.loginVerify(usersid,password)){
            UsersEntity usersEntity=new UsersEntity();
            usersEntity.setUsersid(usersid);
            usersEntity.setPassword(password);
            session.put("usersEntity",usersEntity);
            return "success";
        }else {
            super.addActionError("登陆失败！");
            return INPUT;
        }
    }
}

