package com.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.vo.*;
import com.dbmanage.*;

public class PersonDao {
	
//	public void insertUser(Person person) {
//	    // 添加人员
//	    Dbmanage dbmanage = new Dbmanage();
//	    Connection conn = null;
//	    Statement sta = null;
//
//	    try {
//	        conn = dbmanage.initDB();
//	        sta = conn.createStatement();
//	    	String email = person.getEmail();
//	    	String title = person.getTitle();
//	    	String name = person.getName();
//	    	String institution = person.getInstitution();
//	    	String telephone = person.getTelephone();
//	    	//System.out.println(user_nickname);
//	    	//System.out.println(user_account);
//	    	//System.out.println(user_pwd);
//	        String sql = "INSERT INTO person (email,title,name,institution,telephone_number) VALUES('"
//	                + email
//	                + "','"
//	                + title
//	                + "','"
//	                + name
//	                + "','"
//	                + institution
//	                + "','"
//	                + telephone
//	                + "')";
//	        sta.executeUpdate(sql);
//	    } catch (SQLException e) {
//
//	        e.printStackTrace();
//	    } finally {
//	        // 执行完关闭数据库
//	        dbmanage.closeDB(sta, conn);
//	    }
//	}
	public void insertUser(Person person,HttpServletRequest request, HttpServletResponse response) {
	    // 添加人员
	    Dbmanage dbmanage = new Dbmanage();
	    Connection conn = null;
	    Statement sta = null;
	    try {
	        conn = dbmanage.initDB();
	        sta = conn.createStatement();
	    	String email = person.getEmail();
	    	String title = person.getTitle();
	    	String name = person.getName();
	    	String institution = person.getInstitution();
	    	String telephone = person.getTelephone();
	    	//System.out.println(user_nickname);
	    	//System.out.println(user_account);
	    	//System.out.println(user_pwd);
	    	if(email.equals("")&&name.equals("")) {
	    		System.out.println("no email no name");
	            request.setAttribute("message", "用户名和邮箱不得为空");
	    	}
	    	else if(!(title.equals("Mr")||title.equals("Ms")||title.equals("Miss")||title.equals("Dr")||title.equals("Prof")))
	        {
	        	System.out.println("register title error");
	            request.setAttribute("message", "头衔为“Mr,Ms,Miss,Dr,Prof”");
//	            request.getRequestDispatcher("index.jsp").forward(request,response);
	        }else {
	        String sql = "INSERT INTO person (email,title,name,institution,telephone_number) VALUES('"
	                + email
	                + "','"
	                + title
	                + "','"
	                + name
	                + "','"
	                + institution
	                + "','"
	                + telephone
	                + "')";
	        sta.executeUpdate(sql);
	    	System.out.println("register success");
            request.setAttribute("message", "注册成功");}
	    } catch (SQLException e) {	
	    	System.out.println("register error");
            request.setAttribute("message", "注册失败，可能是此邮箱已注册");
//	        e.printStackTrace();
	    } finally {
	        // 执行完关闭数据库
	        dbmanage.closeDB(sta, conn);
	    }
	}
	
	public Person searchUser(String email, String name) {
        // 查找人员
        Dbmanage dbmanage = new Dbmanage();
        Connection conn = null;
        Statement sta = null;
        ResultSet rs = null;
        Person person = null;
        try {
            conn = dbmanage.initDB();
            sta = conn.createStatement();
            //System.out.println(user_account);
            // System.out.println(user_pwd);
            String sql = "SELECT * FROM person WHERE email = '"
                    + email + "' AND name= '" + name + "'";
            rs = sta.executeQuery(sql);
            while (rs.next()) {
                person = new Person();
                person.setPerson_id(Integer.parseInt(rs.getString("person_id")));
                person.setEmail(rs.getString("email"));
                person.setName(rs.getString("name"));
                // System.out.println(person.getEmail());
                //System.out.println(person.getName());
            }

        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            // 执行完关闭数据库
            dbmanage.closeDB(rs, sta, conn);
        }
        // 返回查询结果
        return person;
	}
	public Person searchUser(String email) {
        // 查找人员
        Dbmanage dbmanage = new Dbmanage();
        Connection conn = null;
        Statement sta = null;
        ResultSet rs = null;
        Person person= null;
        try {
            conn = dbmanage.initDB();
            sta = conn.createStatement();
            //System.out.println(user_account);
            // System.out.println(user_pwd);
            String sql = "SELECT * FROM person WHERE email = '"
                    + email +  "'";
            rs = sta.executeQuery(sql);
            while (rs.next()) {
                person = new Person();
                person.setPerson_id(Integer.parseInt(rs.getString("person_id")));
                person.setEmail(rs.getString("email"));
                person.setTitle(rs.getString("title"));
                person.setName(rs.getString("name"));
                person.setInstitution(rs.getString("institution"));
                person.setTelephone(rs.getString("telephone_number"));
            }

        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            // 执行完关闭数据库
            dbmanage.closeDB(rs, sta, conn);
        }
        // 返回查询结果
        return person;
	}
	public Person searchUser(int person_id) {
        // 查找人员
        Dbmanage dbmanage = new Dbmanage();
        Connection conn = null;
        Statement sta = null;
        ResultSet rs = null;
        Person person= null;
        try {
            conn = dbmanage.initDB();
            sta = conn.createStatement();
            //System.out.println(user_account);
            // System.out.println(user_pwd);
            String sql = "SELECT * FROM person WHERE person_id = '"
                    + person_id +  "'";
            rs = sta.executeQuery(sql);
            while (rs.next()) {
                person = new Person();
                person.setPerson_id(Integer.parseInt(rs.getString("person_id")));
                person.setEmail(rs.getString("email"));
                person.setTitle(rs.getString("title"));
                person.setName(rs.getString("name"));
                person.setInstitution(rs.getString("institution"));
                person.setTelephone(rs.getString("telephone_number"));
            }

        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            // 执行完关闭数据库
            dbmanage.closeDB(rs, sta, conn);
        }
        // 返回查询结果
        return person;
	}
	public Person searchMember(int person_id) {
        // 查找人员
        Dbmanage dbmanage = new Dbmanage();
        Connection conn = null;
        Statement sta = null;
        ResultSet rs = null;
        Person person= null;
        try {
            conn = dbmanage.initDB();
            sta = conn.createStatement();
            //System.out.println(user_account);
            // System.out.println(user_pwd);
            String sql = "SELECT * FROM pc_member WHERE person_id = '"
                    + person_id +  "'";
            rs = sta.executeQuery(sql);
            while (rs.next()) {
                person = new Person();
                person.setPerson_id(Integer.parseInt(rs.getString("person_id")));
            }

        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            // 执行完关闭数据库
            dbmanage.closeDB(rs, sta, conn);
        }
        // 返回查询结果
        return person;
	}
}
