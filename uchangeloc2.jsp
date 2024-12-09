
<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String email, un, pwd,lat,lon;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

 lon=request.getParameter("lon");
 lat=request.getParameter("lat");
 email=request.getParameter("email");

st.executeUpdate("update user set  latitude='"+lat+"' , longitude='"+lon+"' where email='"+email+"' ");


	response.sendRedirect("user_home.jsp?message=succ");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>


