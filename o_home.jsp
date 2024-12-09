<%@ page  import="java.sql.*" import="CT.*" import="databaseconnection.*" %>

<%@ include file="oheader.jsp"%>
                  <%
                                                       String id=request.getParameter("message");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red' size=+2><blink>Location Updated.. </font><br></h3>");
                                                       }
													  %>

 <h3><font size="" color="#ff0099" >|| <%=session.getAttribute("oname")%> ||</font></h3>
 <hr>


 <table id="tab"cellspacing=20 width="40%" align="right" id="tab" >
 <tr><td colspan=3>
<h4>View Today's status</h1>

 <tr><th><b>*</b>
 <th><b>Timing</b>
 <th><b>Status</b>
<%
String d=DateDemo.getDate();
String sql="SELECT * FROM orphange_food_details where date='"+d+"' and email='"+session.getAttribute("oemail")+"' ";
	
	
	
	
	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	
	ResultSet rs=st1.executeQuery(sql);
	while(rs.next())
	{
	%>


	<tr>  <td> *<td><%=rs.getString("timing")%><td><%=rs.getString("stz")%>
	<%
	}
%>


</table>


<table align="left" width="40%">
<%
sql="SELECT * FROM today_request where oemail='"+session.getAttribute("oemail")+"' and stz='New'";
rs=st1.executeQuery(sql);

while(rs.next())
	{
		%>
		<tr><td>
		<table   id="tab">
		<tr><td><h2><font size="5" >Requests from Users for donating food for today's <u><%=rs.getString("timing")%></u></font>
		<tr>		
		<td>User details: 
		<h3><%=rs.getString("name")%></h3>
		Email: <%=rs.getString("email")%>
		<br>Phone: <%=rs.getString("phone")%>
		<tr><td><%=rs.getString("description")%>
		<tr><td><a href="des.jsp?id=<%=rs.getString("sno")%>&&timing=<%=rs.getString("timing")%>"><b>Accept</b></a> ||&nbsp;<a href="des2.jsp?id=<%=rs.getString("sno")%>"><b>Reject</b></a> 
		</table><br><br><br>


<%
	}

												
                                               %>
											 
</table>


<table align="left" width="40%">
<%
sql="SELECT * FROM food_requests where oemail='"+session.getAttribute("oemail")+"' and stz='New'";
rs=st1.executeQuery(sql);

while(rs.next())
	{
		%>
		<tr><td>
		<table   id="tab">
		<tr><td><h2><font size="5" >Requests from Users for donating food for the <b><u><%=rs.getString("date")%></u></b> <u><%=rs.getString("timing")%></u></font>
		<tr>		
		<td>User details: 
		<h3><%=rs.getString("name")%></h3>
		Email: <%=rs.getString("email")%>
		<br>Phone: <%=rs.getString("phone")%>
		<tr><td><%=rs.getString("description")%>
		<tr><td><a href="rdes.jsp?id=<%=rs.getString("sno")%>&&d=<%=rs.getString("date")%>&&timing=<%=rs.getString("timing")%>"><b>Accept</b></a> ||&nbsp;<a href="rdes2.jsp?id=<%=rs.getString("sno")%>"><b>Reject</b></a> 
		</table><br><br><br>


<%
	}

												
                                               %>
											 
</table>






<table align="left" width="40%">
<%
sql="SELECT * FROM other_requests where oemail='"+session.getAttribute("oemail")+"' and stz='New'";
rs=st1.executeQuery(sql);

while(rs.next())
	{
		%>
		<tr><td>
		<table   id="tab">
		<tr><td><h2><font size="5" >Requests from User for donating <b><u><%=rs.getString("type")%></u></b></font>
		<tr>		
		<td>User details: 
		<h3><%=rs.getString("name")%></h3>
		Email: <%=rs.getString("email")%>
		<br>Phone: <%=rs.getString("phone")%>
		<tr><td><%=rs.getString("description")%>
		<tr><td><a href="odes.jsp?id=<%=rs.getString("sno")%>"><b>Accept</b></a> ||&nbsp;<a href="odes2.jsp?id=<%=rs.getString("sno")%>"><b>Reject</b></a> 
		</table><br><br><br>


<%
	}

												
                                               %>
											 
</table>
 <br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>