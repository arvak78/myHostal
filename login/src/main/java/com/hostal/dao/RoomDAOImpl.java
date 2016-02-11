package com.hostal.dao;

import com.hostal.dao.interfaces.RoomDAOInterface;
import com.hostal.persistence.Room;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Named;
import java.util.List;

/**
 * Room Dao
 */
@Named
@Transactional("transactionManager")
public class RoomDAOImpl implements RoomDAOInterface{

    @Autowired
    private SessionFactory sessionFactory;

    public List<Room> getAllRooms() {

        List<Room> room  = (List<Room>)sessionFactory.getCurrentSession().createQuery("from Room").list();

        return room;
    }

}
