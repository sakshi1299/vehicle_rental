package CRUD;

import constant.Ca_cat_bean;
import constant.Car_bean;
import constant.DB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mashe
 */
public class ReadValue {
  
    public List get_car_value(){
        DB db=new DB();
        Connection connection=db.getCon();
        
        PreparedStatement ps1=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        ResultSet rs1=null;
        List<Car_bean> list=new ArrayList<Car_bean>();
     
        
        
        try{
                ps=connection.prepareStatement("select * from car inner join car on carcategory.id=car.id");
                
                
               rs=ps.executeQuery(); 
               
               while(rs.next()){
                   Car_bean c=new  Car_bean();
            
                   c.setLicense_plate(rs.getString("license_plate"));
                   c.setAvailability(rs.getInt(4));
                   
                   list.add(c);
                   
               }
               rs1=ps1.executeQuery();
               
               while(rs1.next()){
              
                 
               }
        }
        catch(Exception e){
            System.out.println(e);
        }
        return list;
    }
    public List get_car_cat(){
        DB db=new DB();
        Connection connection=db.getCon();
        PreparedStatement ps1=null;
        ResultSet rs1=null;
       List<Ca_cat_bean> list=new ArrayList<Ca_cat_bean>();
          try{
                ps1=connection.prepareStatement("select * from carcategory");
          
                
               rs1=ps1.executeQuery(); 
               
               while(rs1.next()){
                   Ca_cat_bean c=new  Ca_cat_bean();
                   c.setCat_name(rs1.getString(""));
                   c.setRent_price(rs1.getDouble(3));
                         
                   
                   list.add(c);
                   
               }
             
        }
        catch(Exception e){
            System.out.println(e);
        }
        return list;

    }
}
