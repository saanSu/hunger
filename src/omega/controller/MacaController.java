package omega.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/monhun")
public class MacaController {

	@RequestMapping("/maca")
	public String macaGetHandle(HttpSession session, Model model) {
		String on = (String)session.getAttribute("on");
		model.addAttribute("title", "마카연금");
		return "t_dynamic";
	}
}
