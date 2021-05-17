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
import com.doan.dto.UserDTO;
import com.doan.service.IUserService;
import com.doan.util.MessageUtil;

@Controller(value = "userControllerofAdmin")
public class UserController {

	@Autowired
	private IUserService userService;

	@Autowired
	private MessageUtil messageUtil;

	@RequestMapping(value = "quantri/nguoi-dung/danh-sach", method = RequestMethod.GET)
	public ModelAndView showList(@RequestParam(value = "page") int page, @RequestParam(value = "search", required = false) String search,
			HttpServletRequest request) {
		UserDTO model = new UserDTO();
		model.setPage(page);
		model.setLimit(SystemConstant.LIMIT);
		model.setOffset((page - 1) * SystemConstant.LIMIT);
		ModelAndView mav = new ModelAndView("admin/user/list");
		Pageable pageable = new PageRequest(page - 1, SystemConstant.LIMIT);
		if (search != null) {
			model.setListResult(userService.findByUserName(search, pageable));
		} else {
			model.setListResult(userService.findAll(pageable));
		}
		model.setTotalItem(userService.findAll(pageable).size());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("model", model);
		return mav;
	}

	@RequestMapping(value = "quantri/nguoi-dung/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNewCat(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/user/edit");
		UserDTO model = new UserDTO();
		if (id != null) {
			model = userService.findById(id);
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
