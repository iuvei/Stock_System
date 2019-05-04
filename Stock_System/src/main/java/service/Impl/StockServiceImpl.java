package service.Impl;

import app.StockEntity;
import dao.StockDaoImpl;
import service.StockService;

/**
 * Created by 63128 on 2019/4/21.
 */
public class StockServiceImpl implements StockService {



    private StockDaoImpl stockDao;

    @Override
    public StockEntity getStockInfo(String code) {
        return stockDao.queryStockByCode(code);
    }

    @Override
    public void setTradeDao(String tradeDao) {

    }

    public void setStockDao(StockDaoImpl stockDao) {
        this.stockDao = stockDao;
    }

    public StockDaoImpl getStockDao() {
        return stockDao;
    }
}
