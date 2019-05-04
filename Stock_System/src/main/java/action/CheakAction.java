package action;

import app.StockEntity;
import com.opensymphony.xwork2.ActionContext;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.quartz.QuartzJobBean;
import utils.HttpClientUtil;
import utils.TimeUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by 63128 on 2019/5/2.
 */

public class CheakAction extends QuartzJobBean {
    private static final Logger logger = LoggerFactory.getLogger(CheakAction.class);
    private String code="sh601006";


    public void Timer()
    {
  
            try {
                Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动

                String url = "jdbc:mysql://localhost:3306/Stock_System";
                String user = "root";//数据库账号
                String password = "12345";//数据库密码
                //建立数据库连接，获得连接对象conn
                Connection conn = DriverManager.getConnection(url, user, password);

    
                StockEntity stockEntity = getStockInfo(code);
                Float price=stockEntity.getPrice();


                String sql = "UPDATE trade SET cheak='成功买入' WHERE cheak='委托买入' ";//生成一条mysql语句
                Statement stmt = conn.createStatement();//创建一个Statement对象
                stmt.executeUpdate(sql);//执行SQL语句
                System.out.println("检索成功");
                conn.close();

            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }



    public StockEntity queryStockByCode(String code) {
        StockEntity stockEntity = new StockEntity();
        String url = "http://hq.sinajs.cn/list=" + code;
        String resultStr = HttpClientUtil.sendHttpGet(url);
        Map<String, String> resultMap = handler(resultStr);
        stockEntity .setCode(resultMap.get("code"));
        stockEntity .setSimpleName(resultMap.get("simpleName"));
        stockEntity .setOpen(Float.parseFloat(resultMap.get("open")));
        stockEntity .setClose(Float.parseFloat(resultMap.get("close")));
        stockEntity .setPrice(Float.parseFloat(resultMap.get("price")));
        stockEntity .setHigh(Float.parseFloat(resultMap.get("high")));
        stockEntity .setLow(Float.parseFloat(resultMap.get("low")));
        stockEntity .setBuyPrice(Float.parseFloat(resultMap.get("buyPrice")));
        stockEntity .setSellPrice(Float.parseFloat(resultMap.get("sellPrice")));
        stockEntity .setDealNum(Long.parseLong(resultMap.get("dealNum")));;
        stockEntity .setDealPrice(Float.parseFloat(resultMap.get("dealPrice")));
        stockEntity .setFirstBuyNum(Integer.parseInt(resultMap.get("firstBuyNum")));
        stockEntity .setFirstBuyPrice(Float.parseFloat(resultMap.get("firstBuyPrice")));
        stockEntity .setSecondBuyNum(Integer.parseInt(resultMap.get("secondBuyNum")));
        stockEntity .setSecondBuyPrice(Float.parseFloat(resultMap.get("secondBuyPrice")));
        stockEntity .setThirdBuyNum(Integer.parseInt(resultMap.get("thirdBuyNum")));
        stockEntity .setThirdBuyPrice(Float.parseFloat(resultMap.get("thirdBuyPrice")));
        stockEntity .setFourthBuyNum(Integer.parseInt(resultMap.get("fourthBuyNum")));
        stockEntity .setFourthBuyPrice(Float.parseFloat(resultMap.get("fourthBuyPrice")));
        stockEntity .setFifthBuyNum(Integer.parseInt(resultMap.get("fifthBuyNum")));
        stockEntity .setFifthBuyPrice(Float.parseFloat(resultMap.get("fifthBuyPrice")));
        stockEntity .setFirstSellNum(Integer.parseInt(resultMap.get("firstSellNum")));
        stockEntity .setFirstSellPrice(Float.parseFloat(resultMap.get("firstSellPrice")));
        stockEntity .setSecondSellNum(Integer.parseInt(resultMap.get("secondSellNum")));
        stockEntity .setSecondSellPrice(Float.parseFloat(resultMap.get("secondSellPrice")));
        stockEntity .setThirdSellNum(Integer.parseInt(resultMap.get("thirdSellNum")));
        stockEntity .setThirdSellPrice(Float.parseFloat(resultMap.get("thirdSellPrice")));
        stockEntity .setFourthSellNum(Integer.parseInt(resultMap.get("fourthSellNum")));
        stockEntity .setFourthSellPrice(Float.parseFloat(resultMap.get("fourthSellPrice")));
        stockEntity .setFifthSellNum(Integer.parseInt(resultMap.get("fifthSellNum")));
        stockEntity .setFifthSellPrice(Float.parseFloat(resultMap.get("fifthSellPrice")));
        stockEntity .setDate(TimeUtil.transferToDate(resultMap.get("date"), "yyyy-MM-dd"));
        stockEntity .setTime(resultMap.get("time"));
        return stockEntity ;
    }


        /*将从接口获取的字符串数据转换成标准的map格式*/
    public Map<String, String> handler(String str) {
        Map<String, String> result = new HashMap<String, String>();
        String[] arr = str.split(",");
        int equalLocation = arr[0].indexOf("=");
        String stockCode = arr[0].substring(11, equalLocation);
        String stockName = arr[0].substring(equalLocation+2, arr[0].length());
        result.put("code", stockCode);
        result.put("simpleName", stockName);
        result.put("open", arr[1]);
        result.put("close", arr[2]);
        result.put("price", arr[3]);
        result.put("high", arr[4]);
        result.put("low", arr[5]);
        result.put("buyPrice", arr[6]);
        result.put("sellPrice", arr[7]);
        result.put("dealNum", arr[8]);
        result.put("dealPrice", arr[9]);
        result.put("firstBuyNum", arr[10]);
        result.put("firstBuyPrice", arr[11]);
        result.put("secondBuyNum", arr[12]);
        result.put("secondBuyPrice", arr[13]);
        result.put("thirdBuyNum", arr[14]);
        result.put("thirdBuyPrice", arr[15]);
        result.put("fourthBuyNum", arr[16]);
        result.put("fourthBuyPrice", arr[17]);
        result.put("fifthBuyNum", arr[18]);
        result.put("fifthBuyPrice", arr[19]);
        result.put("firstSellNum", arr[20]);
        result.put("firstSellPrice", arr[21]);
        result.put("secondSellNum", arr[22]);
        result.put("secondSellPrice", arr[23]);
        result.put("thirdSellNum", arr[24]);
        result.put("thirdSellPrice", arr[25]);
        result.put("fourthSellNum", arr[26]);
        result.put("fourthSellPrice", arr[27]);
        result.put("fifthSellNum", arr[28]);
        result.put("fifthSellPrice", arr[29]);
        result.put("date", arr[30]);
        result.put("time", arr[31]);
        return result;
    }
    public StockEntity getStockInfo(String code) {
        return queryStockByCode(code);
    }
    @Override
    protected void executeInternal(JobExecutionContext context) throws JobExecutionException {

    }
}






