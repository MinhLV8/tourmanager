package com.doan.controller.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.doan.constant.SystemConstant;
import com.doan.dto.NewDTO;
import com.doan.service.INewCatService;
import com.doan.service.INewService;

@Controller(value = "newsControllerofWeb")
public class NewsController {

	@Autowired
	private INewService newService;
	
	@Autowired
	private INewCatService newCatService;

	@RequestMapping(value = "/bai-viet/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam(value = "page") int page,
			@RequestParam(value = "search", required = false) String search, HttpServletRequest request) {
		NewDTO model = new NewDTO();
		model.setPage(page);
		model.setLimit(SystemConstant.LIMIT);
		model.setOffset((page - 1) * SystemConstant.LIMIT);
		ModelAndView mav = new ModelAndView("web/news/list");
		Pageable pageable = new PageRequest(page - 1, SystemConstant.LIMIT);
		if (search != null) {
			model.setListResult(newService.findByTitle(search, pageable));
		} else {
			model.setListResult(newService.findAll(pageable));
		}
		model.setTotalItem(newService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		mav.addObject("model", model);
		return mav;
	}

	@RequestMapping(value = "/bai-viet/chi-tiet", method = RequestMethod.GET)
	public ModelAndView editNews(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("web/news/detail");
		NewDTO model = new NewDTO();
		model = newService.findById(id);
		mav.addObject("modelCat", newCatService.findAll());
		mav.addObject("model", model);
		return mav;
	}
}
