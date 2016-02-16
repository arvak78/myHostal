package com.hostal.persistence;

import javax.persistence.*;
import java.sql.Date;
import java.util.Set;

/**
 * Created by Manel on 14/02/2016.
 */
@Entity
public class Stay {
    private int id;
    private Date startDate;
    private Date endDate;
    private Double paid;
    private Set<Clients> clientsSet;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "start_date")
    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    @Basic
    @Column(name = "end_date")
    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    @Basic
    @Column(name = "paid")
    public Double getPaid() {
        return paid;
    }

    public void setPaid(Double paid) {
        this.paid = paid;
    }

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "stay_client", schema = "hostal", joinColumns = {
            @JoinColumn(name = "idstay", nullable = false, updatable = false) },
            inverseJoinColumns = { @JoinColumn(name = "idclient",
                    nullable = false, updatable = false) })
    public Set<Clients> getClientsSet() {
        return clientsSet;
    }

    public void setClientsSet(Set<Clients> clientsSet) {
        this.clientsSet = clientsSet;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Stay stay = (Stay) o;

        if (id != stay.id) return false;
        if (startDate != null ? !startDate.equals(stay.startDate) : stay.startDate != null) return false;
        if (endDate != null ? !endDate.equals(stay.endDate) : stay.endDate != null) return false;
        if (paid != null ? !paid.equals(stay.paid) : stay.paid != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (startDate != null ? startDate.hashCode() : 0);
        result = 31 * result + (endDate != null ? endDate.hashCode() : 0);
        result = 31 * result + (paid != null ? paid.hashCode() : 0);
        return result;
    }
}
