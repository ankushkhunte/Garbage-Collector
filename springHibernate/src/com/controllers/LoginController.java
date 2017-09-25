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
public class LoginController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		String username=req.getParameter("uname");
		String password=req.getParameter("pass");
		HttpSession ses=req.getSession();
		
		
		try {
			Registration r= dao.getByUserName(username);
			if(username.equals(r.getUserName()) && password.equals(r.getPassWord())){
				ses.setAttribute("username", username);
				return new ModelAndView("welcome");
			}else{
				return new ModelAndView("other","msg","Invalid UserName and Password");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("other","msg","Invalid UserName and Password");
		}
		
		//return new ModelAndView("welcome");
		
		
	}

}
