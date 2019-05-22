/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sanhok;

/**
 *
 * @author ja480
 */
abstract class Room {

    public String fees;
    private boolean isBooked;
    private int roomSize;
    private int numberOfDays;
    private String checkInDate; //Date is taken from GUI using DatePicker
    private String checkOutDate; //Date is taken from GUI using DatePicker

    abstract public String getFloor();

    abstract public char getBuilding();

    abstract public int getRoomClass();

    abstract public String getRoomFees();

    abstract public String getRoomID();

    public int getRoomSize() {
        return roomSize;
    }

    public void setRoomSize(int roomSize) {
        this.roomSize = roomSize;
    }

    public int getNumberOfDays() {
        return numberOfDays;
    }

    public boolean isBooked() {
        return isBooked;
    }

    public void setIsBooked(boolean isBooked) {
        this.isBooked = isBooked;
    }

    public void setNumberOfDays(int numberOfDays) {
        this.numberOfDays = numberOfDays;
    }

    public void setCheckInDate(String checkInDate) {
        this.checkInDate = checkInDate;
    }

    public void setCheckOutDate(String checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    public String getCheckInDate() {
        //Date is taken from GUI using DatePicker
        return checkInDate;
    }

    public String getCheckOutDate() {
        //Date is taken from GUI using DatePicker
        return checkOutDate;
    }

}
