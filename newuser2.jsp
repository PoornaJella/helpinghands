
<%@ page  import="java.sql.*" import="databaseconnection.*" %>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,intr,blood;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from user");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");


tele=request.getParameter("tele");
blood=request.getParameter("blood");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");
//System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
un="user"+i;

int q= st.executeUpdate("insert into user(id,name,lname,address,phone,email,password) values('"+i+"','"+name+"','"+lname+"','"+addr+"','"+tele+"','"+email+"', '"+pwd+"')");


if(q>0)
{

response.sendRedirect("addr2.jsp?id="+email+"");
//response.sendRedirect("profilepic.jsp?id="+email+"");


}
else
	response.sendRedirect("newuser.jsp?m=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
