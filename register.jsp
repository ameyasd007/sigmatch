<%@ include file="header.jsp" %>
<!--Service-->
<section  id="service">
  <div class="container">
    <h2>Register</h2>
    <div class="service_area">
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
									
        <form action="registrationDb.jsp" method="get">
        <input class="input-text animated wow flipInY delay-02s" type="text" name="name" value="Your Name *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
        
      <label> <strong>Gender *</strong></label> <input class=" radiobtn animated wow flipInY delay-02s" type="radio" name="gender" value="Male" style="width:50px;margin-bottom:20px; ">Male
        <input class="radiobtn animated wow flipInY delay-02s" type="radio"  style="width:50px" " name="gender" value="Female" >Female 
        <br/>      
        <input class="input-text animated wow flipInY delay-02s" type="date" name="dob" value="Your Date Of Birth *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
        <input class="input-text animated wow flipInY delay-02s" type="text" name="address" value="Your Address *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
        <input class="input-text animated wow flipInY delay-02s" type="text" name="phone" value="Your Phone *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
        
            <input class="input-text animated wow flipInY delay-02s" type="text" name="email" value="Your Email *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
            <input class="input-text animated wow flipInY delay-04s" type="adhar" name="adhar" value="Your Adhar Card Number *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;"  style="width:350px">
            <input class="input-text animated wow flipInY delay-02s" type="text" name="username" value="Your UserName *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;" style="width:350px">
            <input class="input-text animated wow flipInY delay-04s" type="password" name="password" title="Your Password *" value="Your Password *" onFocus="if(this.value==this.defaultValue)this.value='';" onBlur="if(this.value=='')this.value=this.defaultValue;"  style="width:350px">
          
            <input class="input-btn animated wow flipInY delay-08s" type="submit" value="Register">
            </form>
          </div>
      </div>
    </div>
  </div>
</section>
<!--Service-->

<!--main-section team-end-->
<%@ include file="footer.jsp" %>