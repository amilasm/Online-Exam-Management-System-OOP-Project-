package service;

import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class login {

    public static final Logger logger = Logger.getLogger(login.class.getName());
private static Connection connection;
    public boolean adminlogin(String username,String password){
        //validate login
        boolean st = false;
        try{
            connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM admin WHERE username =? and password=?");
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);    //validate login details


            ResultSet rs = preparedStatement.executeQuery();
            st  = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
            logger.log(Level.SEVERE, e.getMessage());

        }


        return st;
    }

}
