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

public class Checkout implements Initializable {
  
     
        
      @FXML private AnchorPane root3,root6;
      @FXML private TextField text1;
      @FXML private TextField text2;
        
@FXML
    private void Back(ActionEvent event) throws IOException {
          root3 =(AnchorPane) FXMLLoader.load(getClass().getResource("Booking.fxml"));
          root6.getChildren().setAll(root3);
    }
 @FXML
    private void Ok(ActionEvent event) throws IOException {
           Booking b = new Booking();
            b.check_out(text1.getText(), Integer.parseInt(text2.getText()));
          root3 =(AnchorPane) FXMLLoader.load(getClass().getResource("Booking.fxml"));
          root6.getChildren().setAll(root3);
    }
         
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        
    }    
    
}



