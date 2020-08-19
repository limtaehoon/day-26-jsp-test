package com.librarytest.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.librarytest.model.BookDTO;
import com.librarytest.model.LibraryDTOImpl;

/**
 * Servlet implementation class BookInsertAction
 */
@WebServlet("/library/bookinsert.do")
public class BookInsertAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookInsertAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("bookinsert.jsp");
		rd.forward(request, response);	
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		LibraryDTOImpl dtoimpl = LibraryDTOImpl.getInstance();
		BookDTO book = new BookDTO();
		book.setWriter(request.getParameter("writer"));
		book.setSubject(request.getParameter("subject"));
		book.setSince(request.getParameter("since"));
		dtoimpl.bookinsert(book);
		response.sendRedirect("bookinsert.jsp");
		
		
	}

}
