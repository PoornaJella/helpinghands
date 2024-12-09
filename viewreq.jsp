<%@ page  import="java.sql.*" import="java.util.*" import="CT.*" import="databaseconnection.*" %>


<%@ include file="uheader.jsp"%>

 <%
                                                       String id=request.getParameter("message");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red' size=+2><blink>Request Sent to Orpanage </font><br></h3>");
                                                       }
													  %>
<%

String email=(String)session.getAttribute("useremail");
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
%>

<h2>Today's food donation requests</h3>
<center><br>
<table cellspacing="10" id="tab" width="90%">
<tr><th>*<th>Orphanage<th>Address<th>Members<th>Date<th>Timing<th>Donation
<%
ResultSet rs=st.executeQuery("SELECT * FROM  today_request where email='"+email+"' order by sno  ");
while(rs.next())
{
Vector<String> ol=Details.GetOrpDetails(rs.getString("oemail"));
%>
<tr><td>*<td><%=ol.get(0)%><td><%=ol.get(3)%><td>
Children: <%=ol.get(1)%>
<br>
Adults: <%=ol.get(2)%>
<td>
<%=rs.getString("date")%><td>
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
<tr><th>*<th>Orphanage<th>Address<th>Members<th>Date<th>Timing<th>Donation
<%
ResultSet rs=st.executeQuery("SELECT * FROM  food_requests where email='"+email+"' order by sno  ");
while(rs.next())
{
Vector<String> ol=Details.GetOrpDetails(rs.getString("oemail"));
%>
<tr><td>*<td><%=ol.get(0)%><td><%=ol.get(3)%><td>
Children: <%=ol.get(1)%>
<br>
Adults: <%=ol.get(2)%>
<td>
<%=rs.getString("date")%><td>
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
<tr><th>*<th>Orphanage<th>Address<th>Members<th>Date<th>Donation type<th>
<%
ResultSet rs=st.executeQuery("SELECT * FROM  other_requests where email='"+email+"' order by sno  ");
while(rs.next())
{
Vector<String> ol=Details.GetOrpDetails(rs.getString("oemail"));
%>
<tr><td>*<td><%=ol.get(0)%><td><%=ol.get(3)%><td>
Children: <%=ol.get(1)%>
<br>
Adults: <%=ol.get(2)%>
<td>
<%=rs.getString("date")%><td>
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