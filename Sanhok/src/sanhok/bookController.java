/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sanhok;

import java.io.IOException;
import java.net.URL;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.control.ComboBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

import javafx.scene.layout.AnchorPane;

/**
 *
 * @author Mahmoud
 */
public class bookController implements Initializable {

   

    @FXML
    private DatePicker date;
    @FXML
    private LocalDate date1;
    @FXML
    private TextField text1;
    @FXML
    private TextField text2;
    @FXML
    private TextField text3;

   
    @FXML
    private ComboBox size;
    @FXML
    private ComboBox size5;
    @FXML
    private ComboBox size6;
    @FXML
    private TextField NDay;
    @FXML
    private TextField NDay1;
    @FXML
    private TextField NDay2;
    @FXML
    private Label feee;
    
    @FXML
    private AnchorPane root4,root3,root5;

    String classe;
    int sizef;
    int nDay;
    Room room;
    String fee = "";

    @FXML
    private void ClassA(ActionEvent event) throws IOException {
        classe = "First class";
        sizef = Integer.parseInt(size.getValue().toString());
        nDay = Integer.parseInt(NDay.getText());
        room = new RoomOfFirstClass();
        room.setNumberOfDays(nDay);
        fee = room.getRoomFees();
        feee.setText("Cost : "+fee);
        room.setIsBooked(true);
        System.out.println(classe);
        System.out.println(sizef);
        System.out.println(nDay);
    }

    @FXML
    private void ClassB(ActionEvent event) throws IOException {
        classe = "Second class";
        sizef = Integer.parseInt(size5.getValue().toString());
        nDay = Integer.parseInt(NDay1.getText());
        room = new RoomOfSecondClass();
        room.setNumberOfDays(nDay);
        fee = room.getRoomFees();
        room.setIsBooked(true);
        feee.setText("Cost : "+fee);
        System.out.println(classe);
        System.out.println(sizef);
        System.out.println(nDay);
    }

    @FXML
    private void ClassC(ActionEvent event) throws IOException {
        classe = "Third class";
        sizef = Integer.parseInt(size6.getValue().toString());
        nDay = Integer.parseInt(NDay2.getText());
        room = new RoomOfThirdClass();
        room.setNumberOfDays(nDay);
        fee = room.getRoomFees();
        room.setIsBooked(true);
        feee.setText("Cost : "+fee);
        System.out.println(classe);
        System.out.println(sizef);
        System.out.println(nDay);
    }

    @FXML
    private void Booking(ActionEvent event) throws IOException {
        date1 = date.getValue();

        String s = date1.toString();
        System.out.println(s);
        System.out.println(text1.getText());
        System.out.println(text2.getText());
        Login u =new Login();
        
        u.setdata(text1.getText(),Integer.parseInt(text2.getText()),text3.getText());
        Booking b = new Booking();
        b.check_in(sizef, nDay, classe, s,Integer.parseInt(text2.getText()));
        

   
        System.out.println("Date : " + date1.toString());
          root3 =(AnchorPane) FXMLLoader.load(getClass().getResource("Booking.fxml"));
          root4.getChildren().setAll(root3);
    }
    @FXML
    private void CanBooking(ActionEvent event) throws IOException {
          root3 =(AnchorPane) FXMLLoader.load(getClass().getResource("Booking.fxml"));
          root4.getChildren().setAll(root3);
    }
    


    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // text8.setText("hiiii");
        size.getItems().addAll(1, 2, 3, 4, 5);
        size.getSelectionModel().select(0);
        size5.getItems().addAll(1, 2, 3, 4, 5);
        size5.getSelectionModel().select(0);
        size6.getItems().addAll(1, 2, 3, 4, 5);
        size6.getSelectionModel().select(0);

    }

}
