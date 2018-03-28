package omega.controller.common;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import omega.service.common.AccountService;

@Controller
public class SignController {
	@Autowired
	AccountService accountService;
	
	
	@RequestMapping(path="/login", method=RequestMethod.GET)
	public String loginGetHandle(Model model) {
		model.addAttribute("title", "로그인");
		model.addAttribute("section", "/WEB-INF/view/account/login.jsp");
		return "t_dynamic";
	}
	
	@RequestMapping(path="/session", method=RequestMethod.POST)
	public String loginPostHandle(@RequestParam Map<String,String> param) {
		System.out.println("loginPostHandle : " +param);
		return "redirect:/";
	}
	
	@RequestMapping(path="/exist",produces="application/json;charset=utf-8")
	@ResponseBody
	public String existHanlde(@RequestParam String id) {
		return String.valueOf(accountService.exist(id));
	}
}
