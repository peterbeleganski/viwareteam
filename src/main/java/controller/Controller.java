package controller;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.Format.Field;
import java.util.HashMap;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import database.Account;
import beans.User;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;
	
	//private Map<String, String>actionMap = new HashMap<String, String>();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	public Controller() {
		// Build a Map of action parameters to pages
	 
		
	}
   

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	 
	 
	public void init(ServletConfig config) throws ServletException {
		try {
			
			InitialContext ic = new InitialContext();
			Context ctx = (Context) ic.lookup("java:comp/env");
			ds = (DataSource) ctx.lookup("jdbc/MySQLDS");
		
		
		//InitialContext initContext = new InitialContext();

			//Context env = (Context) initContext.lookup("java:comp/env");
	
		//	ds = (DataSource) env.lookup("jdbc/MySQLDS");
			//ds = (DataSource) env.lookup("jdbc/team");

		} catch (NamingException e) {
			e.printStackTrace();
//			throw new ServletException();
		}
	}
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession	session = request.getSession();
		String action = request.getParameter("action");
		String email = (String) session.getAttribute("email");
		
		
		
		if(action == null){
			request.setAttribute("message", "");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
	
		}else if(action.equals("contact")){
			request.getRequestDispatcher("/contact.jsp").forward(request, response);
		}else if(action.equals("help")){
			request.getRequestDispatcher("/help.jsp").forward(request, response);
		}else if(action.equals("course-jsp")){
			 if(email!=null){
			 session.setAttribute("email",email); 
			 session.setMaxInactiveInterval(3600);
			 request.setAttribute("message", "Invalid Login");			 
			 request.getRequestDispatcher("/jsp-servlet.jsp").forward(request, response);
			}else{
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			} 
			
			
		}
		else if(action.equals("course-java")){
			if(email!=null){
			 session.setAttribute("email",email); 
			 session.setMaxInactiveInterval(3600);	
			 request.setAttribute("message", "Invalid Login");				 
			 request.getRequestDispatcher("/video-java.jsp").forward(request, response);
			}else{
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			} 
			
			
		}else if(action.equals("course-html")){
			if(email!=null){
			 session.setAttribute("email",email); 
			 session.setMaxInactiveInterval(3600);
			 request.setAttribute("message", "Invalid Login");			 
			 request.getRequestDispatcher("/html.jsp").forward(request, response);
			}else{
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			} 
			  
			
			
		}else if(action.equals("course-android")){
			if(email!=null){
			 session.setAttribute("email",email); 
			 session.setMaxInactiveInterval(3600);
			 request.setAttribute("message", "Invalid Login");			 
			request.getRequestDispatcher("/android.jsp").forward(request, response);
			}else{
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			} 
			  
			
			
		}else if(action.equals("course-js")){
			if(email!=null){
			 session.setAttribute("email",email); 
			 session.setMaxInactiveInterval(3600);
			 request.setAttribute("message", "Invalid Login");			 
			 request.getRequestDispatcher("/js.jsp").forward(request, response);
			}else{
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			} 
			   
			
			
		}	
		else if(action.equals("course-jquery")){
			
			if(email!=null){
			 session.setAttribute("email",email); 
			 session.setMaxInactiveInterval(3600);
			 request.setAttribute("message", "Invalid Login");			 
			 request.getRequestDispatcher("/jquery.jsp").forward(request, response);
			}else{
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			} 
	
		}else if(action.equals("forum")){
			
			 if(email!=null){
			 session.setAttribute("email",email); 
			 session.setMaxInactiveInterval(3600);
			 request.setAttribute("message", "Invalid Login");			 
			 request.getRequestDispatcher("/forum.jsp").forward(request, response);
			}else{
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			} 
			
			
			
		}else if(action.equals("main")){
			
			if(email!=null){
			 session.setAttribute("email",email); 
			 session.setMaxInactiveInterval(3600);
			 request.setAttribute("message", "Invalid Login");			 
			request.getRequestDispatcher("/home-new.jsp").forward(request, response);
			}else{
			
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
			
			
		}
		else if(action.equals("home")){
			
			request.setAttribute("message", "");
			
			session.setAttribute("email",email); 
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			
			
		}else if(action.equals("about")){
			session.setAttribute("email",email); 
			request.getRequestDispatcher("/about.jsp").forward(request, response);
		}
		else if(action.equals("register")){
			request.setAttribute("message", "");
			request.getRequestDispatcher("/createAcc.jsp").forward(request, response);
		}else if(action.equals("docomment")){
		request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		else if (action.equals("news")){
			session.setAttribute("email",email); 
			request.getRequestDispatcher("/news.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		HttpSession	session = request.getSession();
		PrintWriter out = response.getWriter();
		if(action == null){
			out.println("unrecognised action");
		}
		
		Connection conn = null;
		try {
			conn = ds.getConnection();
		} catch (SQLException e) {
			// WTF ??? 
			
//			throw new ServletException();
			e.printStackTrace();
		}
		
		if(action.equals("dologin")){
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			request.setAttribute("message","");
			
			User user = new User(email,password);
			
			request.setAttribute("email", email);
			request.setAttribute("password","");
			
					
			Account account = new Account(conn);
			
			try {
				if(account.login(email, password)){
					session.setAttribute("loged","true");
					session.setAttribute("email",email);
					session.setMaxInactiveInterval(3600);
					request.getRequestDispatcher("/home-new.jsp").forward(request, response);
				}else {
					request.setAttribute("message","email or password not valid !");
					request.getRequestDispatcher("/login.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				// throw exception  for the SQL  forward to error.jsp 
				e.printStackTrace();
			}
		}else if(action.equals("commentjs")){
			request.setCharacterEncoding("UTF-8");
			String from = request.getParameter("email_name");
			String comment = request.getParameter("comment");
			
			User user = new User(from,comment);
			if(!user.validate()) {
					
					request.setAttribute("mess", user.getMessage());
					request.getRequestDispatcher("/js.jsp").forward(request, response);
			}else{
			
			Account account = new Account(conn);
			try {
				account.commentjs(from, comment);
				request.getRequestDispatcher("/js.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
		}else if(action.equals("commentjsp")){
			request.setCharacterEncoding("UTF-8");
			String from = request.getParameter("email_name");
			String comment = request.getParameter("comment");
			Account account = new Account(conn);
			try {
				account.commentjsp(from, comment);
				request.getRequestDispatcher("/jsp-servlet.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action.equals("commentjq")){
			request.setCharacterEncoding("UTF-8");
			String from = request.getParameter("email_name");
			String comment = request.getParameter("comment");
			Account account = new Account(conn);
			try {
				account.commentjq(from, comment);
				request.getRequestDispatcher("/jquery.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action.equals("commentAND")){
			request.setCharacterEncoding("UTF-8");
			String from = request.getParameter("email_name");
			String comment = request.getParameter("comment");
			Account account = new Account(conn);
			try {
				account.commentAND(from, comment);
				request.getRequestDispatcher("/android.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(action.equals("forum")){
			request.setCharacterEncoding("UTF-8");
			String from = request.getParameter("email_name");
			String comment = request.getParameter("comment");
			Account account = new Account(conn);
			try {
				account.commentforum(from, comment);
				request.getRequestDispatcher("/forum.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action.equals("commentHTML")){
			request.setCharacterEncoding("UTF-8");
			String from = request.getParameter("email_name");
			String comment = request.getParameter("comment");
			Account account = new Account(conn);
			try {
				account.commentHTML(from, comment);
				request.getRequestDispatcher("/html.jsp").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action.equals("commentj")){
			request.setCharacterEncoding("UTF-8");
			Account account = new Account(conn);
			String from = request.getParameter("email_name");
			String comment = request.getParameter("comment");
	
			try{
			//request.setContentType("text/html; charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			account.commentj(from,comment);
			request.getRequestDispatcher("/video-java.jsp").forward(request, response);
			
			}catch(SQLException e){
			e.printStackTrace();
			} 
			
		}
		else if (action.equals("createaccount")){
			Account account = new Account(conn);
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String repeatPassword = request.getParameter("repeatpassword");
			
			request.setAttribute("email", email);
			request.setAttribute("password", "");
			request.setAttribute("repeatpassword", "");
			request.setAttribute("message", "");
			if(!password.equals(repeatPassword)) {
				// Passwords don't match.
				request.setAttribute("message", "Passwords do not match.");
				request.getRequestDispatcher("/createAcc.jsp").forward(request, response);
			}
			else {
				User user = new User(email, password);
				
				
				if(!user.validate()) {
					// Password or email address has wrong format.
					request.setAttribute("message", user.getMessage());
					request.getRequestDispatcher("/createAcc.jsp").forward(request, response);
					}
				else{
					try {
						if(account.exists(email)){
							request.setAttribute("message", "An accoount is already in use");
							request.getRequestDispatcher("/createAcc.jsp").forward(request, response);
						}
						else {
							account.create(email, password);
							
							session.setAttribute("loged","true");
							session.setAttribute("email",email);
							session.setMaxInactiveInterval(3600);
							request.getRequestDispatcher("/home-new.jsp").forward(request, response);
						}
					} catch (SQLException e) {
						request.getRequestDispatcher("/error.jsp").forward(request, response);
					}
				}
				
			}
		}//else {
			//doForward(request, response);
		//}
		
	} 
}