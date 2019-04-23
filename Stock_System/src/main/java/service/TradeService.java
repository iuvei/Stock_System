package service;

import java.util.List;

/**
 * Created by 63128 on 2019/4/17.
 */
public interface TradeService {


    void save(TradeEntity tradeEntity);
    void update(TradeEntity tradeEntity);
    void delete(TradeEntity tradeEntity);
    TradeEntity findById(String tradecode);
    List<TradeEntity> findAllByHQL();
    List<TradeEntity> findAllByQBC();
    List<TradeEntity> findAllByNamedQuery();
}
