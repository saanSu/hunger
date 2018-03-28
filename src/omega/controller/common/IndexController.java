package omega.controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping({"/","/index"})
	public String indexHandle() {
		return "t_default";
	}
}
