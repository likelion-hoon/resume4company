package com.jonghoon.resume.board;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;



@Getter
@Setter
@AllArgsConstructor
public class BoardVO {
	private int idx;  		// 글 번호, (auto increment)
	private String title; 	// 글 제목
	private String name;    // 글 작성자 (session에 현재 user의 이메일 값 넣기)
	private String content; // 글 내용
	private int hit; 		// 조회 수  (default 0)
	private int recom;      // 추천 수  (default 0)
	private Date date; 		// 작성날짜 (default 현재날짜 대입)
}
