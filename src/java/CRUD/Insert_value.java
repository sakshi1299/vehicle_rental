package CRUD;


import java.sql.CallableStatement;
import java.sql.Connection;
import constant.DB;
import java.sql.PreparedStatement;

public class Insert_value {
    DB d=new DB();
    Connection con=d.getCon();

    public int insert_cust(String email_id,String  f_name,String m_name,String l_name,String phone_number){
    try{
         
    CallableStatement statement = con.prepareCall("{call sp_add_customer(?, ?, ?, ?, ?)}");
        statement.setString(1, f_name);
        statement.setString(2, m_name);
        statement.setString(3, l_name);
        statement.setString(4, phone_number);
        statement.setString(5, email_id); 
        statement.execute();
        statement.close();
            return 1;
        }
        catch(Exception e){
            System.out.println(e);
            return 0;
        }
    }
    public void insert_registered_customer(String email_id,String pass){
    try{
         
    CallableStatement statement = con.prepareCall("{call sp_add_registered_customer(?, ?)}");
   
        statement.setString(1, email_id); 
        statement.setString(2, pass); 
        statement.execute();
        statement.close();
            System.out.println("Sucessfull222");
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    public void insert_reg(String email_id){
    try{
    PreparedStatement ps=con.prepareStatement(  "insert into reg_time(uname) values(?)");  
        ps.setString(1, email_id); 
        ps.execute();
        ps.close();
            System.out.println("Sucessfull222");
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
     public int insert_car(String name,String carno,String capcity ,String cost,String address,String owner_name,String mobile){
    try{
         
    CallableStatement statement = con.prepareCall("{call sp_add_car(?, ?,?,?,?,?,?,?)}");
   
        statement.setString(1, name); 
        statement.setString(2, carno); 
        statement.setString(3, capcity); 
        statement.setString(4, cost); 
        statement.setString(5, address); 
        statement.setString(6, owner_name); 
        statement.setString(7, mobile); 
        statement.setInt(8, 0); 
        statement.execute();
        statement.close();
           return 1;
        }
        catch(Exception e){
            System.out.println(e);
            return 0;
        }
    }
     public int insert_feedback(String vname,String vno,String feedback){
         try{
          CallableStatement statement = con.prepareCall("{call sp_add_feedback(?,?,?)}");
   
        statement.setString(1, vname); 
        statement.setString(2, vno); 
        statement.setString(3, feedback); 
        statement.execute();
        statement.close();
            return 1;
        }
        catch(Exception e){
            System.out.println(e);
          return 0;
        }
     }

    
}
   
    

