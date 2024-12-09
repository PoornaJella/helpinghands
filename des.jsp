
<%@ page  import="java.sql.*" import="CT.*" import="databaseconnection.databasecon" %>
<%
String pass=null,uid=null;

String id = request.getParameter("id");
String t = request.getParameter("timing");
String d=DateDemo.getDate();
%>

<%

try
{

	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	String sss1 = "update today_request set STZ='Accepted' where sno='"+id+"' ";
	st1.executeUpdate(sss1);

	sss1 = "update orphange_food_details set STZ='Available' where date='"+d+"' and timing='"+t+"' and email='"+session.getAttribute("oemail")+"' ";
	
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