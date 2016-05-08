
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="connection.*" %>
<%

		
		String id = request.getParameter("id");
		
		
		String userId = "";
		
		String str = "";
		
		str = "Delete from  `user` WHERE  `user`.`userid` ="+id;
		System.out.println("Query -->"+str);
				       		         
		 int id1 = Connections.executeUpdate(str);
		
			
		
	
	if(id1>0)
	{
		
		response.sendRedirect("viewUsers.jsp?msg=1");
	}
	else
	{
	
		response.sendRedirect("viewUsers.jsp?msg=0");
	}		
 
 %>