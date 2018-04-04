package omega.controller.common;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import omega.service.hunter.MacaService;

@Controller
@RequestMapping("/monhun")
public class MacaController {
	@Autowired
	MacaService macaService;
	
	
	@RequestMapping("/accessory")
	public String macaAcceHandle(HttpSession session, Model model) {
		String on = (String)session.getAttribute("on");
		model.addAttribute("title", "[몬헌] 장식주");
		model.addAttribute("acce", macaService.findAllAccessory());
		model.addAttribute("section", "/WEB-INF/view/hunter/listAcce.jsp");
		return "t_dynamic";
	}
	
	@RequestMapping("/skill")
	public String macaSkillHandle(HttpSession session, Model model) {
		String on = (String)session.getAttribute("on");
		model.addAttribute("title", "[몬헌] 스킬");
		model.addAttribute("skill", macaService.findAllSkill());
		model.addAttribute("section", "/WEB-INF/view/hunter/listSkill.jsp");
		return "t_dynamic";
	}
}
