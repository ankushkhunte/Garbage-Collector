/**
 * 
 */
package com.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Appointment;
import springHibernate.RegistrationDao;

/**
 * @author admin
 *
 */
public class UfeedbackController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		HttpSession ses=req.getSession();
		String uname=(String)ses.getAttribute("username");
		
		List<Appointment> l=dao.getAppoinments(uname);
		ses.setAttribute("fbl", l);
		
		return new ModelAndView("ufeedback");
	}

}
