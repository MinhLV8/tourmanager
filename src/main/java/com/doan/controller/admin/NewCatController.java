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
import com.doan.dto.NewCatDTO;
import com.doan.service.INewCatService;
import com.doan.util.MessageUtil;

@Controller(value = "newCatControllerofAdmin")
public class NewCatController {

	@Autowired
	private INewCatService newCatService;

	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "quantri/loai-bai-viet/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam("page") int page,
			HttpServletRequest request) {
		NewCatDTO model = new NewCatDTO();
		model.setPage(page);
		model.setLimit(SystemConstant.LIMIT);
		model.setOffset((page - 1) * SystemConstant.LIMIT);
		ModelAndView mav = new ModelAndView("admin/newcat/list");
		Pageable pageable = new PageRequest(page - 1, SystemConstant.LIMIT);
		model.setListResult(newCatService.findAll(pageable));
		model.setTotalItem(newCatService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}

	@RequestMapping(value = "quantri/loai-bai-viet/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNewCat(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/newcat/edit");
		NewCatDTO model = new NewCatDTO();
		if (id != null) {
			model = newCatService.findById(id);
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
