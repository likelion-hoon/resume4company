package com.jonghoon.resume.board;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {
	private int idx; 
	private String title; 
	private String content; 
	private Date date; // 작성날짜 
	private int hit; // 조회수 
}
