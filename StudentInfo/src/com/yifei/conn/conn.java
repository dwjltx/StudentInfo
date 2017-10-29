package com.yifei.conn;
import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
	public Connection getCon()
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/zyf?useUnicode=true&characterEncoding=gb2312&useSSL=true";
			String user="root";
			String password="123zyfwan";
			Connection conn=DriverManager.getConnection(url, user, password);
			System.out.println(conn.getMetaData().getURL());
			System.out.println("连接成功");

			return conn;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
}
