package com.user.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

//import com.backend.user.dao.UserDao;
//import com.backend.user.domain.MenuDisplay;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
	
	/**Redirect to intertrav login*/
	@RequestMapping(value={"/index","/"})
	public ModelAndView index(WebRequest req){
		ModelMap mm = new ModelMap();
		mm.put("userName", req.getUserPrincipal().getName());
		return new ModelAndView("/index", mm);
	}
	
	/**Redirect to intertrav login*/
	@RequestMapping(value={"/home"})
	public ModelAndView home(WebRequest req){
		ModelMap mm = new ModelMap();
		return new ModelAndView("/home", mm);
	}
	
	/**Redirect to intertrav login*/
	@RequestMapping(value="/login")
	public ModelAndView login(WebRequest req){
		ModelMap mm = new ModelMap();
		if( req.getUserPrincipal() != null && req.getUserPrincipal().getName() != null )
			mm.put("userName", req.getUserPrincipal().getName());
		return new ModelAndView("/login", mm);
	} 
	
	@RequestMapping(value="/logout")
	public ModelAndView logout(WebRequest req,
			HttpServletRequest  reqs){
		ModelMap mm = new ModelMap();
		reqs.getSession().invalidate();
		return new ModelAndView( new RedirectView("/", true), mm);
	} 
	
	
	@RequestMapping(value="/login-error")
	public ModelAndView loginError(){
		return new ModelAndView("/error/login-error");
	}
	
	/**Redirect to intertrav login*/
	@RequestMapping(value="/error/404")
	public ModelAndView error404(){
		return new ModelAndView( "/error/404");
	}
	
	/**Generic error, prints error string*/
	@RequestMapping(value="/error/error")
	public ModelAndView errorGeneric(){
		return new ModelAndView("/error/error");
	}
	
	/**Bad request error, displays browser back*/
	@RequestMapping(value="/error/badrequest")
	public ModelAndView errorBadRequest(){
		return new ModelAndView("/error/badrequest");
	}
	
}
