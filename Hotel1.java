/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hotel1;

/**
 *
 * @author Lenovo
 */
public class Hotel1 {

    //All Data User-->Customer
    private String Email;
    private String userName;
    private int Password;
    //All Method User-->Customer
    
    
    public String getUserName() {
        return userName;
    }

    public int getPassword() {
        return Password;
    }
    public String getEmail() {
        return Email;
    }



    public static void main(String[] args) {
       Dbconnect con = new Dbconnect();
       con.check_out("ahmed", 1);

    }
    
}
