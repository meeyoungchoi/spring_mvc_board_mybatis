package com.spring.mvc.repository;

import java.util.List;

import com.spring.mvc.vo.BoardVO;

public interface IBoardMapper {
	void insert(BoardVO board);
	
	
	List<BoardVO> getBoardList();
	
	BoardVO getContent(int boardNo);
	
	void update(BoardVO board);
	
	void delete(int boardNo);
	
	//List<BoardVO> searchList(String keyword);
	
	
}
