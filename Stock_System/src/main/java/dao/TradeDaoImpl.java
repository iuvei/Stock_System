package dao;

import app.TradeEntity;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by 63128 on 2019/4/23.
 */
public class TradeDaoImpl  extends HibernateDaoSupport implements TradeDao{

    @Autowired
    private HibernateTemplate hibernateTemplate;


    @Override
    public void save(TradeEntity tradeEntity) {
            this.getHibernateTemplate().save(tradeEntity);


    }

    @Override
    public void update(TradeEntity tradeEntity) {

    }

    @Override
    public void delete(TradeEntity tradeEntity) {

    }

    @Override
    public TradeEntity findById(String tradecode) {
        return this.getHibernateTemplate().load(TradeEntity.class,tradecode);
    }
//查询委托订单
    @Override
    public List<TradeEntity> findByusersid() {
        String hql="from TradeEntity where usersid='1001' and cheak like '%委托%'";
        List<TradeEntity>list=(List<TradeEntity>)this.getHibernateTemplate().find(hql);
        return list;
    }


    //查询成功买入订单
    @Override
    public List<TradeEntity> findBycheak() {
        String hql="from TradeEntity where usersid='1001' and cheak like '%成功%'";
        List<TradeEntity>list=(List<TradeEntity>)this.getHibernateTemplate().find(hql);
        return list;
    }

    //查询持仓
    @Override
    public List<TradeEntity> findBycheak2() {
        String hql="from TradeEntity where usersid='1001' and cheak='成功买入'";
        List<TradeEntity>list=(List<TradeEntity>)this.getHibernateTemplate().find(hql);
        return list;
    }




    public List<TradeEntity> findAllByHQL() {
        List<TradeEntity> list = (List<TradeEntity>) this.getHibernateTemplate().find("from TradeEntity");
        return list;
    }

    @Override
    public List<TradeEntity> findAllByQBC() {
        DetachedCriteria criteria = DetachedCriteria.forClass(TradeEntity.class);
        List<TradeEntity> list = (List<TradeEntity>) this.getHibernateTemplate().findByCriteria(criteria);
        return list;
    }

    @Override
    public List<TradeEntity> findAllByNamedQuery() {
        return (List<TradeEntity>) this.getHibernateTemplate().findByNamedQuery("queryAll");
    }
}

