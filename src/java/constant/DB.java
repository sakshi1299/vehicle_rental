package constant;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dell
 */
public class DB {

     public static Connection con;
     public static void main(String args[]){
         DB d=new DB();
         d.getCon();
     }

    public static Connection getCon()
    {   
        try 
        {
           
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicless?zeroDateTimeBehavior=convertToNull","root","");
        System.out.println("Connection Successfull");
        return con;
        }
        catch (Exception ex) 
        {
            System.out.println(ex);
        }
        return null;
    }
}
                                                                                                                                                                                                                                                                                                                                                                                      

                                                                                                                                                                                                                                                                                                                                                                                                                                                         