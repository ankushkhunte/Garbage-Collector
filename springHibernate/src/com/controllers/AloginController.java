/**
 * 
 */
package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
public class AloginController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		
		
		
		

		String name=req.getParameter("aname");
		String pass=req.getParameter("pass");
		
	
		
		try{
			AdminLogin a=(AdminLogin)dao.getByAdminName(name);
			if(name.equals(a.getUserName()) && pass.equals(a.getPassword())){
				return new ModelAndView("awelcome");
			}else{
				return new ModelAndView("adminlogin","msg","Invalid UserName and Password");
			}
		}
		catch(Exception e)
		{
			return new ModelAndView("adminlogin","msg","Invalid UserName and Password");
		}	
//		ArrayList< Member> arr = new ArrayList<Member>();
//		arr.addAll(dao.getMember());
		
	}

}
