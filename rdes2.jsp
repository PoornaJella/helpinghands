
<%@ page  import="java.sql.*" import="databaseconnection.databasecon" %>
<%
String pass=null,uid=null;

String id = request.getParameter("id");


%>

<%

try
{

	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	String sss1 = "update food_requests set STZ='Rejected' where sno='"+id+"' ";
	st1.executeUpdate(sss1);

	
	response.sendRedirect("o_home.jsp");
    
	con1=null;
	
}
catch(Exception e1)
{
out.println(e1);
}

%>
<%@ include file="footer.jsp"%>