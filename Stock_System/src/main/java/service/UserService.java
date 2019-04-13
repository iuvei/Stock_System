package service;

import app.UsersEntity;
import dao.UserDao;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public  class UserService{

    private UserDao userDao;

    public void setUsersDao(UserDao userDao){
       this.userDao=userDao;
   }

   public boolean loginVerify(String  usersid,String password){
       boolean passLogin=false;
       passLogin=userDao.verifyUsersid(usersid);
       if (passLogin){
           passLogin=userDao.verifyPassword(usersid,password);
       }
        return passLogin;
   }

   public boolean userRegister(String  usersid,String password){
       UsersEntity usersEntity=new UsersEntity();
       usersEntity.setUsersid(usersid);
       usersEntity.setPassword(password);
       return userDao.addUser(usersEntity);
   }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public UserDao getUserDao() {
        return userDao;
    }
}