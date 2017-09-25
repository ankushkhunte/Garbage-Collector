package com.controllers;

import java.util.ArrayList;
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

public class UvendorSearchController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		
		
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		HttpSession ses=req.getSession();
		String vendorname=(String)ses.getAttribute("vendorName");
		List<List<Item>> li=new ArrayList<List<Item>>();
		String item1;
		String item2;
		String item3;
		String item4;
		String item5;
		String item6;
		List<Item> l1=null;
			String area =req.getParameter("area");
	
		List<String> list=new ArrayList<String>();
		if(req.getParameter("item1")!=null){
		item1=req.getParameter("item1");
		 l1=dao.searchVendor(item1, area);
		if(l1.size()>0){
			
			ses.setAttribute("v1",l1);
			li.add(l1);
		}
     
		
		}
		if(req.getParameter("item2")!=null){
		
		
		item2=req.getParameter("item2");
		l1=dao.searchVendor(item2, area);
		if(l1.size()>0){
			
			ses.setAttribute("v2",l1);
			li.add(l1);
		}
		
		}
		if(req.getParameter("item3")!=null){
	      item3=req.getParameter("item3");
	      l1=dao.searchVendor(item3, area);
			if(l1.size()>0){
				
				ses.setAttribute("v3",l1);
				li.add(l1);
			}
		}
		
		if(req.getParameter("item4")!=null){
		item4=req.getParameter("item4");
		l1=dao.searchVendor(item4, area);
		if(l1.size()>0){
			
			ses.setAttribute("v4",l1);
			li.add(l1);
		}
		
		}
		if(req.getParameter("item5")!=null){
		item5=req.getParameter("item5");
		l1=dao.searchVendor(item5, area);
		if(l1.size()>0){
			
			ses.setAttribute("v5",l1);
			li.add(l1);
		}
		
		}
		if(req.getParameter("item6")!=null){
	      item6=req.getParameter("item6");
	     l1=dao.searchVendor(item6, area);
			if(l1.size()>0){
				
				ses.setAttribute("v6",l1);
				li.add(l1);
			}
		
		
		}
//		  for (List<Item> l : li) {
//				System.out.println(l);
//			}
//			
		
		ses.setAttribute("f", li);
		
		return new ModelAndView("demo");
	}

}
