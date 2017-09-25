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

import springHibernate.Appointment;
import springHibernate.Registration;
import springHibernate.RegistrationDao;
import springHibernate.VendorRegisrtration;

public class UfbookappointmentController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = new ClassPathXmlApplicationContext("Bean.xml");
		RegistrationDao dao=(RegistrationDao)ac.getBean("d");
		HttpSession ses=req.getSession();
		String uname=(String)ses.getAttribute("username");
		Registration r=dao.getByUserName(uname);
		String uemail=r.getEmail();
		String umobNo=r.getMobNo();
		String username=uname;
		String fullName=req.getParameter("fname");
		String itemname=req.getParameter("iname");
		String vendorname=req.getParameter("vname");
		String price=req.getParameter("price");
		String qtyrange=req.getParameter("qty");
		String area=req.getParameter("area");
		String bdate=req.getParameter("bdate");
		String time=req.getParameter("time");
		String address=req.getParameter("address");
		VendorRegisrtration v=dao.getByVendorName(vendorname);
		String vemail=v.getEmail();
		String vmobno=v.getMobNo();
		List<String> mob =new ArrayList<String>();
		mob.add(umobNo);
		mob.add(uemail);
		mob.add(vemail);
		mob.add(vmobno);
		ses.setAttribute("mob", mob);
		
		Appointment a=new Appointment(username,fullName,uemail,umobNo,vendorname,itemname,price,qtyrange,bdate,time,address,vemail,vmobno);
		dao.savAppointment(a);
		
		
		return new ModelAndView("receipt");
	}

}
