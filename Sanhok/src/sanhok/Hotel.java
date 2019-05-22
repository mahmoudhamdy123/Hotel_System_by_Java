/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sanhok;

import java.util.ArrayList;

/**
 *
 * @author ja480
 */
abstract class Hotel {

    private int numberOfCustomers;
    final static int TOTAL_NUMBER_OF_ROOMS = 300;
    private String userName;
    private int bookedRoomsNumber;

    public int getAvailableRoomsNumber() {
        return TOTAL_NUMBER_OF_ROOMS - bookedRoomsNumber;
    }

    public int getNumberOfCustomers() {
        return numberOfCustomers;
    }

    public static int getTOTAL_NUMBER_OF_ROOMS() {
        return TOTAL_NUMBER_OF_ROOMS;
    }

    public String getUserName() {
        return userName;
    }

//    public boolean bookRoom() {
//        //TODO Check which Room class the user wants
//        //TODO create an object from this Room class
//        //Change the roomObject Prototypes
//        return false;
//    }
//
//    public boolean checkIn() {
//        //TODO set the isCheckedIn variable is true in Room class with a certain date
//        return false;
//    }
//
//    public boolean checkOut() {
//        //TODO set the isCheckedOut variable is true in Room class with a certain date
//        return false;
//    }
//
//    public String calcCustomerRoomFees() {
//        //TODO Calculated and returned from the Room Class
//        return null;
//    }
//    public void cancelBooking(){
//        //TODO Delete booking
//    }

}
