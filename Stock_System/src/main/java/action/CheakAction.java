package action;

import app.TradeEntity;
import com.opensymphony.xwork2.ActionSupport;
import service.Impl.CheakServiceImpl;

/**
 * Created by 63128 on 2019/5/2.
 */


public class CheakAction extends ActionSupport{

    private TradeEntity tradeEntity;
    private String cheak;
    private CheakServiceImpl cheakService;


    public String execute() {

        return null;
    }
    //查询
    public String findByCheak(){
        cheak="买入";
        tradeEntity=cheakService.findByCheak(cheak);
        System.out.println(tradeEntity);
        return "tradeEntity";
    }

    public void setCheakService(CheakServiceImpl cheakService) {
        this.cheakService = cheakService;
    }

    public CheakServiceImpl getCheakService() {
        return cheakService;
    }
}
