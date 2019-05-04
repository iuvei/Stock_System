package action;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.quartz.QuartzJobBean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by 63128 on 2019/5/2.
 */

public class CheakAction extends QuartzJobBean {
    private static final Logger logger = LoggerFactory.getLogger(CheakAction.class);


        public void Timer()
    {
            try {
                Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动
                System.out.println("加载数据库驱动成功");
                String url = "jdbc:mysql://localhost:3306/Stock_System";//声明数据库test的url
                String user = "root";//数据库账号
                String password = "12345";//数据库密码
                //建立数据库连接，获得连接对象conn
                Connection conn = DriverManager.getConnection(url, user, password);
                System.out.println("连接数据库成功");
                String sql = "UPDATE trade SET cheak='成功买入' WHERE cheak='委托买入' ";//生成一条mysql语句
                Statement stmt = conn.createStatement();//创建一个Statement对象
                stmt.executeUpdate(sql);//执行SQL语句
                System.out.println("修改数据库成功");
                conn.close();
                System.out.println("关闭数据库成功");
            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }


    @Override
    protected void executeInternal(JobExecutionContext context) throws JobExecutionException {

    }
}






