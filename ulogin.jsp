<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;


Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();



try
{


	
	String sss1 = "select * from user where email='"+a+"' && password='"+b+"'";
	System.out.println(sss1);
	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{
		name=rs1.getString("name");

		session.setAttribute("username",rs1.getString("name"));

		session.setAttribute("userlat",rs1.getString("latitude"));
		session.setAttribute("userlon",rs1.getString("longitude") );

		session.setAttribute("useremail",a);
		response.sendRedirect("user_home.jsp");

		}
		else{
		response.sendRedirect("user.jsp?message=fail");

	}


	
}
catch(Exception e1)
{
out.println(e1);
}

%>