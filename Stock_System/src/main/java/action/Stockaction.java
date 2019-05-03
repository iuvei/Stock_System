package action;

import app.StockEntity;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import service.StockService;
import service.UserService;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by 63128 on 2019/4/21.
 */
public class Stockaction {

    private String code;

    private Model model;
    //private Map<String, Object> dataMap;

    public Model getModel() {
        return model;
    }

    public void setModel(Model model) {
        this.model = model;
    }

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

    public String execute() {
        StockEntity stockEntity = stockService.getStockInfo(code);
        ActionContext.getContext().getSession().put("data", stockEntity);
        return "test";
    }






}