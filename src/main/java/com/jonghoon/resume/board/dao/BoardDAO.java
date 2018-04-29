package com.jonghoon.resume.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.jonghoon.resume.board.BoardVO;

@Repository("boardDAO")
public class BoardDAO {

	private ConnectionMaker connectionMaker = null;
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// xml 파일로부터 의존 주입 받게 한다.
	public void setConnectoinMaker(ConnectionMaker connectionMaker) {
		this.connectionMaker = connectionMaker;
	}

	// 글 등록(insert)
	public void insert(BoardVO vo) {
		try {
			conn = connectionMaker.makeConnection();
			pstmt = conn.prepareStatement("insert into board(title, content) values (?, ?)");
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// 글 수정(update)
	public void update(BoardVO vo) {

		try {
			conn = connectionMaker.makeConnection();
			pstmt = conn.prepareStatement("update board set title=?, content=? where idx=?");
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getIdx());
			pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}
	}

	// 글 삭제(delete)
	public void delete(BoardVO vo) {
		try {
			conn = connectionMaker.makeConnection();
			pstmt = conn.prepareStatement("delete from board where idx = ?");
			pstmt.setInt(1, vo.getIdx());
			pstmt.executeUpdate(); 
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}
	}
	
	// 글 상세 조회(show)
	public BoardVO show(BoardVO vo) {
		
	}
	// 글 목록 조회(getBoardList)

}
