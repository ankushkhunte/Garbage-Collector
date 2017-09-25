package com.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class UbookappointmentController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		
		String itemname=req.getParameter("iname");
		String vendorname=req.getParameter("vname");
		String price=req.getParameter("iprice");
		String area=req.getParameter("iarea");
		String qty=req.getParameter("qty");
		HttpSession ses=req.getSession();
		ses.setAttribute("bitemname",itemname);
		ses.setAttribute("bvname",vendorname);
		ses.setAttribute("bprice",price);
		ses.setAttribute("barea",area);
		ses.setAttribute("bqty",qty);
		
		
		
		return new ModelAndView("bookappointment");
	}

}
