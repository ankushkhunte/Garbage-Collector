package com.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import springHibernate.Item;
import springHibernate.RegistrationDao;

public class VdeleteitemsController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
	
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		
		
		String itemName=req.getParameter("itemname");
		
		HttpSession ses=req.getSession();
		String vname=(String)ses.getAttribute("vendorName");
		List<Item> l=dao.checkItems(vname, itemName);
		Item i=(Item)l.get(0);
	
	
   dao.deleteItem(i);
    List<Item> li=dao.getItems(vname);
	
	
	
	ses.setAttribute("listitem", li);

		return new ModelAndView("vupdatedetails");

	}

}
