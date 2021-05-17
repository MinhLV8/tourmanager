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
import com.doan.dto.NewDTO;
import com.doan.service.INewCatService;
import com.doan.service.INewService;
import com.doan.util.MessageUtil;

@Controller(value = "newsControllerofAdmin")
public class NewsController {

	@Autowired
	private INewService newService;

	@Autowired
	private INewCatService newCatService;

	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "quantri/bai-viet/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam(value = "page") int page, @RequestParam(value = "search", required = false) String search,
			HttpServletRequest request) {
		NewDTO model = new NewDTO();
		model.setPage(page);
		model.setLimit(SystemConstant.LIMIT);
		model.setOffset((page - 1) * SystemConstant.LIMIT);
		ModelAndView mav = new ModelAndView("admin/news/list");
		Pageable pageable = new PageRequest(page - 1, SystemConstant.LIMIT);
		if (search != null) {
			model.setListResult(newService.findByTitle(search, pageable));
		} else {
			model.setListResult(newService.findAll(pageable));
		}
		model.setTotalItem(newService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}

	@RequestMapping(value = "quantri/bai-viet/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNews(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/news/edit");
		NewDTO model = new NewDTO();
		if (id != null) {
			model = newService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("modelCat", newCatService.findAll());
		mav.addObject("model", model);
		return mav;
	}

}
