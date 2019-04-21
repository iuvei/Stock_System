package action;

import app.StockEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import service.StockService;
import service.UserService;

/**
 * Created by 63128 on 2019/4/21.
 */
public class Stockaction {

    private String code;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    private StockService stockService;
    public void setStockService(StockService stockService) {
        this.stockService = stockService;
    }

    /*根据股票编码获取股票基本信息*/
    //@GetMapping("/stock/{code}")//sz399001深证成指，sz000063中兴通讯
    public StockEntity execute() {
        StockEntity stockEntity = stockService.getStockInfo(code);
        return stockEntity;
    }





}