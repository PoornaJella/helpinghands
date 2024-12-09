

package CT;
import java.util.*;
import java.text.*;

public class DateDemo {

   public static String getDate() {
      Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("YYYY-MM-dd");
      String s=ft.format(dNow);
	  return s;
}

	public static void main(String[] args) 
	{
		System.out.println(DateDemo.getDate());
	}
}
