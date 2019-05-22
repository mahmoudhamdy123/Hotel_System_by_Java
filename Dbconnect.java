/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel1;

import java.sql.*;

/**
 *
 * @author Lenovo
 */
public class Dbconnect {

    private Connection con;
    private Statement st;
    private ResultSet rs;
    Room[] firstClassRooms = new Room[100];
    Room[] secondClassRooms = new Room[100];
    Room[] thirdClassRooms = new Room[100];

    public Dbconnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "");
            st = con.createStatement();
        } catch (Exception ex) {
            System.out.println("Error" + ex);
        }
    }

    public boolean setdata(String name, String email, String password) {
        try {

            String sql = "INSERT INTO regestration (username,password,email) VALUES (?, ?, ?)";
            PreparedStatement insertStatement = con.prepareStatement(sql);
            insertStatement.setString(1, name);
            insertStatement.setString(2, password);
            insertStatement.setString(3, email);
            insertStatement.execute();

            return true;

        } catch (Exception ex) {
            System.out.println("Error" + ex);
            return false;
        }
    }

    public boolean checkdata(String user, String pass) {
        try {

            String sql2 = "Select * from regestration Where username='" + user + "' and password='" + pass + "'";
            rs = st.executeQuery(sql2);

            if (!rs.next()) {
                return false;
            } else {
                return true;
            }

        } catch (Exception ex) {
            System.out.println("Error" + ex);
            return false;
        }
    }

  /*     public void generate_rooms_of_class_C() {
        for (int i = 0; i < thirdClassRooms.length; i++) {
             thirdClassRooms[i] = new RoomOfThirdClass();

                         try{
       String sql2 = "INSERT INTO room (room_id,floor_number,building_code,fees,is_booked,room_size,number_of_days,room_class) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement insertStatement = con.prepareStatement(sql2);
          insertStatement.setString(1, thirdClassRooms[i].getRoomID());
         insertStatement.setString(2, thirdClassRooms[i].getFloor());
         insertStatement.setString(3, String.valueOf(thirdClassRooms[i].getBuilding()));
         insertStatement.setString(4,thirdClassRooms[i].getRoomFees());
         insertStatement.setBoolean(5, false);
         insertStatement.setInt(6,thirdClassRooms[i].getRoomSize());
         insertStatement.setInt(7,0); 
    insertStatement.setString(8,"Third class");
         insertStatement.execute();
                   

            

            
        }catch(Exception ex){
            System.out.println("Error"+ex);
           
        }
            //Now we insert 
            //Insert firstClassRooms[i].getRoomID();
            //Insert firstClassRooms[i].getFloor();
            //Insert firstClassRooms[i].getBuilding();
            //Insert firstClassRooms[i].getRoomFees();
        }
    }
     */
    
    public void check_in(int size, int days, String roomClass) {
        try {
            Room room;
            String fee = "";

            if (roomClass.equals("First class")) {
                room = new RoomOfFirstClass();
                room.setNumberOfDays(days);
                fee = room.getRoomFees();
                room.setIsBooked(true);
            } else if (roomClass.equals("Second class")) {
                room = new RoomOfSecondClass();
                room.setNumberOfDays(days);
                fee = room.getRoomFees();
                room.setIsBooked(true);
            } else if (roomClass.equals("Third class")) {
                room = new RoomOfThirdClass();
                room.setNumberOfDays(days);
                fee = room.getRoomFees();
                room.setIsBooked(true);
            } else {
                System.out.println("Error!!");
            }
            
            String sql2 = "Select room_id from room Where room_size='" + size + "' and is_booked ='" + 0 + "' and room_class = '" + roomClass + "'";
            rs = st.executeQuery(sql2);
            if (rs.next()) {
                String Name = rs.getString(1);

                String sql3 = "UPDATE room SET is_booked = ? , "
                        + "number_of_days = ? , " + "fees = ? "
                        + "WHERE room_id = ?";
                PreparedStatement pstmt = con.prepareStatement(sql3);
                pstmt.setBoolean(1, true);
                pstmt.setInt(2, days);
                pstmt.setString(3, fee);
                pstmt.setString(4, Name);
                pstmt.executeUpdate();
                String sql4 = "UPDATE regestration SET room_fk = ? ";
                PreparedStatement pstmt2 = con.prepareStatement(sql4);
                pstmt2.setString(1, Name);
                pstmt2.execute();
            }
        } catch (Exception ex) {
            System.out.println("Error" + ex);

        }

    }
     public void check_out(String user ,int id) {
        try {
           
            String sql2 = "Select room_fk from regestration Where username='" + user + "' and Id ='" + id + "'";
            rs = st.executeQuery(sql2);
            if (rs.next()) {
                String Name = rs.getString(1);

                String sql3 = "UPDATE room SET is_booked = ? , "
                        + "number_of_days = ? , " + "fees = ? "
                        + "WHERE room_id = ?";
                PreparedStatement pstmt = con.prepareStatement(sql3);
                pstmt.setBoolean(1, false);
                pstmt.setInt(2,  0);
                pstmt.setString(3, "0 $");
                pstmt.setString(4, Name);
                pstmt.executeUpdate();
                String sql4 = "UPDATE regestration SET room_fk = ? ";
                PreparedStatement pstmt2 = con.prepareStatement(sql4);
                pstmt2.setString(1, null);
                pstmt2.execute();
            }
        } catch (Exception ex) {
            System.out.println("Error" + ex);

        }

    }
    

}
    


