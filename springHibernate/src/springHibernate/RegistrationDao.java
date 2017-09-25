package springHibernate;


import java.util.List;
import java.util.ArrayList;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateTemplate;  

 public class RegistrationDao {
HibernateTemplate template;


public HibernateTemplate getTemplate() {
	return template;
}


public void setTemplate(HibernateTemplate template) {
	this.template = template;
}


public void saveRegistration(Registration r){  
	template.save(r);  
} 
public void saveAdminlogin(AdminLogin a){  
	template.save(a);  
} 
public void saveVendorRegistration(VendorRegisrtration v){  
	template.save(v);  
}  
public void saveItem (Item i){  
	template.save(i);  
}  

public void updateAdminlogin(AdminLogin a){  
	template.update(a);  
}  
public void updateRegistration(Registration r){  
	template.update(r);  
} 
//public void deleteRegistration(Registration r){  
//	template.delete(r);
//}  
//	
public VendorRegisrtration getByVendorName(String username){  
	VendorRegisrtration v=(VendorRegisrtration)template.get(VendorRegisrtration.class,username);  
	
    return v;  
}
public void updateVendorRegisrtration(VendorRegisrtration v){  
template.update(v);  
} 
public AdminLogin getByAdminName(String username){  
	AdminLogin r=(AdminLogin)template.get(AdminLogin.class,username);  
	
    return r;  
}
public Registration getByUserName(String username){  
	Registration r=(Registration)template.get(Registration.class,username);  
	
    return r;  
}
public boolean containUser(String username){
	return template.contains(username);
}

public List<Registration> select(String que){

	List<Registration> list=template.find("select EMAIL,MOBNO FROM registration where MOBNO='"+que+"'");
	return list;
}

public List<Item> getItemnames(String name){
	return (List<Item>) template.findByCriteria(
	        DetachedCriteria.forClass(Item.class)
	        .add(Restrictions.eq("VENDORNAME", name)));
}
public List<Item> getItems(String name){
	List<Item> list=template.find(" from Item where vendorName='"+name+"'");
	return list;
}
public List<Item> checkItems(String name,String iname){
	List<Item> list=template.find(" from Item where vendorName='"+name+"' and itemName='"+iname+"'");
	return list;
}
public void updateItem(Item i){  
template.update(i);  
} 
public void deleteItem(Item i){  
template.delete(i);
} 

public List<Item> searchVendor(String iname,String area){
	List<Item> list=template.find(" from Item where itemName='"+iname+"' and area='"+area+"'");
	return list;
}
//----------------------------------------------------

public void savAppointment(Appointment a){
	template.save(a);
}

public List<Appointment> getAppoinments(String username) {
	List<Appointment> list=template.find(" from Appointment where userName='"+username+"'");
	
	return list;
	
}
public List<Appointment> getAppoinments1(String vname) {
	List<Appointment> list=template.find(" from Appointment where vendorName='"+vname+"'");
	
	return list;
	
}
//------------------------------------------------
public void savFeedback(Feedback f){
	template.save(f);
}

public List<Feedback> getFeedback(String vname) {
	List<Feedback> list=template.find(" from Feedback where vendorName='"+vname+"'");
	
	return list;
	
}

public List<Item> GetAllItems()
{
	List<Item> li=(List<Item>) template.loadAll(Item.class);
	return li;
}
public List<Feedback> GetAllFeedbacks()
{
	List<Feedback> li=(List<Feedback>) template.loadAll(Feedback.class);
	return li;
}
}
