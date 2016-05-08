
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="connection.*" %>
<%

		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		String adhar = request.getParameter("adhar");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String uname = request.getParameter("username");
		String psw = request.getParameter("password");
		
		
		String userId = "";
		
		String str = "";
		
		str = "INSERT INTO `user` (`userid`, `fname`, `date`, `gender`, `bdate`, `address`, `ph`, `email`, `adharcard`, `username`, `password` ) VALUES (NULL, '"+name+"', CURDATE(), '"+gender+"', '"+dob+"', '"+address+"', '"+phone+"', '"+email+"', '"+adhar+"', '"+uname+"', '"+psw+"')";
		
		System.out.println("Query -->"+str);
				       		         
		 int id = Connections.lastInsertId(str);
		
			
		
	
	if(id>0)
	{
		
		response.sendRedirect("AddSign.jsp?id="+id);
	}
	else
	{
	
		response.sendRedirect("register.jsp?msg=0");
	}	
	
	/*
	String DESTINATION_DIR_PATH1 ="/files";
	String realPath1 = getServletContext().getRealPath(DESTINATION_DIR_PATH1);
	System.out.print(realPath1);
	new File(realPath1+"/"+id).mkdirs();*/
 
 %>