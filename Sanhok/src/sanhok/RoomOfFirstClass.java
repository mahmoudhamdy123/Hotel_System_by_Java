/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sanhok;

import java.util.Random;

/**
 *
 * @author ja480
 */
public class RoomOfFirstClass extends Room {

    private final String ID; //once you assign a value for ID (in constructor) you CANNOT CHANGE IT AGAIN!!
    private final int classFee = 3000;
    private int roomSizefee;
    private String floor;
    private char building;
    private String fees;

    public RoomOfFirstClass() {
        Random rn = new Random();
        int x = rn.nextInt(3);
        switch (x) {
            case 0:
                floor = "First floor";
                break;
            case 1:
                floor = "Second floor";
                break;
            default:
                floor = "Third floor";
                break;
        }
        int y = rn.nextInt(3);
        switch (y) {
            case 0:
                building = 'A';
                break;
            case 1:
                building = 'B';
                break;
            default:
                building = 'C';
                break;
        }
        int z = rn.nextInt(999999);
        ID = "FC-" + building + "-" + getFloorUsedForId() + z;
        int w = getRoomSize();
        switch (w) {
            case 1:
                roomSizefee = 1000;
                break;
            case 2:
                roomSizefee = 2000;
                break;
            case 3:
                roomSizefee = 3000;
                break;
            case 4:
                roomSizefee = 4000;
                break;
            case 5:
                roomSizefee = 5000;
                break;
            default:
                break;
        }

    }

    @Override
    public String getFloor() {
        return floor;
    }

    @Override
    public char getBuilding() {
        return building;
    }

    @Override
    public int getRoomClass() {
        return 1;
    }

    @Override
    public String getRoomFees() {
        int totalFee = (classFee + roomSizefee) * getNumberOfDays();
        fees = totalFee + " $";
        return fees;
    }

    @Override
    public String getRoomID() {
        return ID;
    }

    public String getFloorUsedForId() {
        if (floor.equals("First floor")) {
            return "ff";
        } else if (floor.equals("Second floor")) {
            return "sf";
        } else if (floor.equals("")) {
            return "tf";
        } else {
            return "FLOORISN'TFOUND";
        }

    }

}
