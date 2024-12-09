<% String sub="User Signup";%>
<%@ include file="header.jsp"%>
</head>
<body>

<br>
<center>
			   <table>
                
    
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%
                                                       String id=request.getParameter("message");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='blue' size=+1><blink>Registration Success ! <br>User Id: "+id+"</h3>");
                                                       }
													   else {%>
												
                                               <%}%>
                  </b></font></td>
              </tr>

 </table> 
<h2>Signup Orphanage</h3></h2><br>
<center>
 <form action="newaccount2.jsp" method="post"    >

 
             <table align="center" cellpadding="5" cellspacing="5" width="400">
              <tr> 
                <td><font size="+1" color=#006666><strong>Orphanage Name</strong></font><br>
                <input class="form-control"  type="text" name="name" id = "name"  style="width: 500px;" required></td>
              </tr>
			  </TABLE>

			<table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Address</strong></font>
				<br>
				<input class="form-control"  type="text" name="addr" id = "addr"  style="width: 500px;"	required >
              </tr>
              <tr> 
               </table>


				 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Telephone</strong></font>
				<br>
				<input class="form-control"  type="tel"  required name="tele" style="width: 250px;"	>
				<td>
				<font size="+1"color=#006666><strong>Email (User ID)</strong></font>
				<br>
				<input class="form-control"  type="email" name="email" id="email" style="width: 250px;"	 required>
              </tr>
               </table>

			   <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Orphanage details</strong></font>
				<tr><td>No. of Adults
				<input class="form-control"  type="number"  required name="a" style="width: 250px;"	>
				<td>No. of Children
				
			
				<input class="form-control"  type="number" name="c" id="email" style="width: 250px;"	 required>
              </tr>
               </table>


		   	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td><font size="+1"color=#006666><strong>Passwod</strong></font>
				<br>
				<input class="form-control"  type="password" name="pwd" id="pwd" style="width: 500px;"	required	 >
		


				             </tr>
               </table>
<br>

			 	 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
                <td>
				<input class="form-control"  type="submit" Value="Register" id = "register" name = "register" >
				
				<td>
				
				
				<input class="form-control"  type="reset" value="   Reset   ">
              </tr>
               </table>
			   <center>
 
 </form> 

<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>