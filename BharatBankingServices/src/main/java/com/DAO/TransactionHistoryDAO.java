package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TransactionHistoryDAO {
	String query = "Select * from transactions;";
	public Map<String,List<String>> getTransactionHistory()
	{
		Map<String, List<String>> transaction = new HashMap<String, List<String>>();
		List<String> senderName = new ArrayList<String>();
		List<String> senderEmail = new ArrayList<String>();
		List<String> receiverName = new ArrayList<String>();
		List<String> receiverEmail = new ArrayList<String>();
		List<String> amount = new ArrayList<String>();
		List<String> date = new ArrayList<String>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(DatabaseDetials.getDbUrl(), DatabaseDetials.getDbUser(), DatabaseDetials.getDbPassword());
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery(query);
			while(rs.next())
			{
				senderName.add( rs.getString("sender_name"));
				senderEmail.add( rs.getString("sender_email"));
				receiverName.add( rs.getString("receiver_name"));
				receiverEmail.add( rs.getString("receiver_email"));
				amount.add( rs.getString("amount"));
				date.add( rs.getString("created_at"));

			}
			transaction.put("senderName",senderName);
			transaction.put("senderEmail",senderEmail);
			transaction.put("receiverName",receiverName);
			transaction.put("receiverEmail",receiverEmail);
			transaction.put("amount",amount);
			transaction.put("date",date);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return transaction;
	}
	
}
