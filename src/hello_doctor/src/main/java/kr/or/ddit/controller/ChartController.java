package kr.or.ddit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/chart")
public class ChartController {

	@RequestMapping("/chartlist")
	public String chartlist(){
		String url= "chart/chartlist";
		return url;
	}
}
