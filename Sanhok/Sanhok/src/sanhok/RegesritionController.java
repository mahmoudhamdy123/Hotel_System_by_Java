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

public class RegesritionController implements Initializable {

@FXML
    private Label label;
    ///////////////////////////////////////////////////////////////////////////////////////////////////  
        @FXML 
          private AnchorPane root1,root2;
        
        @FXML 
         private void Login(ActionEvent event) throws IOException {
             
          root1 =(AnchorPane) FXMLLoader.load(getClass().getResource("FXMLDocument.fxml"));
          root2.getChildren().setAll(root1);

                  }
 ///////////////////////////////////////////////////////////////////////////////////////////////////// 
    
    
///////////////////////////////////////////////////////////////////////////////////////////////////  
        @FXML private TextField text1;
        @FXML private TextField text2;
        @FXML private TextField text3;
        @FXML private TextField text4;
        @FXML private TextField text5;
        
        @FXML 
        
         private void setData(ActionEvent event) throws IOException {
               Login user=new Login();
                
               if(!text1.getText().equals("") && !text2.getText().equals("") && !text3.getText().equals("") && !text4.getText().equals("") && !text5.getText().equals("") ){
                  if(text4.getText()==text5.getText()){
                     String s=text1.getText()+" "+text2.getText();
                     System.out.println(s);
                     }}
                  }
 ///////////////////////////////////////////////////////////////////////////////////////////////////// 
  
         
         
         
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        
    }    
    
}
