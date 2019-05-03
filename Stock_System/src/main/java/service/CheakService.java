package service;

import app.TradeEntity;

import java.util.List;

/**
 * Created by 63128 on 2019/5/2.
 */
public interface CheakService {
    //查询
    public List<TradeEntity> findAll();
    //更新
    public boolean update(String cheak);
    //根据cheak查询
    public TradeEntity findByCheak(String cheak);
}
