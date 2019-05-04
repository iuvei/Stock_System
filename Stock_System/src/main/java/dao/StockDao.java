package dao;

import app.StockEntity;

/**
 * Created by 63128 on 2019/4/21.
 */
public interface StockDao {
    public StockEntity queryStockByCode(String code);
}