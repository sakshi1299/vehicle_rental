
import constant.DB;
import static constant.DB.con;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class log_check
{

     public boolean check_customer(String email_id, String password)
    {
        DB d=new DB();
         d.getCon();
         String sql="select * from registeredcustomer where email_id=? and password=?";
         try 
         {
             PreparedStatement p=con.prepareStatement(sql);
             p.setString(1, email_id);
             p.setString(2, password);
             ResultSet rs=p.executeQuery();
             if(rs.next())
             {
                 return true;
             }
         } 
         
         catch (SQLException ex) {
             Logger.getLogger(log_check.class.getName()).log(Level.SEVERE, null, ex);
         }
         return false;
       
    }
      public boolean check_admin(String email, String password)
    {
        DB d=new DB();
         d.getCon();
         String sql1="select * from auth where email=? and password=?";
         try 
         {
             PreparedStatement p1=con.prepareStatement(sql1);
             p1.setString(1, email);
             p1.setString(2, password);
             ResultSet rs1=p1.executeQuery();
             if(rs1.next())
             {
                 return true;
             }
         } 
         
         catch (SQLException ex) {
             Logger.getLogger(log_check.class.getName()).log(Level.SEVERE, null, ex);
         }
         return false;
       
    }
    
public static void main(String args[]){
         log_check l=new log_check();
        
}
}
