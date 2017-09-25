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

public class VviewprofileController  implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		HttpSession ses=req.getSession();
		String vname=(String)ses.getAttribute("vendorName");
		VendorRegisrtration v=dao.getByVendorName(vname);
		ses.setAttribute("vendor", v);
		return new ModelAndView("vviewprofile");
	}

}
