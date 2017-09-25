/**
 * 
 */
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

/**
 * @author user12
 *
 */
public class VitemController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		HttpSession ses=req.getSession();
		String vendorname=(String)ses.getAttribute("vendorName");
		//List<Item> li=dao.getItemnames(vendorname);
		
		List<String> list=new ArrayList<String>();
		String item1=req.getParameter("item1");
		String item2=req.getParameter("item2");
		String item3=req.getParameter("item3");
		String item4=req.getParameter("item4");
		String item5=req.getParameter("item5");
		String item6=req.getParameter("item6");
		
		
		if(req.getParameter("item1")!=null){
			List<Item> li=dao.checkItems(vendorname, item1);
			
			if(li.size()<=0){
			list.add(item1);
			}
			
		}
		
		if(req.getParameter("item2")!=null){
			
      List<Item> li=dao.checkItems(vendorname, item2);
			
			if(li.size()<=0){
			list.add(item2);
			}
			  
		}
		
		if(req.getParameter("item3")!=null){
      List<Item> li=dao.checkItems(vendorname, item3);
			
			if(li.size()<=0){
			list.add(item3);
			}
		}
		
		if(req.getParameter("item4")!=null){
       List<Item> li=dao.checkItems(vendorname, item4);
			
			if(li.size()<=0){
			list.add(item4);
			}
		}
		
		if(req.getParameter("item5")!=null){
     List<Item> li=dao.checkItems(vendorname, item5);
			
			if(li.size()<=0){
			list.add(item5);
			}
		}
		
		
		if(req.getParameter("item6")!=null){
        List<Item> li=dao.checkItems(vendorname, item6);
			
			if(li.size()<=0){
			list.add(item6);
			}
		}
		
		
	
		
		
		int s=list.size();
		
		
		ses.setAttribute("list", list);
		return new ModelAndView("vendorprice","a",list);
		

	}

}
