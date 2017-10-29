package com.yifei.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.yifei.model.Student;

public class userService {
	private Connection conn;
	private PreparedStatement pstmt;

	public userService() {
		conn = new com.yifei.conn.conn().getCon();
		System.out.println("gouzaol");
	}

	public boolean valiUser(Student user) {
		try {
			pstmt = conn.prepareStatement("select * from student where sid=? and password=?");
			pstmt.setString(1, user.getSid());
			pstmt.setString(2, user.getPassword());
			ResultSet rs = pstmt.executeQuery();
			//System.out.println(rs.next()+"show");
			//System.out.println(rs.getString(1));
			if (rs.next()) {
				System.out.println("判断正确后");
				return true;
			} else {
				System.out.println("false"+rs.next()+"end");
				System.out.println(user.getSid()+user.getPassword());
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("进入catch");
			e.printStackTrace();
			return false;
		}

	}

}
