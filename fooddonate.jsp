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

String lat=(String)session.getAttribute("userlat");
String lon=(String)session.getAttribute("userlon");

String[] res=null;
String d=DateDemo.getDate();

%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
PreparedStatement ps=con.prepareStatement ("insert into temp values(?,?)");

st2.executeUpdate("delete from temp");
ResultSet rs=st.executeQuery("select distinct(email) from orphange_food_details where date='"+d+"' ");
while(rs.next())
{

	String oemail=rs.getString(1);
	Vector<String> ol=Details.GetOrpLoc(oemail);
	double dist=DistCalc.distance(lat,lon,ol.get(0),ol.get(1), "K");
		
		ps.setString(1,oemail);
		ps.setString(2,dist+"");
		ps.executeUpdate();

}%>
<h2>Donate food for Today</h3>
<center><br>
<table cellspacing="10" id="tab" width="90%">
<tr><th>*<th>Orphanage <th>Address<th>Distance (KM)<th>Details<th>Donate
<%
rs=st.executeQuery("SELECT * FROM  temp order by v2  ");
while(rs.next())
{
Vector<String> ol=Details.GetOrpDetails(rs.getString(1));
%>
<tr><td>*<td><%=ol.get(0)%><td><%=ol.get(3)%><td><%=rs.getString(2)%><td>
Children: <%=ol.get(1)%>
<br>
Adults: <%=ol.get(2)%>

<td>

<%
Vector<String> avail=Details.GetAvail(d,rs.getString(1));
int i_=0;
for (String s: avail){
	i_++;
%>

<h4>
<a href="donatetoday.jsp?t=<%=s%>&&oemail=<%=rs.getString(1)%>"><u><%=s%> </u></a>
</h4>
<%
}
if(i_==0){
%>

<h4>Their food vessel is full :)</h4>

<%

}
%>

<%}


}
catch(Exception e)
{
e.printStackTrace();
out.println(e);
	}


%>
</table>
<%@ include file="footer.jsp"%>