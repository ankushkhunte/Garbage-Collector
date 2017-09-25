package com.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Registration;
import springHibernate.RegistrationDao;

public class ForgotEmailController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		String mobno=req.getParameter("mobno");
		String username=req.getParameter("uname");
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		
		
		try {
			Registration r=dao.getByUserName(username);
			if(username.equals(r.getUserName()) && mobno.equals(r.getMobNo())){
				return new ModelAndView("updateemail","email",r.getEmail());
			}else{
			
			return new ModelAndView("forgotemail","msg"," invalid UserName and MobNo");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("forgotemail","msg"," invalid UserName and MobNo");
			
		}

	}

}
