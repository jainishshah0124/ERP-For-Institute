/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;
import java.sql.*;
/**
 *
 * @author Jainish Shah
 */
public class connection {
    public static Connection getConnection() {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp_institute", "root", "");
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("error");
			return null;
		}
	}
}
