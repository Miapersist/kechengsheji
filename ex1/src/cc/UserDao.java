package cc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import cc.User;

public class UserDao {

	public User login(Connection connection,User user) {
		Integer countInteger = 0;
		try {
			Statement statement = connection.createStatement();
			String sql = "select count(*) from users where username='"+user.getUsername()+"' and password='"+user.getPassword()+"'";
			System.out.println(sql);
			ResultSet rSet = statement.executeQuery(sql);
			while(rSet.next()) {
				countInteger = rSet.getInt("count(*)");
			} 
			if(countInteger == 0) {
				return null;
			} else {
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
}
