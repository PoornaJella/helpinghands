<%@ page  import="java.sql.*" import="CT.*" import="databaseconnection.*" %>
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;


Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
Statement st2 = con1.createStatement();



try
{


	
	String sss1 = "select * from orphanage where email='"+a+"' && password='"+b+"'";
	System.out.println(sss1);
	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{


		String d=DateDemo.getDate();
		try
		{
			st2.executeUpdate("insert into orphange_food_details value('"+a+"', '"+d+"', 'Breakfast', 'Not available')");
		}catch(Exception e1){
		}
		try
		{
			st2.executeUpdate("insert into orphange_food_details value('"+a+"', '"+d+"', 'Lunch', 'Not available')");
		}catch(Exception e1){
		}
		try
		{
			st2.executeUpdate("insert into orphange_food_details value('"+a+"', '"+d+"', 'Dinner', 'Not available')");
		}catch(Exception e1){
		}


		name=rs1.getString("name");

		session.setAttribute("oname",rs1.getString("name"));

		session.setAttribute("olat",rs1.getString("latitude"));
		session.setAttribute("olon",rs1.getString("longitude") );

		session.setAttribute("oemail",a);
		response.sendRedirect("o_home.jsp");

		}
		else{
		response.sendRedirect("orphanage.jsp?message=fail");

	}


	
}
catch(Exception e1)
{
out.println(e1);
}

%>