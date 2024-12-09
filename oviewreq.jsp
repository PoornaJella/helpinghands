<%@ page  import="java.sql.*" import="java.util.*" import="CT.*" import="databaseconnection.*" %>


<%@ include file="oheader.jsp"%>

 <%
                                                       String id=request.getParameter("message");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red' size=+2><blink>Request Sent to Orpanage </font><br></h3>");
                                                       }
													  %>
<%

String email=(String)session.getAttribute("oemail");
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
%>

<h2>Today's food donations</h3>
<center><br>
<table cellspacing="10" id="tab" width="90%">
<tr><th>*<th>Donar name<th>Contact Details<th width="40%"> Desciption<th>Date<th>Timing<th>
<%
ResultSet rs=st.executeQuery("SELECT * FROM  today_request where oemail='"+email+"' and stz='Accepted' order by sno  ");
while(rs.next())
{
%>
<tr><td>*
<td><%=rs.getString("name")%>
<td>Email: <%=rs.getString("email")%><br>
Phone: <%=rs.getString("phone")%>

<td><%=rs.getString("description")%>

<td><%=rs.getString("date")%>
<td>
<%=rs.getString("timing")%><td><%=rs.getString("stz")%>
<%
}


}
catch(Exception e)
{
e.printStackTrace();
out.println(e);
	}


%>

</table>
<br><br>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
%>

<h2>Food donation requests</h3>
<center><br>
<table cellspacing="10" id="tab" width="90%">
<tr><th>*<th>Donar name<th>Contact Details<th width="40%"> Desciption<th>Date<th>Timing<th>
<%
ResultSet rs=st.executeQuery("SELECT * FROM  food_requests where oemail='"+email+"' and stz='Accepted'  order by sno  ");
while(rs.next())
{
%>
<tr><td>*
<td><%=rs.getString("name")%>
<td>Email: <%=rs.getString("email")%><br>
Phone: <%=rs.getString("phone")%>

<td><%=rs.getString("description")%>

<td><%=rs.getString("date")%>
<td>
<%=rs.getString("timing")%><td><%=rs.getString("stz")%>
<%
}


}
catch(Exception e)
{
e.printStackTrace();
out.println(e);
	}


%>

</table>


<br><br>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
%>

<h2>Other donation requests</h3>
<center><br>
<table cellspacing="10" id="tab" width="90%">
<tr><th>*<th>Donar name<th>Contact Details<th width="20%">Donar Address<th width="25%"> Desciption<th>Date<th>Type of Donation <th>
<%
ResultSet rs=st.executeQuery("SELECT * FROM  other_requests where oemail='"+email+"' and stz='Accepted'  order by sno  ");
while(rs.next())
{
%>
<tr><td>*
<td><%=rs.getString("name")%>
<td>Email: <%=rs.getString("email")%><br>
Phone: <%=rs.getString("phone")%>
<td><%=rs.getString("address")%>
<td><%=rs.getString("description")%>
<td><%=rs.getString("date")%>

<td>
<%=rs.getString("type")%><td><%=rs.getString("stz")%>
<%
}


}
catch(Exception e)
{
e.printStackTrace();
out.println(e);
	}


%>

</table>
<%@ include file="footer.jsp"%>