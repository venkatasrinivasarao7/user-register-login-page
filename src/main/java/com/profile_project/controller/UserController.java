package com.profile_project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.profile_project.model.User;
import com.profile_project.service.IUserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	
	@Autowired
	private IUserService userServiceimpl;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String homePage() {
		return "register";
	}
	
	@RequestMapping(value="/saveuser",method=RequestMethod.POST)
	public ModelAndView registered(@ModelAttribute("User") User user){
		ModelAndView mav = new ModelAndView();
		  
		int i = userServiceimpl.saveUser(user);
		if(i>0) {
			mav.addObject("msg", "Registration completed please login.");
			mav.setViewName("login");
		}else {
			mav.addObject("msg", "login please");
			mav.setViewName("login");
		}
		return mav;
	}
	
	@RequestMapping(value="/loginpage", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("User") User user, HttpSession session) {

	    ModelAndView mav = new ModelAndView();

	    if(user.getEmail() != null && user.getPassword() != null) {
	        
	        
	        if(user.getEmail().equals("srinu@gmail.com") && user.getPassword().equals("srinu@123")) {
	            List<User> adminList = userServiceimpl.allStudents();
	            session.setAttribute("user", user); 
	            mav.addObject("list", adminList);
	            mav.setViewName("allstudents");
	            return mav;
	        }

	      
	        User u = userServiceimpl.login(user.getEmail(), user.getPassword());
	        if(u != null) {
	            session.setAttribute("user", u);
	            mav.addObject("user", u);
	            mav.setViewName("profile");
	            return mav;
	        } else {
	            mav.setViewName("login");
	            mav.addObject("msg", "Invalid credentials!");
	            return mav;
	        }
	    } else {
	        mav.setViewName("login");
	        mav.addObject("msg", "Please enter email and password");
	        return mav;
	    }
	}
	@GetMapping("/loginpage")
	public ModelAndView showLogin(@ModelAttribute("User") User user, HttpSession session) {
		
		 ModelAndView mav = new ModelAndView();
		 List<User> adminList = userServiceimpl.allStudents();
         session.setAttribute("user", user); 
         mav.addObject("list", adminList);
         mav.setViewName("allstudents");
         return mav;
         
	}


	@RequestMapping("/login")
	public String showLoginPage() {
	    return "login";
	}

	@RequestMapping("/register")
	public String showRegisterPage() {
	    return "register";
	}
	@RequestMapping(value="/forgetpass",method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView forgetPass() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("forgetpassword");
		return mav;
	}
	@RequestMapping(value="/setUpPass",method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView setPass(HttpServletRequest req,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String email = req.getParameter("email");
		session.setAttribute("email", email);
		mav.setViewName("setPass");
		mav.addObject("msg", "set your password");
		return mav;
	}
	
	@RequestMapping(value="/changePass",method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView changePass(HttpSession session ,HttpServletRequest req) {
		String pass1 = req.getParameter("pass1");
		String pass2 = req.getParameter("pass2");
		String email = (String) session.getAttribute("email");
		ModelAndView mav = new ModelAndView();
		if(!(pass1.equals(pass2))) {
			
			mav.setViewName("setPass");
			mav.addObject("msg", "password is not matched");
			return mav;
			
		}else {
			int i = userServiceimpl.changePass(email,pass1);
			if(i>0) {
				mav.setViewName("login");
				mav.addObject("msg", "password changed");
				session.invalidate();
				return mav;
			}
		}
		return mav;
	}
	@RequestMapping(value={"/delete","/delete/"}, method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView delete(@RequestParam("id") int id) {
	    ModelAndView mav = new ModelAndView();

	    int i = userServiceimpl.deleteUser(id);
	    if(i>0) {
	        mav.setViewName("redirect:/loginpage");
	        return mav;
	    }
	    return null;
	}

	@RequestMapping(value="/logout",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg","you were logged out");
		mav.setViewName("login");
		return mav;
	}
}
