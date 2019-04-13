package app;

import javax.persistence.*;

/**
 * Created by 63128 on 2019/4/13.
 */
@Entity
@Table(name = "tradetype", schema = "stock_system", catalog = "")
public class TradetypeEntity {
    private int tradetypeid;
    private Integer type;

    @Id
    @Column(name = "tradetypeid")
    public int getTradetypeid() {
        return tradetypeid;
    }

    public void setTradetypeid(int tradetypeid) {
        this.tradetypeid = tradetypeid;
    }

    @Basic
    @Column(name = "type")
    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        TradetypeEntity that = (TradetypeEntity) o;

        if (tradetypeid != that.tradetypeid) return false;
        if (type != null ? !type.equals(that.type) : that.type != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = tradetypeid;
        result = 31 * result + (type != null ? type.hashCode() : 0);
        return result;
    }
}
