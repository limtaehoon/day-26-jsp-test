package com.librarytest.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.librarytest.model.BookDTO;
import com.librarytest.model.LibraryDTOImpl;

/**
 * Servlet implementation class BooklistAction
 */
@WebServlet("/library/booklist")
public class BooklistAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BooklistAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		LibraryDTOImpl dao = LibraryDTOImpl.getInstance();
		String bfield = request.getParameter("bfield")==null?"":request.getParameter("bfield");
		String bword = request.getParameter("bword")==null?"":request.getParameter("bword");
		ArrayList<BookDTO> arr =null;
		arr =dao.booksearch(bfield,bword);
		int bcount = dao.bookCount(bfield,bword);
		request.setAttribute("book", arr);
		request.setAttribute("bcount", bcount);
		
		RequestDispatcher rd =request.getRequestDispatcher("booklistresult.jsp" );
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}