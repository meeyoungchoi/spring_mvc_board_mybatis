package com.spring.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mvc.repository.IBoardMapper;
import com.spring.mvc.vo.BoardVO;

@Service
public class BoardService implements IBoardService {

	@Autowired
	private IBoardMapper dao;
	
	
	@Override
	public void insert(BoardVO board) {
		dao.insert(board);

	}


	@Override
	public List<BoardVO> getBoardList() {
		return dao.getBoardList();
	}


	@Override
	public BoardVO getContent(int boardNo) {
		return dao.getContent(boardNo);
	}


	@Override
	public void update(BoardVO board) {
		dao.update(board);
		
	}


	@Override
	public void delete(int boardNo) {
		dao.delete(boardNo);
		
	}


//	@Override
//	public List<BoardVO> searchList(String keyword) {
//		return dao.searchList(keyword);
//	}

}
