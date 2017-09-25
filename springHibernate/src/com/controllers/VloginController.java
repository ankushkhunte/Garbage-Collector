package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.RegistrationDao;
import springHibernate.VendorRegisrtration;

public class VloginController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		String username=req.getParameter("vname");
		String password=req.getParameter("pass");
		
		HttpSession ses=req.getSession();
		
		
		try {
			VendorRegisrtration v= dao.getByVendorName(username);
			if(username.equals(v.getVendorName()) && password.equals(v.getPassWord())){
				ses.setAttribute("vendorName",username);
				return new ModelAndView("new");
			}else{
				return new ModelAndView("vlogin","msg","Invalid UserName and Password");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("vlogin","msg","Invalid VendorName and Password");
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
