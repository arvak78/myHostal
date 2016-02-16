package com.hostal.controller;

import com.hostal.manager.RoomManager;
import com.hostal.persistence.Clients;
import com.hostal.persistence.Room;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.PostConstruct;
import javax.inject.Named;
import java.util.List;

@Named
public class RoomController {

    public static final String NEWLINE = "\n";

    @Autowired
    private RoomManager roomManager;

    public List<Room> allRooms;

    @PostConstruct
    public void initIt() throws Exception {
        allRooms = roomManager.getAllRooms();
    }


    public List<Room> getAllRooms() {
        return this.allRooms;
    }

    public void setAllRooms(List<Room> allRooms) {
        this.allRooms = allRooms;
    }

    public String getClientInfo(Clients client) {
        StringBuffer clientInfo = new StringBuffer();
        clientInfo.append(client.getDocumentType() + " " + client.getDocument()).append(NEWLINE);
        clientInfo.append(client.getBirthday());
        return clientInfo.toString();
    }
}
