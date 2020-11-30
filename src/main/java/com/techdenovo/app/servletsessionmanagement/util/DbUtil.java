package com.techdenovo.app.servletsessionmanagement.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
    String url= "jdbc:mysql://localhost:3306/sessionmanagement_12";
    String dbUser ="root";
    String dbPassword="";

    public Connection dbConnection(){
        Connection con=null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,dbUser,dbPassword);

        } catch (SQLException | ClassNotFoundException e){
           e.printStackTrace();
        }
        return con;
    }


}
