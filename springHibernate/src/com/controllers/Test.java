package com.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Registration;
import springHibernate.RegistrationDao;

public class Test implements Controller{

	

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		
		

		

		String name=req.getParameter("uname");
		String pass=req.getParameter("pass");
		String email=req.getParameter("email");
		String no=req.getParameter("mobno");
		
		String city=req.getParameter("city");
		String pin=req.getParameter("pincode");
		
		int pincode=Integer.parseInt(pin);
		
		Registration r=new Registration(name,pass,email,no,city,pincode);
		
		try{
		dao.saveRegistration(r);
		}
		catch(Exception e)
		{
			return new ModelAndView("home","msg","duplicate record");
		}	
//		ArrayList< Member> arr = new ArrayList<Member>();
//		arr.addAll(dao.getMember());
		return new ModelAndView("login_user","msg","Register Sucessfully..");
	}

}
