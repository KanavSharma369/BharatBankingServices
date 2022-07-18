package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


public class CustomerDAO {

	String nameQuerySender="Select * from customers; ";
	String emailQuerySender="Select * from customers;";
	
	String nameQueryReciever="Select * from customers where email NOT LIKE ?;";
	String emailQueryReciever="Select * from customers where email NOT LIKE ?;";
	
	String detailsQuery="Select * from customers where email =?";
	
	ArrayList<String> name = new ArrayList<String>();
	ArrayList<String> email = new ArrayList<String>();
	
	public ArrayList<String> getNames(){
		//This will return all the names present in the database by concatening first and last name
		//For sender
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DatabaseDetials.getDbUrl(), DatabaseDetials.getDbUser(), DatabaseDetials.getDbPassword());
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery(nameQuerySender);
			while(rs.next())
			{
				name.add(rs.getString("first_name")+" "+rs.getString("last_name"));
			}
			rs.close();
			stm.close();
			conn.close();
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return name;
		
	}
	
	public ArrayList<String> getEmails(){
		//This will return all the emails present in the database
		//For sender
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DatabaseDetials.getDbUrl(), DatabaseDetials.getDbUser(), DatabaseDetials.getDbPassword());
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery(emailQuerySender);
			while(rs.next())
			{
				email.add(rs.getString("email"));
			}
			rs.close();
			stm.close();
			conn.close();
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return email;
		
	}
	
	public ArrayList<String> getNames(String senderEmail){
		//This will return all the names present in the database by concatening first and last name
		//For reciever
		System.out.println("Sender email: "+senderEmail);
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DatabaseDetials.getDbUrl(), DatabaseDetials.getDbUser(), DatabaseDetials.getDbPassword());
			PreparedStatement stm = conn.prepareStatement(nameQueryReciever);
			stm.setString(1,senderEmail);
			ResultSet rs = stm.executeQuery();
			while(rs.next())
			{
				name.add(rs.getString("first_name")+" "+rs.getString("last_name"));
			}
			rs.close();
			stm.close();
			conn.close();
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return name;
		
	}
	
	public ArrayList<String> getEmails(String senderEmail){
		//This will return all the emails present in the database
		//For reciever
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DatabaseDetials.getDbUrl(), DatabaseDetials.getDbUser(), DatabaseDetials.getDbPassword());
			PreparedStatement stm = conn.prepareStatement(emailQueryReciever);
			stm.setString(1,senderEmail);
			ResultSet rs = stm.executeQuery();
			while(rs.next())
			{
				email.add(rs.getString("email"));
			}
			rs.close();
			stm.close();
			conn.close();
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return email;
		
	}
	
	public Map<String,String> getDetails(String email)
	{
		//This will return all the details of the user with given email, present in the database
		//Using HashMap for storing in key and value pair
		Map<String,String> detail = new HashMap<String,String>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DatabaseDetials.getDbUrl(), DatabaseDetials.getDbUser(), DatabaseDetials.getDbPassword());
			PreparedStatement stm = conn.prepareStatement(detailsQuery);
			stm.setString(1,email);
			ResultSet rs = stm.executeQuery();
			while(rs.next())
			{
				detail.put("name",rs.getString("first_name")+" "+rs.getString("last_name"));
				detail.put("email",rs.getString("email"));
				detail.put("balance",rs.getString("curr_balance"));
				detail.put("gender",rs.getString("gender"));
				detail.put("phone",rs.getString("phone_no"));
				detail.put("joined",rs.getString("created_at"));
			}
			rs.close();
			stm.close();
			conn.close();
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return detail;
	}
}
