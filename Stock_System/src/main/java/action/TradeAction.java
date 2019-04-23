package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import service.TradeService;


/**
 * Created by 63128 on 2019/4/22.
 */
public class TradeAction extends ActionSupport implements ModelDriven<TradeEntity> {
    //模型驱动使用对象
    private TradeEntity tradeEntity = new TradeEntity();
    private String tradecode;

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


    /*
    * 插入股票交易委托单方法:save

        public String save(){
            tradeService.save(tradeEntity);
            return NONE;


        public String findById(){
            TradeEntity tradeEntity=tradeService.findById("");
            return  NONE;
        }

                }
 * */
    public String execute() {
         /*
    * 插入股票交易委托单方法:save
    * */

        this.tradeService.save(tradeEntity);
        return "input2";

    }
}

