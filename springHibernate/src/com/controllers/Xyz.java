package com.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Registration;
import springHibernate.Item;
import springHibernate.Feedback;
import springHibernate.RegistrationDao;

/**
 * @author user12
 *
 */
public class Xyz implements Controller {

	
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		List<Item> li=dao.GetAllItems();
		List<Feedback> fi=dao.GetAllFeedbacks();
		HttpSession ses=req.getSession();
		ses.setAttribute("list", li);
		ses.setAttribute("fblist", fi);
		
		return new ModelAndView("HomePageNew");
		
		
	}

}
