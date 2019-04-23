package service.Impl;

import dao.TradeDaoImpl;
import org.springframework.transaction.annotation.Transactional;
import service.TradeService;

import java.util.List;

/**
 * Created by 63128 on 2019/4/23.
 */
@Transactional
public class TradeServiceImpl implements TradeService {
    private TradeDaoImpl tradeDao;

    /*
    注入Dao

    private TradeDao tradeDao;
    public void SetTradeDao(TradeDao tradeDao){
        this.tradeDao=tradeDao;
    }
*/
    @Override
    public void save(TradeEntity tradeEntity) {
        tradeDao.save(tradeEntity);
    }

    @Override
    public void update(TradeEntity tradeEntity) {
        tradeDao.update(tradeEntity);
    }

    @Override
    public void delete(TradeEntity tradeEntity) {
            tradeDao.update(tradeEntity);
    }

    @Override
    public TradeEntity findById(String tradecode) {
        return tradeDao.findById(tradecode);
    }

    @Override
    public List<TradeEntity> findAllByHQL() {
        return tradeDao.findAllByHQL();
    }

    @Override
    public List<TradeEntity> findAllByQBC() {
        return tradeDao.findAllByQBC();
    }

    @Override
    public List<TradeEntity> findAllByNamedQuery() {
        return tradeDao.findAllByNamedQuery();
    }

    public void setTradeDao(TradeDaoImpl tradeDao) {
        this.tradeDao = tradeDao;
    }

    public TradeDaoImpl getTradeDao() {
        return tradeDao;
    }
}
