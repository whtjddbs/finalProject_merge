package myPage.controller;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value="myPage")
@Component
public class MyPageController {
	//마이페이지 메인화면
	@RequestMapping(value="myPageIndex", method=RequestMethod.GET)
	public String myPageIndex(Model model) {
		model.addAttribute("myPageBody", "/myPage/myPageBody.jsp");
		return "/myPage/myPageIndex";
	}
	
	//주문배송조회
	@RequestMapping(value="tracking", method=RequestMethod.GET)
	public String tracking(Model model) {
		model.addAttribute("myPageBody", "/myPage/tracking.jsp");
		return "/myPage/myPageIndex";
	}
	
	//주문상세내역
	@RequestMapping(value="trackingDetail", method=RequestMethod.GET)
	public String trackingDetail(Model model) {
		model.addAttribute("myPageBody", "/myPage/trackingDetail.jsp");
		return "/myPage/myPageIndex";
	}
	
	//취소.교환.반품 내역
	@RequestMapping(value="modifyList", method=RequestMethod.GET)
	public String modifyList(Model model) {
		model.addAttribute("myPageBody", "/myPage/modifyList.jsp");
		return "/myPage/myPageIndex";
	}
	
	//위시리스트
	@RequestMapping(value="wishList", method=RequestMethod.GET)
	public String wishList(Model model) {
		model.addAttribute("myPageBody", "/myPage/wishList.jsp");
		return "/myPage/myPageIndex";
	}
	
	//상품후기 내역
	@RequestMapping(value="myReview", method=RequestMethod.GET)
	public String myReview(Model model) {
		model.addAttribute("myPageBody", "/myPage/myReview.jsp");
		return "/myPage/myPageIndex";
	}
	
	//마일리지현황
	@RequestMapping(value="myPoint", method=RequestMethod.GET)
	public String myPoint(Model model) {
		model.addAttribute("myPageBody", "/myPage/myPoint.jsp");
		return "/myPage/myPageIndex";
	}
}
