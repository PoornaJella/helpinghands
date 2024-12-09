
package CT;
public class  DistCalc
{

public static double distance(String s1, String s2, String s3, String s4, String unit) {
double lat1=Double.parseDouble(s1);
double lon1=Double.parseDouble(s2);
double lat2=Double.parseDouble(s3);
double lon2=Double.parseDouble(s4);
  double theta = lon1 - lon2;
  double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));
  dist = Math.acos(dist);
  dist = rad2deg(dist);
  dist = dist * 60 * 1.1515;
  if (unit == "K") {
    dist = dist * 1.609344;
	
	dist=dist;
	if(dist>1)
	  {
		dist=dist+2;
	}

  } else if (unit == "N") {
  	dist = dist * 0.8684;
    }
  return (dist);
}

public static double deg2rad(double deg) {
  return (deg * Math.PI / 180.0);
}

public static double rad2deg(double rad) {
  return (rad * 180 / Math.PI);
}


	
	
	public static void main(String[] args) 
	{
		
//System.out.println(distance(32.9697, -96.80322, 29.46786, -98.53506, "M") + " Miles");
System.out.println(distance("17.4677964", "78.42527919999998", "17.4374614", "78.4482878", "K") + " Kilometers");
System.out.println(distance("17.4677964", "78.42527919999998", "17.4374614", "78.4482878", "N") + " Nautical Miles");
//System.out.println(distance(32.9697, -96.80322, 29.46786, -98.53506, "N") + " Nautical Miles");


	}

}
