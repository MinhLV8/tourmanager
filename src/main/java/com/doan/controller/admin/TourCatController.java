package com.doan.controller.admin;

import java.util.Map;

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
import com.doan.dto.TourCatDTO;
import com.doan.service.ITourCatService;
import com.doan.util.MessageUtil;

@Controller(value = "tourCatControllerofAdmin")
public class TourCatController {
	
	@Autowired
	private ITourCatService tourCatService;

	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "quantri/loai-tour/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page,
			HttpServletRequest request) {
		TourCatDTO model = new TourCatDTO();
		model.setPage(page);
		model.setLimit(SystemConstant.LIMIT);
		model.setOffset((page - 1) * SystemConstant.LIMIT);
		ModelAndView mav = new ModelAndView("admin/tourcat/list");
		Pageable pageable = new PageRequest(page - 1, SystemConstant.LIMIT);
		model.setListResult(tourCatService.findAll(pageable));
		model.setTotalItem(tourCatService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}

	@RequestMapping(value = "quantri/loai-tour/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNewCat(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/tourcat/edit");
		TourCatDTO model = new TourCatDTO();
		if (id != null) {
			model = tourCatService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}
}
