package com.jonghoon.resume.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jonghoon.resume.board.dao.BoardDAO;

@Controller
public class BoardController {
	// 글 등록
	@RequestMapping("/insert.do")
	public String insert(BoardVO vo, BoardDAO boardDAO) {
		boardDAO.insert(vo);
		return "getBoardList.do"; // 글을 등록하고 글 목록을 출력해야 한다.
	}

	// 글 수정
	@RequestMapping("/update.do")
	public String update(BoardVO vo, BoardDAO boardDAO) {
		boardDAO.update(vo);
		return "getBoardList.do";
	}

	// 글 삭제
	@RequestMapping("/delete.do")
	public String delete(BoardVO vo, BoardDAO boardDAO) {
		boardDAO.delete(vo);
		return "getBoardList.do";
	}

	// 글 보기
	@RequestMapping("/show.do")
	public String show(BoardVO vo, BoardDAO boardDAO, Model model) {

		model.addAttribute("board", boardDAO.show(vo)); // Model 정보 저장
		return "show.jsp";
	}

	// 글 목록 검색
	@RequestMapping("/board.do")
	public String board(BoardVO vo, BoardDAO boardDAO, Model model) {

		model.addAttribute("boardList", boardDAO.board(vo));
		return "getBoardList.jsp";
	}
}
