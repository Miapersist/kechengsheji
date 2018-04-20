package cc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cc.DbUtil;
import cc.StringUtil;
import cc.UserDao;
import cc.User;

public class LoginServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("username");
        String password = request.getParameter("password");
        DbUtil dbUtil = new DbUtil();
        UserDao userDao = new UserDao();
        
        System.out.println(userName+"--"+password);

        if(StringUtil.isEmpty(password)||StringUtil.isEmpty(userName)){

            //session
            HttpSession session=request.getSession();
            session.setAttribute("error", "不能为空");          
            response.sendRedirect("MyJsp.jsp");
            System.out.println("kong");
            return ;
        }
        
        User user = new User(userName, password);
        try {
            Connection con = dbUtil.getCon();
            User curr_user = userDao.login(con, user);
            if(null==curr_user){
                HttpSession session=request.getSession();
                session.setAttribute("error", "错误");
                session.setAttribute("userName", userName);
                session.setAttribute("password", password);
                response.sendRedirect("MyJsp.jsp");
                System.out.println("error");
            }else{
                // 
                HttpSession session=request.getSession();
           
                response.sendRedirect("index2.jsp");
                System.out.println("yes");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

	}

}
