package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Item;
import springHibernate.RegistrationDao;
import springHibernate.VendorRegisrtration;

public class VitemSaveController6 implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		
		
		String itemName=req.getParameter("itemname");
		String price=req.getParameter("price");
		String qty=req.getParameter("qty");
		String area=req.getParameter("area");
		HttpSession ses=req.getSession();
		String vname=(String)ses.getAttribute("vendorName");
		Item i=new Item(itemName,price,qty,area,vname);
		
		try{
			dao.saveItem(i);
			}
			catch(Exception e)
			{
				return new ModelAndView("vendorprice","msg","item cannot be added");
			}	
//			ArrayList< Member> arr = new ArrayList<Member>();
//			arr.addAll(dao.getMember());
		
		ses.setAttribute("itemname6",itemName);
			return new ModelAndView("vsame6","msg"," Details added Sucessfully");
		}
}
