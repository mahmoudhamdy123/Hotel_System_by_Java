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
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

import javafx.scene.layout.AnchorPane;

/**
 *
 * @author Mahmoud
 */
public class BookingController implements Initializable {
    
 @FXML   private AnchorPane root1,root5;
 ///////////////////////////////////////////////////////////////////////////////////////////
 @FXML   private AnchorPane root3;
 ///////////////////////////////////////////////////////////////////////////////////////////
    @FXML
    private AnchorPane root4;
        
        @FXML 
     private void Login2(ActionEvent event) throws IOException {   
          root1 =(AnchorPane) FXMLLoader.load(getClass().getResource("FXMLDocument.fxml"));
          root3.getChildren().setAll(root1);
                  }
     @FXML 
     private void Booker(ActionEvent event) throws IOException {   
          root4 =(AnchorPane) FXMLLoader.load(getClass().getResource("Book.fxml"));
          root3.getChildren().setAll(root4);
                  }
      
    @FXML
    private void CheckIN(ActionEvent event) throws IOException {
          root5 =(AnchorPane) FXMLLoader.load(getClass().getResource("checkin.fxml"));
          root3.getChildren().setAll(root5);
    }
    @FXML
    private void CheckOUT(ActionEvent event) throws IOException {
          root5 =(AnchorPane) FXMLLoader.load(getClass().getResource("checkout.fxml"));
          root3.getChildren().setAll(root5);
    }
     
     
     
   
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // text8.setText("hiiii");
    }    
    
}
