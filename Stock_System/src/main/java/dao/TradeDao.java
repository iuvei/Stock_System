package dao;

import app.TradeEntity;

import java.util.List;

/**
 * Created by 63128 on 2019/4/17.
 */
public interface TradeDao {
    void  save(TradeEntity tradeEntity);
    void  update(TradeEntity tradeEntity);
    void delete(TradeEntity tradeEntity);


    TradeEntity findById(String tradecode);
    List<TradeEntity> findByusersid();
    List<TradeEntity> findAllByHQL();
    List<TradeEntity>findAllByQBC();
    List<TradeEntity>findAllByNamedQuery();

}
