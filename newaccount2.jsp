
<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,intr,blood;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from orphanage");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");

addr=request.getParameter("addr");


tele=request.getParameter("tele");
blood=request.getParameter("blood");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");
String c=request.getParameter("c");
String a=request.getParameter("a");
//System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
un="user"+i;

int q= st.executeUpdate("insert into orphanage(id,name,address,phone,email,password, children, adults) values('"+i+"','"+name+"','"+addr+"','"+tele+"','"+email+"', '"+pwd+"', '"+c+"', '"+a+"')");


if(q>0)
{

response.sendRedirect("addr22.jsp?id="+email+"");
//response.sendRedirect("profilepic.jsp?id="+email+"");


}
else
	response.sendRedirect("newaccount.jsp?m=fail");

}
catch(Exception e)
{
	out.println("Email is already registerd!!");
e.printStackTrace();
	}
%>
