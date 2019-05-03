package dao;

import app.TradeEntity;
import org.springframework.orm.hibernate5.HibernateTemplate;
import java.util.List;


/**
 * Created by 63128 on 2019/5/2.
 */
public class CheakDaoImpl implements CheakDao {







    private HibernateTemplate hibernateTemplate;


    public List<TradeEntity> findAll(){
        //查询获取全部的数据
        List<TradeEntity> list=(List<TradeEntity>) this.getHibernateTemplate()
                .find("from TradeEntity ");
        return list;
    }


    public int update(String cheak){
        try {
            //调用定义的接口 增加数据
            TradeEntity tradeEntity=this.getHibernateTemplate().get(TradeEntity.class,cheak);
            tradeEntity.setCheak(cheak);
            this.getHibernateTemplate().update(tradeEntity);
            return 1;
        }catch (Exception e){
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
        return 0;
    }

    @Override
    public TradeEntity findByCheak(String cheak) {
        //查询对象的cheak状态
        TradeEntity tradeEntity=this.getHibernateTemplate().get(TradeEntity.class,cheak);
        return tradeEntity;
    }


    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }


}
