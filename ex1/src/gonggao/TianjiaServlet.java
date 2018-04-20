package gonggao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cc.DbUtil;
import cc.UserDao;

/**
 * Servlet implementation class TianjiaServlet
 */
@WebServlet("/TianjiaServlet")
public class TianjiaServlet extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ann_title= request.getParameter("ann_title");
		String message= request.getParameter("message");
		
		System.out.println(ann_title+" "+message+"--------------------------------------------------");
		
		DbUtil dbUtil = new DbUtil();
        AnnoDao annoDao = new AnnoDao();
		
		System.out.println("添加公告");
		
		Anno anno = new Anno(ann_title,message);
		
		try {
			Connection con = dbUtil.getCon();
			Anno curr_anno = annoDao.tianjiaAnno(con, anno);
			
			if(null==curr_anno){
                response.sendRedirect("gonggao_teacher.jsp");
                System.out.println("yes");
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		
	}

}
