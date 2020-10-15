package com.zhiyou.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@RequestMapping("show")
	public String show(@RequestParam(value="pagenum",defaultValue="1")int pagenum,HttpServletRequest request, HttpServletResponse response){
		PageHelper.startPage(pagenum, 5);
		List<User> list = userService.select();
		request.setAttribute("list",list);
		PageInfo<User> pageInfo = new PageInfo<User>(list,5);
		request.setAttribute("pageInfo", pageInfo);
		return "show";
	}
	@RequestMapping("add")
	public String add(User user,HttpServletRequest request, HttpServletResponse response){
		userService.add(user);
		return "forward:show";
	}
	@RequestMapping("delete")
	public String delete(int id,HttpServletRequest request, HttpServletResponse response){
		userService.delete(id);;
		return "forward:show";
	}
	@RequestMapping("selectById")
	public String selectById(int id,HttpServletRequest request, HttpServletResponse response){
		request.setAttribute("user", userService.selectById(id));
		return "update";
	}
	@RequestMapping("update")
	public String delete(User user,HttpServletRequest request, HttpServletResponse response){
		userService.update(user);;
		return "forward:show";
	}
}
