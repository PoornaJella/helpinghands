
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
                                                               out.println("<font color='red' size=+2><blink>Login Fail !!</h3>");
                                                       }
													   else {%>
												
                                               <%}%>
                  </b></font></td>
              </tr>

 </table> 
<h2>Orphanage login page</h3></h2>
<br>
<center>
 <form action="ologin.jsp" method="post"    >

 
            


				 <table align="center" cellpadding="5" cellspacing="5" width="400">
			  <tr> 
              <td>
				<font size="+1"color=#006666><strong>Email (User ID)</strong></font>
				<br>
				<input class="form-control"  type="email" name="uid" id="email" style="width: 410px;"	 required>
              </tr>
              <tr> 
                <td><font size="+1"color=#006666><strong>Passwod</strong></font>
				<br>
				<input class="form-control"  type="password" name="pwd" id="pwd" style="width: 410px;"	required	 >
		

			  <tr> 
                <td><br>
				<input class="form-control"  type="submit" Value="Login">
				
			<br>
				<a href="newaccount.jsp"><h4><b>Registration</b></h5></a>

              </tr>
               </table>
			   <center>
 
 </form> 

<br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>