package service.Impl;

import app.TradeEntity;
import dao.CheakDaoImpl;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import service.CheakService;

import java.util.List;

/**
 * Created by 63128 on 2019/5/2.
 */
public class CheakServiceImpl  implements CheakService {
    private HibernateTemplate hibernateTemplate;


    private CheakDaoImpl cheakDao;

    @Override
    public List<TradeEntity> findAll() {
        return this.cheakDao.findAll();
    }

    @Override
    public boolean update(String chaek) {
        int aa=this.cheakDao.update(chaek);
        if (aa==0){
            return  true;
        }else {
            return false;
        }

    }

    @Override
    public TradeEntity findByCheak(String cheak) {
        return this.cheakDao.findByCheak(cheak);
    }


    public void setCheakDao(CheakDaoImpl cheakDao) {
        this.cheakDao = cheakDao;
    }

    public CheakDaoImpl getCheakDao() {
        return cheakDao;
    }
    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
}
