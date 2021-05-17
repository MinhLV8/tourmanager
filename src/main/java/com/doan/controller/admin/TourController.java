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
import com.doan.dto.TourDTO;
import com.doan.service.IProvinceService;
import com.doan.service.ITourCatService;
import com.doan.service.ITourService;
import com.doan.util.MessageUtil;

@Controller(value = "tourControllerofAdmin")
public class TourController {

	@Autowired
	private ITourService tourService;

	@Autowired
	private ITourCatService tourCatService;
	@Autowired
	private IProvinceService provinceService;

	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "quantri/tour/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam(value = "page") int page, @RequestParam(value = "search", required = false) String search,
			HttpServletRequest request) {
		TourDTO model = new TourDTO();
		model.setPage(page);
		model.setLimit(SystemConstant.LIMIT);
		model.setOffset((page - 1) * SystemConstant.LIMIT);
		ModelAndView mav = new ModelAndView("admin/tour/list");
		Pageable pageable = new PageRequest(page - 1, SystemConstant.LIMIT);
		if (search != null) {
			model.setListResult(tourService.findByName(search, pageable));
		} else {
			model.setListResult(tourService.findAll(pageable));
		}
		model.setTotalItem(tourService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}

	@RequestMapping(value = "quantri/tour/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNews(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/tour/edit");
		TourDTO model = new TourDTO();
		if (id != null) {
			model = tourService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("modelCat", tourCatService.findAll());
		mav.addObject("modelProvince", provinceService.findAll());
		mav.addObject("model", model);
		return mav;
	}

}
