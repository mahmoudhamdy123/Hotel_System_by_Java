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
          private AnchorPane root1,root2;
        
        @FXML 
         private void newUser(ActionEvent event) throws IOException {
             
          root2 =(AnchorPane) FXMLLoader.load(getClass().getResource("Registrition.fxml"));
          root1.getChildren().setAll(root2);

                  }
 ///////////////////////////////////////////////////////////////////////////////////////////////////// 
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
}
