/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sanhok;



import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

import javafx.scene.layout.AnchorPane;

/**
 *
 * @author Mahmoud
 */
public class FXMLDocumentController implements Initializable {
    
    @FXML
    private Label label;
///////////////////////////////////////////////////////////////////////////////////////////////////  
        @FXML 
          private AnchorPane root1,root2,root3;
        
        @FXML 
         private void newUser(ActionEvent event) throws IOException {
             
          root2 =(AnchorPane) FXMLLoader.load(getClass().getResource("Registrition.fxml"));
          root1.getChildren().setAll(root2);

                  }
 ///////////////////////////////////////////////////////////////////////////////////////////////////// 
  ///////////////////////////////////////////////////////////////////////////////////////////////////
         @FXML private TextField text6;
         @FXML private TextField text7;
        @FXML 
         private void profile(ActionEvent event) throws IOException {
             
                Worker u=new Worker();
                System.out.println(u.checkdata(text6.getText(), text7.getText()));
                if(u.checkdata(text6.getText(), text7.getText())){

                             root3 =(AnchorPane) FXMLLoader.load(getClass().getResource("Booking.fxml"));
                             root1.getChildren().setAll(root3);
                }
                else{
                System.out.println("Error");
                }


                  }
 /////////////////////////////////////////////////////////////////////////////////////////////////////   
 ///////////////////////////////////////////////////////////////////////////////////        
         
         
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
}
