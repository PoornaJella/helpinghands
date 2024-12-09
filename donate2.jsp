<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>
<%@ page import="java.io.*,java.sql.*"%>

<%@ include file="uheader.jsp"%>


 <form name="reg" action="donate3.jsp" method="get"   >
				
    <h2>Send Request to orphanage</h2>	<br><br>
		
                 
			
			<table  ALIGN="CENTER" id="tab" width="50%">
				<tr><td  >		
				
									

				<tr>
				<td >
							Name: <input type="text" name="name" value="<%=session.getAttribute("username")%>" required class="form-control">
				<tr>
				<td>
							Email: <input type="text" name="email" readonly value="<%=session.getAttribute("useremail")%>" required class="form-control">
				<tr>
				<td >
							Phone: <input type="text" name="ph" required class="form-control">
				<tr><td >
							Address: <input type="text" name="addr" required class="form-control">
				<tr><td >
							Donate: 

							<select name="type" class="form-control">
								<option value="Cloths" selected>Cloths
								<option value="Stationary">Stationary
								<option value="Money">Money
								<option value="Books">Books
								<option value="Toys">Toys 
								
								<option value="Furniture">Furniture
								 <option value="Appliances">Appliances
								 <option value="Property">Property 
							</select>

				<tr>

				<td >
								Description:
								<textarea name="des" rows="" cols="" class="form-control"></textarea>
								
								
				
				<input type="hidden" name="oemail" value="<%=request.getParameter("oemail")%>" required class="form-control">


					
								<tr><td>
				<input type="submit" value="Send Request"  size="20" >
				
									</form>




				</table>
<br><br><br>

   

<%@ include file="footer.jsp"%>