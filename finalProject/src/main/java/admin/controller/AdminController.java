package admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import buyList.bean.BuyListDTO;
import buyList.dao.BuyListDAO;
import member.bean.MemberDTO;
import member.dao.MemberDAO;

@RequestMapping(value="admin")
@Component
public class AdminController {
	@Autowired
	private BuyListDAO buyListDAO;
	@Autowired
	private MemberDAO memberDAO;
	
	@RequestMapping(value="deliveryControll", method=RequestMethod.GET)
	public String deliveryControll() {
		return "/admin/deliveryControll";
	}
	
	@RequestMapping(value="refundControll", method=RequestMethod.GET)
	public String refundControll() {
		return "/admin/refundControll";
	}
	
	@RequestMapping(value="getDeliveryList", method=RequestMethod.POST)
	public ModelAndView getDeliveryList() {		
		List<BuyListDTO> list = buyListDAO.getAllBuyList();
		List<Map<String,String>> mapList = new ArrayList<>();
		for(BuyListDTO buylist : list) {
			MemberDTO memberDTO = memberDAO.getMember(buylist.getId());
			Map<String,String> map = new HashMap<String,String>();
			map.put("serial", buylist.getSerial());
			map.put("id", memberDTO.getId());
			map.put("name", memberDTO.getName());
			map.put("addr", memberDTO.getAddr1()+" "+memberDTO.getAddr2());
			map.put("tel", memberDTO.getTel1()+"-"+memberDTO.getTel2()+"-"+memberDTO.getTel3());
			map.put("status", buylist.getStatus());
			
			mapList.add(map);
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("mapList", mapList);
		mav.setViewName("jsonView");
		
		return mav;
	}
	
	@RequestMapping(value="getMember", method=RequestMethod.POST)
	public ModelAndView getMember(@RequestParam String id) {
		MemberDTO memberDTO = memberDAO.getMember(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberDTO", memberDTO);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="deliveryDetail", method=RequestMethod.POST)
	public ModelAndView deliveryDetail(@RequestParam String serial) {
		
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		
		return mav;
	}
}
