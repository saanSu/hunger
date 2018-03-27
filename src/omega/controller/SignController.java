package omega.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SignController {

	@RequestMapping(path="/login", method=RequestMethod.GET)
	public String loginGetHandle(Model model) {
		model.addAttribute("title", "로그인 - Hunters");
		model.addAttribute("section", "/WEB-INF/view/account/login.jsp");
		return "t_dynamic";
	}
	
	@RequestMapping(path="/login", method=RequestMethod.POST)
	public String loginPostHandle(@RequestParam Map<String,String> param) {
		System.out.println("loginPostHandle : " +param);
		return "redirect:/";
	}
}
