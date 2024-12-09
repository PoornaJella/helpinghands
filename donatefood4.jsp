
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*" %>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>

<%

String name=request.getParameter("name");
String email=request.getParameter("email");
String ph=request.getParameter("ph");
String t=request.getParameter("t");
String oemail=request.getParameter("oemail");
String des=request.getParameter("des");
String d=request.getParameter("d");

int i=0;
String id=null;

try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
PreparedStatement ps=con.prepareStatement ("insert into food_requests(name, email, phone, description, timing, oemail, date) values(?,?,?,?,?,?,?)");

			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,ph);
			ps.setString(4,des);
			ps.setString(5,t);
			ps.setString(6,oemail);
			ps.setString(7,d);

			ps.executeUpdate();


	}

catch(Exception e)
{
	e.printStackTrace();
	out.println(e);
}

	response.sendRedirect("donatefood.jsp?message=succ");
%>

