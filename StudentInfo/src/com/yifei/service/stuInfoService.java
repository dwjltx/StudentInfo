package com.yifei.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.yifei.model.Student;
import com.yifei.model.Student_base_information;
import com.yifei.model.Student_contact_way;
import com.yifei.model.interest;
import com.yifei.model.myStudent;

public class stuInfoService {
	private Connection conn1,conn2;
	private PreparedStatement pstmt;

	public stuInfoService() {
		conn1 = new com.yifei.conn.conn().getCon();
		conn2 = new com.yifei.conn.conn2().getCon();
		System.out.println("gouzaol");
	}

	public boolean addStu(Student stu) {
		try {
			pstmt=conn1.prepareStatement("insert into student"
					+"(sid,name)"+"values(?,?)");
			pstmt.setString(1, stu.getSid());
			pstmt.setString(2, stu.getName());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("½øÈëcatch");
			e.printStackTrace();
			return false;
		}

	}
	
	public List querybySid(Student stu)
	{
		List stus=new ArrayList();
				try{
					
					pstmt=conn1.prepareStatement("select * from student where sid=?");
					pstmt.setString(1, stu.getSid());
					ResultSet rs=pstmt.executeQuery();
					while(rs.next()){
					
					stu.setSid(rs.getString(1));
					stu.setName(rs.getString(2));
					stu.setPassword(rs.getString(3));
					stu.setSex(rs.getString(4));
					stu.setQq(rs.getString(5));
					stu.setTel(rs.getString(6));
					stu.setProvince(rs.getString(7));
					stus.add(stu);
					
					}
					return stus;
				}catch(SQLException e){
					e.printStackTrace();
					return null;
					
				}
	}
	
	public List queryAllStu()
	{
		List stus=new ArrayList();
				try{
					
					pstmt=conn1.prepareStatement("select * from student");
					ResultSet rs=pstmt.executeQuery();
					while(rs.next()){
					Student stu=new Student();
					stu.setSid(rs.getString(1));
					stu.setName(rs.getString(2));
					stu.setPassword(rs.getString(3));
					stu.setSex(rs.getString(4));
					stu.setQq(rs.getString(5));
					stu.setTel(rs.getString(6));
					stu.setProvince(rs.getString(7));
					stus.add(stu);
					
					}
					return stus;
				}catch(SQLException e){
					e.printStackTrace();
					return null;
					
				}
	}
	
	
	public List queryAllStu1(){
		List mystu=new ArrayList();
		try{
		pstmt=conn1.prepareStatement("select * from interest");
		
		
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
		interest stu=new interest();
		stu.setIntid(rs.getInt(1));
		stu.setInterest(rs.getString(2));
		mystu.add(stu);
		}
		return mystu;
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}
		
	}
	public List queryAllStu2(){
		List mystu=new ArrayList();
		try{
		pstmt=conn2.prepareStatement("select * from Student_base_information");
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
		Student_base_information stu=new Student_base_information();
		stu.setStudent_id(rs.getString(1));
		stu.setStudent_name(rs.getString(2));
		stu.setStudent_sex(rs.getString(3));
		stu.setStudent_family(rs.getString(4));
		stu.setStudent_birthday(rs.getString(5));
		stu.setStudent_roots(rs.getString(6));
		stu.setStudent_address(rs.getString(7));
		stu.setStudent_parent1(rs.getString(8));
		stu.setStudent_parent1_tel(rs.getString(9));
	
		mystu.add(stu);
		}
		return mystu;
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}
		
	}
	
	public List queryAllStu3(){
		List mystu=new ArrayList();
		try{
		pstmt=conn2.prepareStatement("select * from Student_contact_way");
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			Student_contact_way stu=new Student_contact_way();
		stu.setStudent_id(rs.getString(1));
		stu.setStudent_name(rs.getString(2));
		stu.setStudent_dormitory(rs.getString(3));
		stu.setStudent_number(rs.getString(4));
		stu.setStudent_tel(rs.getString(5));
		stu.setStudent_QQ(rs.getString(6));
		stu.setStudent_email(rs.getString(7));
		mystu.add(stu);
		}
		return mystu;
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}
		
	}

}
