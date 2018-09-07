package item.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import item.bean.ItemDTO;
import item.bean.ItemPaging;
import item.dao.ItemDAO;

@RequestMapping(value="new")
@Component
public class ItemController {
	@Autowired
	private ItemDAO itemDAO;
	@Autowired
	private ItemPaging itemPaging;
	
	@RequestMapping(value="newDisplay", method=RequestMethod.GET)
	public ModelAndView newDisplay(@RequestParam String main_codename,@RequestParam(required=false,defaultValue="1") String pg) {
		//DB -1페이지당 16개씩
		int endNum = Integer.parseInt(pg)*16;
		int startNum = endNum-15;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("main_codename", main_codename);
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
						
		List<ItemDTO> list = itemDAO.getInfoList(map);
		
		//페이징 처리
		int totalA = itemDAO.getTotalA(main_codename);
		itemPaging.setCurrentPage(Integer.parseInt(pg));
		itemPaging.setPageBlock(4);
		itemPaging.setPageSize(16);
		itemPaging.setTotalA(totalA);
		itemPaging.makePagingHTML(main_codename);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("itemPaging", itemPaging);
		mav.setViewName("/new/newDisplay");

		return mav;
	}
	
	@RequestMapping(value="getItemList", method=RequestMethod.POST)
	public ModelAndView getItemList() {
		
		List<ItemDTO> list = itemDAO.getItemList();
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
}
