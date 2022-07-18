package com.DAO;

public class DatabaseDetials {
	static String dbName="bharat_banking_services";
	static String dbUser="root";
	static String dbPassword="";
	static String dbUrl="jdbc:mysql://localhost:3306/"+dbName;
	
	public static String getDbUser() {
		return dbUser;
	}
	public static String getDbPassword() {
		return dbPassword;
	}
	public static String getDbUrl() {
		return dbUrl;
	}

}
