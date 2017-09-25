package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Registration;
import springHibernate.RegistrationDao;
import springHibernate.VendorRegisrtration;

public class TestVcontroller implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		
		

		

		String name=req.getParameter("vname");
		String pass=req.getParameter("pass");
		String email=req.getParameter("email");
		String no=req.getParameter("mobno");
		
		String city=req.getParameter("city");
		String pin=req.getParameter("pincode");
		
		int pincode=Integer.parseInt(pin);
		
		VendorRegisrtration v=new VendorRegisrtration(name,pass,email,no,city,pincode);
		
		try{
		dao.saveVendorRegistration(v);
		}
		catch(Exception e)
		{
			return new ModelAndView("vendorregister","msg","duplicate Vendor");
		}	

		return new ModelAndView("vendorregister","msg","Register Sucessfully..");
		
		
		
	}

	
}
