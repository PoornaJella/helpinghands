<%@ page  import="java.sql.*" import="java.util.*" import="CT.*" import="databaseconnection.*" %>


<%@ include file="uheader.jsp"%>

 <%
                                                       String id=request.getParameter("message");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red' size=+2><blink>Request Sent to Orpanage </font><br></h3>");
                                                       }
													   String d=DateDemo.getDate();

													  %>

<h2>Donate food</h3>

<center><br>
<table cellspacing="10" id="tab" width="40%">
<tr><td><h3>Select Date:</h3>
<form method="post" action="donatefood2.jsp">
<input type="date" required min=<%=d%> name="d" required class="form-control">
<input type="submit" value="Donate">
</form>
</table>
<%@ include file="footer.jsp"%>