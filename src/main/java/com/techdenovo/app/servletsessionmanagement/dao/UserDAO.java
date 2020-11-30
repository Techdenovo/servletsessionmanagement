package com.techdenovo.app.servletsessionmanagement.dao;

import com.techdenovo.app.servletsessionmanagement.model.User;
import com.techdenovo.app.servletsessionmanagement.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    public User checkLogin(String username, String password) throws SQLException {
        DbUtil dbUtil =new DbUtil();
        Connection con = dbUtil.dbConnection();

        String query = "SELECT * FROM USER WHERE USERNAME=? AND PASSWORD=?";
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1,username);
        ps.setString(2,password);

        ResultSet rs = ps.executeQuery();
        User user = null;
        if(rs.next()){
            user = new User();
            user.setFirstName(rs.getString("FIRST_NAME"));
            user.setLastName(rs.getString("LAST_NAME"));
        }
        con.close();
        return user;
    }
}
