package com.librarytest.model;

import java.util.ArrayList;



public interface LibraryDAO {
	

	//회원추가
	public void	libraryinsert(LibraryDTO library);	
	//회원전체보기
	public ArrayList<LibraryDTO> libraryList();
	//검색 전체보기
	public ArrayList<LibraryDTO> librarySearch(String field, String word);
	//갯수-검색x
	public int libraryCount();
	//갯수-검색
	public int libraryCount(String field, String word);
	
		
	
}
