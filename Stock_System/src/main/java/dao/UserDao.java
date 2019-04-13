package dao;

import app.UsersEntity;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public class UserDao {
    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }


    //添加用户
    public boolean addUser(UsersEntity usersEntity) {
        if (!verifyUsersid(usersEntity.getUsersid()));{
            hibernateTemplate.save(usersEntity);
        }
        return true;
    }
    //验证用户
    public boolean verifyUsersid(String  usersid) {
        List<UsersEntity> usersEntities=(List<UsersEntity>)hibernateTemplate
                .find("select usersid from UsersEntity where usersid=?",usersid);
    return usersEntities.isEmpty()?false:true;

    }

    //验证密码是否正确
    public boolean verifyPassword(String  usersid,String password){
        List queryList=hibernateTemplate.find("select password from UsersEntity where usersid=?",usersid);
        return (queryList.get(0).toString().equals(password));
    }

}