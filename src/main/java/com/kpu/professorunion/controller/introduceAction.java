package com.kpu.professorunion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class introduceAction {

	@RequestMapping(value="law.nhn")
	public ModelAndView law(@RequestParam(value="boardName")String boardName) {
		ModelAndView mv = new ModelAndView("/introduce/law");
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value="declaration.nhn")
	public ModelAndView declaration(@RequestParam(value="boardName")String boardName) {
		ModelAndView mv = new ModelAndView("/introduce/declaration");
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value="symbol.nhn")
	public ModelAndView symbol(@RequestParam(value="boardName")String boardName) {
		ModelAndView mv = new ModelAndView("/introduce/symbol");
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value="group.nhn")
	public ModelAndView group(@RequestParam(value="boardName")String boardName) {
		ModelAndView mv = new ModelAndView("/introduce/group");
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value="executives.nhn")
	public ModelAndView executives(@RequestParam(value="boardName")String boardName) {
		ModelAndView mv = new ModelAndView("/introduce/executives");
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value="map.nhn")
	public ModelAndView map(@RequestParam(value="boardName")String boardName) {
		ModelAndView mv = new ModelAndView("/introduce/map");
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value="propel.nhn")
	public ModelAndView propel(@RequestParam(value="boardName")String boardName) {
		ModelAndView mv = new ModelAndView("/introduce/propel");
		mv.addObject("boardName",boardName);
		return mv;
	}

	@RequestMapping(value="doctrine.nhn")
	public ModelAndView doctrine(@RequestParam(value="boardName")String boardName) {
		ModelAndView mv = new ModelAndView("/introduce/propel");
		mv.addObject("boardName",boardName);
		return mv;
	}
	
}
