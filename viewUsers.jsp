<%@ include file="header.jsp" %>

<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="connection.*" %>

<!--Service-->
<section  id="service">
  <div class="container">
    <h2>Manage Authority Members</h2>
    <div class="service_area" align="center">
      
       <div class="row" align="center">
       
         <table border="1" width="100%">
         <caption>
         
        <caption>
        <% 		String msg = request.getParameter("msg");
					
						if(msg!=null)
						{
							if(msg.equals("1"))
							{
						
					%>
										
							<h5 style="color:green"> Deleted Successfully </h5>
							
							<%
							}
							else
							{
							%>
							
								<h5 style="color:red">Error!  </h5>
							<%
							
							}
						}
							%>
        </caption>
         
         </caption>
         <tr>
         <th>Sr. No. </th> <th>Name</th> <th>Phone</th> <th>Email</th> <th>Details</th>
         </tr>
         <%
		 String str = "";
		
		str = "SELECT * FROM user";
		
		System.out.println("Query -->"+str);
				       		         
		 ResultSet rs = Connections.executeQuery(str);
		
		int cnt = 0;	
		while (rs.next()) 
		{
		cnt++;
		%>
         
         </tr>
          <td><%= cnt %></td>
         <td><%= rs.getString("fname") %></td>
          <td><%= rs.getString("ph") %></td> 
          <td><%= rs.getString("email") %></td>
          <td><a href="deleteUser.jsp?id=<%= rs.getString("userid") %>">Delete</a></td>
         </tr>
         <%
		 }
		 %>
         </table>
          
        </div>
      
      
    </div>
  </div>
</section>
<!--Service-->

<!--main-section team-end-->
<%@ include file="footer.jsp" %>