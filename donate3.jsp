
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*" %>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="CT.*" %>

<%

String name=request.getParameter("name");
String email=request.getParameter("email");
String ph=request.getParameter("ph");
String type=request.getParameter("type");
String oemail=request.getParameter("oemail");
String des=request.getParameter("des");
String addr=request.getParameter("addr");
String d=DateDemo.getDate();
int i=0;
String id=null;

try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
PreparedStatement ps=con.prepareStatement ("insert into other_requests(name, email, phone, address, description, type, oemail, date) values(?,?,?,?,?,?,?,?)");

			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,ph);
			ps.setString(4,addr);
			ps.setString(5,des);
			ps.setString(6,type);
			ps.setString(7,oemail);
			ps.setString(8,d);

			ps.executeUpdate();


	}

catch(Exception e)
{
	e.printStackTrace();
	out.println(e);
}

	response.sendRedirect("donate.jsp?message=succ");
%>

