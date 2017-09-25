/**
 * 
 */
package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Registration;
import springHibernate.RegistrationDao;

/**
 * @author user12
 *
 */
public class UpdatePasswordController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		
		HttpSession ses=req.getSession();
		String username=(String)ses.getAttribute("funame");
		String password=req.getParameter("pass");
		Registration r=dao.getByUserName(username);
		r.setPassWord(password);
		dao.updateRegistration(r);
		return new ModelAndView("other","msg","Your Password Updated..Now you Can Login");
	}

}
