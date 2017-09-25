package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Feedback;
import springHibernate.RegistrationDao;

public class UfinalfeedbackController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		String uname=req.getParameter("uname");
		String vname=req.getParameter("vname");
		String feedback=req.getParameter("feedback");
		String desc=req.getParameter("description");
		
		Feedback f=new Feedback(uname,vname,feedback,desc);
		dao.savFeedback(f);
		return new ModelAndView("ufeedback","msg","Feedback Submited..Thank You..!");
	}

}
