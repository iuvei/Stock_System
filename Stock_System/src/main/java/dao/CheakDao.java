package dao;

import app.TradeEntity;
import org.hibernate.SessionFactory;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by 63128 on 2019/5/2.
 */
public interface CheakDao {




    //查询
    public List<TradeEntity>findAll();
    //更新
    public int update(String cheak);
    //根据cheak查询
    public TradeEntity findByCheak(String cheak);
}
