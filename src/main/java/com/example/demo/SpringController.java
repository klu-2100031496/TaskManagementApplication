package com.example.demo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.apiclub.captcha.Captcha;


@Controller
public class SpringController {
	
	private String currentCaptcha;
	
	@Autowired
	private Repository repo;
	
	@GetMapping("/")
	public String fun1() {
		
		return "home.jsp";
	}
	
	@GetMapping("/signup")
	public String fun2() {
		
		return "signup.jsp";
	}
	
	
	
	@PostMapping("/signup")
	public String fun4(@RequestParam String username, @RequestParam String fullname, @RequestParam String email, @RequestParam String password, Model model)
	{
		User user = new User();
	    user.setUsername(username);
	    user.setFullname(fullname);
	    user.setEmail(email);
	    user.setPassword(password);
	    
	    repo.save(user);
	    
	    return "redirect:/signin";

	}
	
	@GetMapping("/signin")
	 public String fun3(Model model) {
		Captcha captcha =  CaptchaUtil.createCaptcha(150, 50);
		User u = new User();
		u.setHiddenCaptcha(captcha.getAnswer());
		u.setCaptcha("");
		u.setRealCaptcha(CaptchaUtil.encodeCaptcha(captcha));
		model.addAttribute("command", u);
        return "signin.jsp";
    }
	
	
	
	@PostMapping("/signin")
	public String signin(@RequestParam String username, @RequestParam String password, @RequestParam String captchaInput, Model model) {
	    // Validate the user's credentials
	    User user = repo.findByUsername(username);

	    if (user != null && user.getPassword().equals(password)) {
	        if (CaptchaUtil.isCaptchaValid(captchaInput, user.getHiddenCaptcha())) {
	            // Successful sign-in and valid CAPTCHA, redirect to the home page
	            return "redirect:/";
	        } else {
	            // CAPTCHA is invalid, add an error message and return to the sign-in page
	            model.addAttribute("error", "Invalid CAPTCHA");
	            return "signin.jsp";
	        }
	    } else {
	        // Invalid credentials, add an error message and return to the sign-in page
	        model.addAttribute("error", "Invalid username or password");
	        return "signin.jsp";
	    }
	}

	 
	
	
	

}
