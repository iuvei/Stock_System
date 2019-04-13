package app;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by 63128 on 2019/4/13.
 */
@Entity
@Table(name = "trade", schema = "stock_system", catalog = "")
public class TradeEntity {
    private int tradeid;
    private int tradeprice;
    private int tradenumber;
    private Date tradedate;

    @Id
    @Column(name = "tradeid")
    public int getTradeid() {
        return tradeid;
    }

    public void setTradeid(int tradeid) {
        this.tradeid = tradeid;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TradeEntity that = (TradeEntity) o;

        if (tradeid != that.tradeid) return false;
        if (tradeprice != that.tradeprice) return false;
        if (tradenumber != that.tradenumber) return false;
        if (tradedate != null ? !tradedate.equals(that.tradedate) : that.tradedate != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = tradeid;
        result = 31 * result + tradeprice;
        result = 31 * result + tradenumber;
        result = 31 * result + (tradedate != null ? tradedate.hashCode() : 0);
        return result;
    }
}
