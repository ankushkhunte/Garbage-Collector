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

import springHibernate.AdminLogin;
import springHibernate.Registration;
import springHibernate.RegistrationDao;

/**
 * @author user12
 *
 */
public class AforgotpassController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		HttpSession ses=req.getSession();
		String username=req.getParameter("aname");	
		ses.setAttribute("aname", username);
	    try {
			AdminLogin a=(AdminLogin)dao.getByAdminName(username);
			if(username.equals(a.getUserName())){
				
				return new ModelAndView("aupdatepass");
			}else{
				return new ModelAndView("aforgotpass","msg","invalid UserName");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("aforgotpass","msg","invalid UserName");
		}
	}

}
