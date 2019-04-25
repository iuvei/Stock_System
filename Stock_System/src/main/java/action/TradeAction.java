package action;

import app.TradeEntity;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import service.Impl.TradeServiceImpl;
import service.TradeService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


/**
 * Created by 63128 on 2019/4/22.
 */
public class TradeAction extends ActionSupport implements ModelDriven<TradeEntity> {
    //模型驱动使用对象
    private TradeEntity tradeEntity = new TradeEntity();


    @Override
    public TradeEntity getModel() {
        return tradeEntity;
    }

    //注入TradeService
    private TradeService tradeService;

    public void setTradeService(TradeService tradeService) {
        this.tradeService = tradeService;
    }

    public TradeService getTradeService() {
        return tradeService;
    }


    public String execute() {
        this.tradeService.save(tradeEntity);
        return "input2";
    }
//查询委托订单
    public String findUsersid(){
        HttpServletRequest request= ServletActionContext.getRequest();
        List<TradeEntity> tradeEntities=tradeService.findusersid();
       request.setAttribute("tradeEntities",tradeEntities);

        return "findtradeEntities";
    }
}


