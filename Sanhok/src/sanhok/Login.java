/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sanhok;
import java.util.*;

import java.sql.*;

/**
 *
 * @author ja480
 */
public class Login {

    private Connection con;
    private Statement st;
    private ResultSet rs;


    public Login() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "");
            st = con.createStatement();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException ex) {
          System.out.println("Error" + ex);
   
        }
        
    }

    public boolean setdata(String name,int ID , String email) {
        try {

            String sql = "INSERT INTO regestration (username,Id,email) VALUES (?, ?, ?)";
            PreparedStatement insertStatement = con.prepareStatement(sql);
            insertStatement.setString(1, name);
            insertStatement.setInt(2, ID);
            insertStatement.setString(3, email);
            insertStatement.execute();

            return true;

        } catch (SQLException ex) {
            System.out.println("Error" + ex);
            return false;
        }
    }
   
    public boolean checkdata(String user,String pass)
    {
        try{
        
            String sql2 = "Select * from regestration Where username='" + user + "' and password='" + pass + "'";
            rs=st.executeQuery(sql2);
            
            if(!rs.next())
            {
                return false;
            }
            else
            {
               return true;
            }
            
        }catch(Exception ex){
            System.out.println("Error"+ex);
            return false;
        }
    }
}
