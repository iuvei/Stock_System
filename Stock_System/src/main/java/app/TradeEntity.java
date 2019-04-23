package app;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by 63128 on 2019/4/23.
 */
@Entity
@Table(name = "trade", schema = "stock_system", catalog = "")
public class TradeEntity {
    private String tradecode;
    private String tradename;
    private int tradeprice;
    private int tradenumber;
    private Date tradedate;
    private int cheak;
    private int tradetypeid;
    private String usersid;

    @Id
    @Column(name = "tradecode")
    public String getTradecode() {
        return tradecode;
    }

    public void setTradecode(String tradecode) {
        this.tradecode = tradecode;
    }

    @Basic
    @Column(name = "tradename")
    public String getTradename() {
        return tradename;
    }

    public void setTradename(String tradename) {
        this.tradename = tradename;
    }

    @Basic
    @Column(name = "tradeprice")
    public int getTradeprice() {
        return tradeprice;
    }

    public void setTradeprice(int tradeprice) {
        this.tradeprice = tradeprice;
    }

    @Basic
    @Column(name = "tradenumber")
    public int getTradenumber() {
        return tradenumber;
    }

    public void setTradenumber(int tradenumber) {
        this.tradenumber = tradenumber;
    }

    @Basic
    @Column(name = "tradedate")
    public Date getTradedate() {
        return tradedate;
    }

    public void setTradedate(Date tradedate) {
        this.tradedate = tradedate;
    }

    @Basic
    @Column(name = "cheak")
    public int getCheak() {
        return cheak;
    }

    public void setCheak(int cheak) {
        this.cheak = cheak;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TradeEntity that = (TradeEntity) o;

        if (tradeprice != that.tradeprice) return false;
        if (tradenumber != that.tradenumber) return false;
        if (cheak != that.cheak) return false;
        if (tradecode != null ? !tradecode.equals(that.tradecode) : that.tradecode != null) return false;
        if (tradename != null ? !tradename.equals(that.tradename) : that.tradename != null) return false;
        if (tradedate != null ? !tradedate.equals(that.tradedate) : that.tradedate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = tradecode != null ? tradecode.hashCode() : 0;
        result = 31 * result + (tradename != null ? tradename.hashCode() : 0);
        result = 31 * result + tradeprice;
        result = 31 * result + tradenumber;
        result = 31 * result + (tradedate != null ? tradedate.hashCode() : 0);
        result = 31 * result + cheak;
        return result;
    }

    @Basic
    @Column(name = "tradetypeid")
    public int getTradetypeid() {
        return tradetypeid;
    }

    public void setTradetypeid(int tradetypeid) {
        this.tradetypeid = tradetypeid;
    }

    @Basic
    @Column(name = "usersid")
    public String getUsersid() {
        return usersid;
    }

    public void setUsersid(String usersid) {
        this.usersid = usersid;
    }
}
