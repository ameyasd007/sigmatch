<%@ page import="java.io.*"%>
<%@ page import="java.sql.*,connection.*"%>

<%
	//if(session.getAttribute("id")!=null)
	
	//response.sendRedirect("controlPanel.jsp");
%>


<%

		ResultSet rs = null;
		
		String id = null;
		String fullname = null;
		int i = 0;

		String username=request.getParameter("name");
		String password=request.getParameter("pwd");
		String userId = "";
		
		String str = "";
		
		str = "SELECT * FROM admin WHERE username = '"+username+"' AND password = '"+password+"'";
		
		System.out.println("Query -->"+str);
				       		         
		 rs = Connections.executeQuery(str);
		String role = "";
			
		while (rs.next()) 
		{
				
			id = rs.getString("userid");
		    fullname = rs.getString("fname");
		   
		    
		   
		    	i++;
				System.out.println("Value Of Fullname is  : "+fullname);		
				
				session.setAttribute("userid",id);
				session.setAttribute("uname",fullname);
				
				response.sendRedirect("homeAdmin.jsp");
				
			
		   
		   
			
		}
		 
	
	if(i==0)
	{
		
	
		response.sendRedirect("index.jsp?flg=1");
	}		
 
 %>