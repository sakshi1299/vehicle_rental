/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package constant;

/**
 *
 * @author mashe
 */
public class Ca_cat_bean {
    private int cat_id;
    private String cat_name;
    private double  rent_price;
    private int availabilty;

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }

    public String getCat_name() {
        return cat_name;
    }

    public void setCat_name(String cat_name) {
        this.cat_name = cat_name;
    }

    public double getRent_price() {
        return rent_price;
    }

    public void setRent_price(double rent_price) {
        this.rent_price = rent_price;
    }

    public int getAvailabilty() {
        return availabilty;
    }

    public void setAvailabilty(int availabilty) {
        this.availabilty = availabilty;
    }
    
}
