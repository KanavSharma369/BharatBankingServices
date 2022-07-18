package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

public class TransactionDAO 
{
	String getDetailsQuery="Select * from customers where email LIKE ?";
	String setTransactionQuery="Insert INTO transactions (sender_name, sender_email, receiver_name, receiver_email, amount)"
			+ " values(?,?,?,?,?)";
	
	public Map<String,String> getCustomerDetails(String email)
	{
		Map<String,String> customer = new HashMap<String,String>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DatabaseDetials.getDbUrl(), DatabaseDetials.getDbUser(), DatabaseDetials.getDbPassword());
			PreparedStatement stm = conn.prepareStatement(getDetailsQuery);
			stm.setString(1,email);
			ResultSet rs = stm.executeQuery(); 
			while(rs.next())
			{
				customer.put("name",rs.getString("first_name")+" "+rs.getString("last_name"));
				customer.put("email",rs.getString("email"));
			}
			
		} catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        }catch (Exception e) {
			e.printStackTrace();
		}
		return customer;
	}
	
	public int makeTransaction(String senderEmail, String receiverEmail, double amount)
	{
		int status = 0;
		Map<String, String> sender = new HashMap<String,String>();
		Map<String, String> receiver = new HashMap<String,String>();
		
		try {
			sender = getCustomerDetails(senderEmail);
			receiver = getCustomerDetails(receiverEmail);
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DatabaseDetials.getDbUrl(), DatabaseDetials.getDbUser(), DatabaseDetials.getDbPassword());
			PreparedStatement stm = conn.prepareStatement(setTransactionQuery);
			
			stm.setString(1,sender.get("name"));
			stm.setString(2,sender.get("email"));
			stm.setString(3,receiver.get("name"));
			stm.setString(4,receiver.get("email"));
			stm.setDouble(5, amount);
			
			status = stm .executeUpdate();
			
		} catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        }
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}

}
