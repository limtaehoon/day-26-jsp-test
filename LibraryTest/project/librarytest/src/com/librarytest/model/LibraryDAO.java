package com.librarytest.model;

import java.util.ArrayList;



public interface LibraryDAO {
	

	//ȸ���߰�
	public void	libraryinsert(LibraryDTO library);	
	//ȸ����ü����
	public ArrayList<LibraryDTO> libraryList();
	//�˻� ��ü����
	public ArrayList<LibraryDTO> librarySearch(String field, String word);
	//����-�˻�x
	public int libraryCount();
	//����-�˻�
	public int libraryCount(String field, String word);
	
		
	
}
