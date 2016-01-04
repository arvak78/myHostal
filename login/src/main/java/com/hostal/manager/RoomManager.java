package com.hostal.manager;

import com.hostal.dao.interfaces.RoomDAOInterface;
import com.hostal.persistence.Room;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

/**
 * Room manager
 */
@Named
public class RoomManager {

    @Inject
    public RoomDAOInterface roomDAO;

    public List<Room> getAllRooms() {
        return roomDAO.getAllRooms();
    }

}
