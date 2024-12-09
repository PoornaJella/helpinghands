
<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,lat,lon;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

city=request.getParameter("city").trim();
state=request.getParameter("state").trim();
 zip=request.getParameter("zip");
 lon=request.getParameter("lon");
 lat=request.getParameter("lat");
 email=request.getParameter("email");

st.executeUpdate("update user set city='"+city+"', state='"+state+"', zip='"+zip+"', latitude='"+lat+"' , longitude='"+lon+"' where email='"+email+"' ");

//	response.sendRedirect("profilepic.jsp?id="+email+"");
	response.sendRedirect("newuser.jsp?message="+email+"");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>


