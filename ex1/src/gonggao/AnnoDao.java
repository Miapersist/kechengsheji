package gonggao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.LifecycleListener;
import org.apache.tomcat.dbcp.dbcp2.PStmtKey;

import com.mysql.jdbc.PreparedStatement;

import cc.DbUtil;


public class AnnoDao {
	public Anno tianjiaAnno(Connection connection,Anno anno){
		try {
			Statement statement = connection.createStatement();
			String sql = "insert into announcement(ann_title , message,teacher_users_id) values('"+anno.ann_title+"','"+anno.message+"'"+","+1+")";
			System.out.println(sql);
			
			int flag = statement.executeUpdate(sql);  
			 if(flag != 0)
			    {  
			         System.out.println("<script>alert('插入成功！');history.go(-1);</script>");  
			    }  
			    else  
			    {  
			    	System.out.println("<script>alert('插入失败！');history.go(-1);</script>");  
			    }  
			
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		
		
		return null;
	}
	
	public List readFirstAnno(){
		
		List<Anno>list = new ArrayList<Anno>();
		try {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
			Connection connection=null;
			PreparedStatement pstm =null;
			ResultSet rSet= null;
			
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/kechengsheji","root","123456");
			Statement statement  = connection.createStatement();
			
			String sql="select * from announcement";
			pstm = (PreparedStatement) connection.prepareStatement(sql);
			rSet= pstm.executeQuery();
			
			while(rSet.next()){
				int ann_id= rSet.getInt("ann_id");
				String ann_title = rSet.getString("ann_title");
				String message = rSet.getString("message");
				Date ann_date = rSet.getDate("ann_date");
				int teacher_users_id = rSet.getInt("teacher_users_id");
				Anno anno2 = new Anno(ann_id,ann_title, message,ann_date,teacher_users_id);
				list.add(anno2);
				System.out.println("--------Anno_Dao--------");
			}
			
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return list;		
	}
	
}
