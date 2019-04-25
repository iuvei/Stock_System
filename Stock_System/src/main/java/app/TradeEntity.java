package app;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by 63128 on 2019/4/25.
 */
@Entity
@Table(name = "trade", schema = "stock_system", catalog = "")
public class TradeEntity {
    private String tradecode;
    private String tradename;
    private String tradeprice;
    private int tradenumber;
    private Timestamp tradedate;
    private int tradetypeid;
    private String usersid;
    private String cheak;

    @Basic
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
    public String getTradeprice() {
        return tradeprice;
    }

    public void setTradeprice(String tradeprice) {
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

    @Id
    @Column(name = "tradedate")
    public Timestamp getTradedate() {
        return tradedate;
    }

    public void setTradedate(Timestamp tradedate) {
        this.tradedate = tradedate;
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

    @Basic
    @Column(name = "cheak")
    public String getCheak() {
        return cheak;
    }

    public void setCheak(String cheak) {
        this.cheak = cheak;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TradeEntity that = (TradeEntity) o;

        if (tradenumber != that.tradenumber) return false;
        if (tradetypeid != that.tradetypeid) return false;
        if (tradecode != null ? !tradecode.equals(that.tradecode) : that.tradecode != null) return false;
        if (tradename != null ? !tradename.equals(that.tradename) : that.tradename != null) return false;
        if (tradeprice != null ? !tradeprice.equals(that.tradeprice) : that.tradeprice != null) return false;
        if (tradedate != null ? !tradedate.equals(that.tradedate) : that.tradedate != null) return false;
        if (usersid != null ? !usersid.equals(that.usersid) : that.usersid != null) return false;
        if (cheak != null ? !cheak.equals(that.cheak) : that.cheak != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = tradecode != null ? tradecode.hashCode() : 0;
        result = 31 * result + (tradename != null ? tradename.hashCode() : 0);
        result = 31 * result + (tradeprice != null ? tradeprice.hashCode() : 0);
        result = 31 * result + tradenumber;
        result = 31 * result + (tradedate != null ? tradedate.hashCode() : 0);
        result = 31 * result + tradetypeid;
        result = 31 * result + (usersid != null ? usersid.hashCode() : 0);
        result = 31 * result + (cheak != null ? cheak.hashCode() : 0);
        return result;
    }
}
