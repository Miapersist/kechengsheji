package cc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbUtil {
	private static String dbUrl = "jdbc:mysql://localhost:3306/kechengsheji";
    private static String dbUserName = "root";
    private static String dbPassword = "123456";
    private static String jdbcName = "com.mysql.jdbc.Driver";
    /*
     * ��ȡ����
     */
    public static Connection getCon() throws ClassNotFoundException, SQLException{
        Class.forName(jdbcName);
        Connection con = DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
        return con;
    }
    /*
     * �ر�����
     */
    public void closeCon(Connection con) throws SQLException{
        if(null!=con){
            con.close();
        }
    }
}