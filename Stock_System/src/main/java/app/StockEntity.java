package app;

import java.util.Date;

/**
 * Created by 63128 on 2019/4/21.
 */
public class StockEntity {
    private Integer id;//唯一标识
    private String code;//上市公司代码
    private String name;//公司名称
    private String simpleName;//股票名称
    private Float open;//今日开盘价
    private Float close;//昨日收盘价
    private Float price;//当前价格
    private Float high;//今日最高价
    private Float low;//今日最低价
    private Float buyPrice;//竞买价，即买一报价
    private Float sellPrice;//竞卖价
    private Long dealNum;//成交的股票数，由于股票交易以一百股为基本单位，所以在使用时，通常把该值除以一百
    private Float dealPrice;//成交金额，单位为“元”，为了一目了然，通常以“万元”为成交金额的单位，所以通常把该值除以一万
    private Integer firstBuyNum;//“买一”申请4695股，即47手
    private Float firstBuyPrice;//“买一”报价；
    private Integer secondBuyNum;//买二
    private Float secondBuyPrice;//买二价格
    private Integer thirdBuyNum;//买三数量
    private Float thirdBuyPrice;//买三价格
    private Integer fourthBuyNum;//买四数量
    private Float fourthBuyPrice;//买四价格
    private Integer fifthBuyNum;//买五数量
    private Float fifthBuyPrice;//买五价格
    private Integer firstSellNum;//“买一”申请4695股，即47手
    private Float firstSellPrice;//“买一”报价；
    private Integer secondSellNum;//买二
    private Float secondSellPrice;//买二价格
    private Integer thirdSellNum;//买三数量
    private Float thirdSellPrice;//买三价格
    private Integer fourthSellNum;//买四数量
    private Float fourthSellPrice;//买四价格
    private Integer fifthSellNum;//买五数量
    private Float fifthSellPrice;//买五价格
    private Date date;//日期
    private String time;//时间

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSimpleName() {
        return simpleName;
    }

    public void setSimpleName(String simpleName) {
        this.simpleName = simpleName;
    }

    public Float getOpen() {
        return open;
    }

    public void setOpen(Float open) {
        this.open = open;
    }

    public Float getClose() {
        return close;
    }

    public void setClose(Float close) {
        this.close = close;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Float getHigh() {
        return high;
    }

    public void setHigh(Float high) {
        this.high = high;
    }

    public Float getLow() {
        return low;
    }

    public void setLow(Float low) {
        this.low = low;
    }

    public Float getBuyPrice() {
        return buyPrice;
    }

    public void setBuyPrice(Float buyPrice) {
        this.buyPrice = buyPrice;
    }

    public Float getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(Float sellPrice) {
        this.sellPrice = sellPrice;
    }

    public Long getDealNum() {
        return dealNum;
    }

    public void setDealNum(Long dealNum) {
        this.dealNum = dealNum;
    }

    public Float getDealPrice() {
        return dealPrice;
    }

    public void setDealPrice(Float dealPrice) {
        this.dealPrice = dealPrice;
    }

    public Integer getFirstBuyNum() {
        return firstBuyNum;
    }

    public void setFirstBuyNum(Integer firstBuyNum) {
        this.firstBuyNum = firstBuyNum;
    }

    public Float getFirstBuyPrice() {
        return firstBuyPrice;
    }

    public void setFirstBuyPrice(Float firstBuyPrice) {
        this.firstBuyPrice = firstBuyPrice;
    }

    public Integer getSecondBuyNum() {
        return secondBuyNum;
    }

    public void setSecondBuyNum(Integer secondBuyNum) {
        this.secondBuyNum = secondBuyNum;
    }

    public Float getSecondBuyPrice() {
        return secondBuyPrice;
    }

    public void setSecondBuyPrice(Float secondBuyPrice) {
        this.secondBuyPrice = secondBuyPrice;
    }

    public Integer getThirdBuyNum() {
        return thirdBuyNum;
    }

    public void setThirdBuyNum(Integer thirdBuyNum) {
        this.thirdBuyNum = thirdBuyNum;
    }

    public Float getThirdBuyPrice() {
        return thirdBuyPrice;
    }

    public void setThirdBuyPrice(Float thirdBuyPrice) {
        this.thirdBuyPrice = thirdBuyPrice;
    }

    public Integer getFourthBuyNum() {
        return fourthBuyNum;
    }

    public void setFourthBuyNum(Integer fourthBuyNum) {
        this.fourthBuyNum = fourthBuyNum;
    }

    public Float getFourthBuyPrice() {
        return fourthBuyPrice;
    }

    public void setFourthBuyPrice(Float fourthBuyPrice) {
        this.fourthBuyPrice = fourthBuyPrice;
    }

    public Integer getFifthBuyNum() {
        return fifthBuyNum;
    }

    public void setFifthBuyNum(Integer fifthBuyNum) {
        this.fifthBuyNum = fifthBuyNum;
    }

    public Float getFifthBuyPrice() {
        return fifthBuyPrice;
    }

    public void setFifthBuyPrice(Float fifthBuyPrice) {
        this.fifthBuyPrice = fifthBuyPrice;
    }

    public Integer getFirstSellNum() {
        return firstSellNum;
    }

    public void setFirstSellNum(Integer firstSellNum) {
        this.firstSellNum = firstSellNum;
    }

    public Float getFirstSellPrice() {
        return firstSellPrice;
    }

    public void setFirstSellPrice(Float firstSellPrice) {
        this.firstSellPrice = firstSellPrice;
    }

    public Integer getSecondSellNum() {
        return secondSellNum;
    }

    public void setSecondSellNum(Integer secondSellNum) {
        this.secondSellNum = secondSellNum;
    }

    public Float getSecondSellPrice() {
        return secondSellPrice;
    }

    public void setSecondSellPrice(Float secondSellPrice) {
        this.secondSellPrice = secondSellPrice;
    }

    public Integer getThirdSellNum() {
        return thirdSellNum;
    }

    public void setThirdSellNum(Integer thirdSellNum) {
        this.thirdSellNum = thirdSellNum;
    }

    public Float getThirdSellPrice() {
        return thirdSellPrice;
    }

    public void setThirdSellPrice(Float thirdSellPrice) {
        this.thirdSellPrice = thirdSellPrice;
    }

    public Integer getFourthSellNum() {
        return fourthSellNum;
    }

    public void setFourthSellNum(Integer fourthSellNum) {
        this.fourthSellNum = fourthSellNum;
    }

    public Float getFourthSellPrice() {
        return fourthSellPrice;
    }

    public void setFourthSellPrice(Float fourthSellPrice) {
        this.fourthSellPrice = fourthSellPrice;
    }

    public Integer getFifthSellNum() {
        return fifthSellNum;
    }

    public void setFifthSellNum(Integer fifthSellNum) {
        this.fifthSellNum = fifthSellNum;
    }

    public Float getFifthSellPrice() {
        return fifthSellPrice;
    }

    public void setFifthSellPrice(Float fifthSellPrice) {
        this.fifthSellPrice = fifthSellPrice;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
