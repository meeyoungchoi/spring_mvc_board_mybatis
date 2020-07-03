package com.spring.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.mvc.service.IBoardService;
import com.spring.mvc.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private IBoardService service;
	
	@GetMapping("/write")
	public String write() {
		return "board/write-form";
	}
	
	@PostMapping("/write")
	public String insert(BoardVO board) {
		System.out.println("/board/write: POST");
		System.out.println(board.toString());
		service.insert(board);
		return "redirect:/board/list";
	}
	
	
	@GetMapping("/list")
	public String getArticleList(Model model) {
		model.addAttribute("boards",service.getBoardList());
		return "board/list";
	}
	
	
	@GetMapping("/show")
	public String detail(int boardNo, Model model) {
		System.out.println("/board/show: GET");
		System.out.println("parameter: " + boardNo);
		model.addAttribute("board", service.getContent(boardNo));
		System.out.println(service.getContent(boardNo));
		return "board/show";
	}
	
	
	@GetMapping("/modify")
	public String modify(int boardNo, Model model) {
		System.out.println("/board/modify: GET");
		System.out.println("parameter: " + boardNo);
		model.addAttribute("board", service.getContent(boardNo));
		return "board/update";
	}
	
	
	@PostMapping("/modify")
	public String update(BoardVO board, Model model) {
		System.out.println("/board/update: POST");
		System.out.println(board.toString());
		service.update(board);
		model.addAttribute("boardNo",board.getBoardNo());
		
		return "redirect:/board/show";
	}
	
	@GetMapping("/delete")
	public String delete(int boardNo) {
		System.out.println("/board/delete: GET");
		System.out.println("parameter: " + boardNo);
		service.delete(boardNo);
		return "redirect:/board/list";
	}
	

	
}
