package CT;
import databaseconnection.*;
import java.sql.*;
import java.util.Vector;

public class  Details
{

static Connection con1=null;
static Statement st1=null;



	public static Vector<String> GetOrpDetails(String email) {
		int i=0;
		Vector<String> v=new Vector<String>();
		try{



			con1 = databasecon.getconnection();
			st1 = con1.createStatement();
			String sql=null;;
			sql="select * from orphanage where email='"+email+"'";
			System.out.println(sql);
			ResultSet rs=null;
			rs=st1.executeQuery(sql);

			rs.next();
			v.add(rs.getString("name"));
			v.add(rs.getString("children"));
			v.add(rs.getString("adults"));
			v.add(rs.getString("address"));

		}
			catch(Exception e){
				System.out.println(e);
			}
			finally{
				try{
				con1.close();
				st1.close();
		//		rs.close();
				}
				catch(Exception e){
				System.out.println(e);
				}
			}
			return v;
		}


	public static Vector<String> GetUserLoc(String email) {
		int i=0;
		Vector<String> v=new Vector<String>();
		try{



			con1 = databasecon.getconnection();
			st1 = con1.createStatement();
			String sql=null;;
			sql="select * from user where email='"+email+"'";
			System.out.println(sql);
			ResultSet rs=null;
			rs=st1.executeQuery(sql);

			rs.next();
			v.add(rs.getString("latitude"));
			v.add(rs.getString("longitude"));
			
		}
			catch(Exception e){
				System.out.println(e);
			}
			finally{
				try{
				con1.close();
				st1.close();
		//		rs.close();
				}
				catch(Exception e){
				System.out.println(e);
				}
			}
			return v;
		}




	public static Vector<String> GetOrpLoc(String email) {
		int i=0;
		Vector<String> v=new Vector<String>();
		try{



			con1 = databasecon.getconnection();
			st1 = con1.createStatement();
			String sql=null;;
			sql="select * from orphanage where email='"+email+"'";
			System.out.println(sql);
			ResultSet rs=null;
			rs=st1.executeQuery(sql);

			rs.next();
			v.add(rs.getString("latitude"));
			v.add(rs.getString("longitude"));
			
		}
			catch(Exception e){
				System.out.println(e);
			}
			finally{
				try{
				con1.close();
				st1.close();
		//		rs.close();
				}
				catch(Exception e){
				System.out.println(e);
				}
			}
			return v;
		}



	public static Vector<String> GetAvail(String d, String email) {
		int i=0;
		Vector<String> v=new Vector<String>();
		try{





		con1 = databasecon.getconnection();
		st1 = con1.createStatement();
			
					try
		{
			st1.executeUpdate("insert into orphange_food_details value('"+email+"', '"+d+"', 'Breakfast', 'Not available')");
		}catch(Exception e1){
		}
		try
		{
			st1.executeUpdate("insert into orphange_food_details value('"+email+"', '"+d+"', 'Lunch', 'Not available')");
		}catch(Exception e1){
		}
		try
		{
			st1.executeUpdate("insert into orphange_food_details value('"+email+"', '"+d+"', 'Dinner', 'Not available')");
		}catch(Exception e1){
		}
			


			String sql=null;;
			sql="select * from orphange_food_details where date='"+d+"' and email='"+email+"' and  stz='Not available' ";
			System.out.println(sql);
			ResultSet rs=null;
			rs=st1.executeQuery(sql);

			while(rs.next()){
				v.add(rs.getString("timing"));
			}
		}
			catch(Exception e){
				System.out.println(e);
			}
			finally{
				try{
				con1.close();
				st1.close();
		//		rs.close();
				}
				catch(Exception e){
				System.out.println(e);
				}
			}
			return v;
		}



	public static void main(String[] args) 
	{
		
System.out.println("");



	}

}



