package app;

import javax.persistence.*;

/**
 * Created by 63128 on 2019/4/13.
 */
@Entity
@Table(name = "holding", schema = "stock_system", catalog = "")
public class HoldingEntity {
    private String holdid;
    private int number;
    private int avgprice;
    private int stockid;
    private int money;

    @Id
    @Column(name = "holdid")
    public String getHoldid() {
        return holdid;
    }

    public void setHoldid(String holdid) {
        this.holdid = holdid;
    }

    @Basic
    @Column(name = "number")
    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Basic
    @Column(name = "avgprice")
    public int getAvgprice() {
        return avgprice;
    }

    public void setAvgprice(int avgprice) {
        this.avgprice = avgprice;
    }

    @Basic
    @Column(name = "stockid")
    public int getStockid() {
        return stockid;
    }

    public void setStockid(int stockid) {
        this.stockid = stockid;
    }

    @Basic
    @Column(name = "money")
    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        HoldingEntity that = (HoldingEntity) o;

        if (number != that.number) return false;
        if (avgprice != that.avgprice) return false;
        if (stockid != that.stockid) return false;
        if (money != that.money) return false;
        if (holdid != null ? !holdid.equals(that.holdid) : that.holdid != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = holdid != null ? holdid.hashCode() : 0;
        result = 31 * result + number;
        result = 31 * result + avgprice;
        result = 31 * result + stockid;
        result = 31 * result + money;
        return result;
    }
}
