package app;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by 63128 on 2019/4/22.
 */
@Entity
@Table(name = "tradeinfo", schema = "stock_system", catalog = "")
public class TradeinfoEntity {
    private String tradeinfocode;
    private String tradeinfoname;
    private String tradeinfobuypride;
    private int tradeinfodealnum;
    private Date tradeinfodate;

    @Id
    @Column(name = "tradeinfocode")
    public String getTradeinfocode() {
        return tradeinfocode;
    }

    public void setTradeinfocode(String tradeinfocode) {
        this.tradeinfocode = tradeinfocode;
    }

    @Basic
    @Column(name = "tradeinfoname")
    public String getTradeinfoname() {
        return tradeinfoname;
    }

    public void setTradeinfoname(String tradeinfoname) {
        this.tradeinfoname = tradeinfoname;
    }

    @Basic
    @Column(name = "tradeinfobuypride")
    public String getTradeinfobuypride() {
        return tradeinfobuypride;
    }

    public void setTradeinfobuypride(String tradeinfobuypride) {
        this.tradeinfobuypride = tradeinfobuypride;
    }

    @Basic
    @Column(name = "tradeinfodealnum")
    public int getTradeinfodealnum() {
        return tradeinfodealnum;
    }

    public void setTradeinfodealnum(int tradeinfodealnum) {
        this.tradeinfodealnum = tradeinfodealnum;
    }

    @Basic
    @Column(name = "tradeinfodate")
    public Date getTradeinfodate() {
        return tradeinfodate;
    }

    public void setTradeinfodate(Date tradeinfodate) {
        this.tradeinfodate = tradeinfodate;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TradeinfoEntity that = (TradeinfoEntity) o;

        if (tradeinfodealnum != that.tradeinfodealnum) return false;
        if (tradeinfocode != null ? !tradeinfocode.equals(that.tradeinfocode) : that.tradeinfocode != null)
            return false;
        if (tradeinfoname != null ? !tradeinfoname.equals(that.tradeinfoname) : that.tradeinfoname != null)
            return false;
        if (tradeinfobuypride != null ? !tradeinfobuypride.equals(that.tradeinfobuypride) : that.tradeinfobuypride != null)
            return false;
        if (tradeinfodate != null ? !tradeinfodate.equals(that.tradeinfodate) : that.tradeinfodate != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = tradeinfocode != null ? tradeinfocode.hashCode() : 0;
        result = 31 * result + (tradeinfoname != null ? tradeinfoname.hashCode() : 0);
        result = 31 * result + (tradeinfobuypride != null ? tradeinfobuypride.hashCode() : 0);
        result = 31 * result + tradeinfodealnum;
        result = 31 * result + (tradeinfodate != null ? tradeinfodate.hashCode() : 0);
        return result;
    }
}
