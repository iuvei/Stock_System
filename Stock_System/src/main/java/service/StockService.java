package service;

import app.StockEntity;

/**
 * Created by 63128 on 2019/4/21.
 */
public interface StockService {
    public StockEntity getStockInfo(String code);

    void setTradeDao(String tradeDao);
}
