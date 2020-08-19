package com.librarytest.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.librarytest.model.LibraryDAO;
import com.librarytest.model.LibraryDTO;
import com.librarytest.model.LibraryDTOImpl;

/**
 * Servlet implementation class LibraryInsertAction
 */
@WebServlet("/library/insert.do")
public class LibraryInsertAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LibraryInsertAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	RequestDispatcher rd = request.getRequestDispatcher("insert.jsp");
	rd.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		LibraryDTOImpl dtoimpl = LibraryDTOImpl.getInstance();
		LibraryDTO library = new LibraryDTO();
		library.setAdmin(Integer.parseInt(request.getParameter("admin")));
		library.setName(request.getParameter("name"));
		library.setUserid(request.getParameter("userid"));
		library.setPassword(request.getParameter("password"));
		library.setTell(request.getParameter("tell"));
		library.setAddr(request.getParameter("addr"));
	
		dtoimpl.libraryinsert(library);
		response.sendRedirect("login.jsp");
	}
	}
		
			


