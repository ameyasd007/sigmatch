<%@ include file="header.jsp" %>

<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="connection.*" %>
<!--Service-->
<section  id="service">
  <div class="container">
    <h2>Register Authority Member</h2>
    <div class="service_area" align="center">
      
       
        <div class="row" align="center">
       
        <div class="form">
       
        
        <% 		String msg = request.getParameter("msg");
					
						if(msg!=null)
						{
							if(msg.equals("1"))
							{
						
					%>
										
							<h5 style="color:green"> Added Successfully </h5>
							
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
									
        <form action="addSignDb.jsp" method="post" enctype="multipart/form-data">
         
        <input  type="text" name="number" value="<%= request.getParameter("id") %>" >
        
         <label><h3>Signature Copy 1</h3></label><br/>
        <input class="input-text animated wow flipInY delay-02s" type="file" name="sc1" value="Select Signature Copy 1" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
        
        
          <label><h3>Signature Copy 2</h3></label><br/>
         <input class="input-text animated wow flipInY delay-02s" type="file" name="sc2" value="Select Signature Copy 2 *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
        
         <label><h3>Signature Copy 3</h3></label><br/>
         <input class="input-text animated wow flipInY delay-02s" type="file" name="sc3" value="Select Signature Copy 3 *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
        
            <input class="input-btn animated wow flipInY delay-08s" type="submit" value="Add Signature">
            </form>
          </div>
       
       
       
        </div>
      
      
    </div>
  </div>
</section>
<!--Service-->

<!--main-section team-end-->
<%@ include file="footer.jsp" %>