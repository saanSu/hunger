package omega.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import omega.service.hunter.MacaService;


@Controller
@RequestMapping("/hunter")
public class HunterController {

	@Autowired
	MacaService macaService;
	
	@RequestMapping("/accessory/add")
	public String addGetHanlde(Model model) {
		
		model.addAttribute("title", "관리자");
		model.addAttribute("section", "/WEB-INF/view/hunter/addAcc.jsp");
		return "t_dynamic";
	}
	
}
