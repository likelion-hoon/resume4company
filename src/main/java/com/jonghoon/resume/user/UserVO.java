package com.jonghoon.resume.user;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class UserVO {
	
	private String id; 
	private String password; 
	
	public UserVO() {}
}
