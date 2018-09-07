package member.controller;

import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.dao.MailService;
import member.dao.MemberDAO;

@Controller
public class MemberController {
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private MailService mailService;

	@RequestMapping(value="/member/loginForm.do",method=RequestMethod.GET)
	public String loginForm(Model model) {
		model.addAttribute("display", "/member/loginForm.jsp");
		return "/main/index";
	}
	
	@RequestMapping(value="/member/login.do",method=RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam Map<String,String> map, HttpSession session) {
		
		// DB
		MemberDTO memberDTO = memberDAO.login(map);
		
		//응답
		if(memberDTO == null) {
			return "nonexist";
		}else {
			//세션
			session.setAttribute("memberDTO",memberDTO);
			return "exist";
		}
	}
	
	@RequestMapping(value="/member/logout.do",method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		session.invalidate(); //모든 세션 소멸
		
		ModelAndView mav = new ModelAndView();	
		mav.addObject("display", "/member/loginOk.jsp");
		mav.setViewName("/main/index");
		return mav;	
	}
	
	@RequestMapping(value="/member/checkId.do",method=RequestMethod.POST)
	public @ResponseBody String checkId(@RequestParam String id) {
		if(id.equals("")) return "empty";
		else {
			MemberDTO memberDTO = memberDAO.memberList(id);
			if(memberDTO == null) return "nonexist";
			else return "exist";
		}
	}
	
	
	@RequestMapping(value="/member/writeForm.do",method=RequestMethod.GET)
	public String writeForm(Model model) {
		model.addAttribute("display", "/member/writeForm.jsp");
		return "/main/index";
	}
	
	@RequestMapping(value="/member/write.do",method=RequestMethod.POST)
	public String write(@ModelAttribute MemberDTO memberDTO , Model model) {
		
		// DB
		memberDAO.write(memberDTO);

		model.addAttribute("display", "/member/writeOk.jsp"); 
		return "/main/index";
	}
	
	
	@RequestMapping(value="/member/modifyForm.do",method=RequestMethod.GET)
	public String modifyForm(Model model, HttpSession session) {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("memberDTO");
		
		model.addAttribute("memberDTO", memberDTO);
		model.addAttribute("display", "/member/modifyForm.jsp");
		return "/main/index";
	}
	
	@RequestMapping(value="/member/modify.do",method=RequestMethod.POST)
	public String modify(@ModelAttribute MemberDTO memberDTO
						,Model model, HttpSession session) {
		//DB
		memberDAO.modify(memberDTO);
		
		model.addAttribute("display", "/member/modify.jsp");
		return "/main/index";
	}
	
	//아이디찾기/비밀번호 찾기 - 이메일 인증
	@RequestMapping(value="/member/checkMail.do",method=RequestMethod.POST)
	@ResponseBody
	private boolean sendMail(HttpSession session, @RequestParam String email) {
		int randomCode = new Random().nextInt(10000)+1000;
		String joinCode = String.valueOf(randomCode);
		session.setAttribute("joincode", joinCode);
		
		String subject = "인증번호입니다";
		StringBuilder sb = new StringBuilder();
		sb.append("인증번호는 ").append(joinCode).append(" 입니다");
		return mailService.send(subject, sb.toString(), "sooellen10@gmail.com", email);
	}
}

