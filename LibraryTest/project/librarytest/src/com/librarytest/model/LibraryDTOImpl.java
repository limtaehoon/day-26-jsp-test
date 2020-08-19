package com.librarytest.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;





public class LibraryDTOImpl implements LibraryDAO {
	//DB연동
	private static LibraryDTOImpl instance = new LibraryDTOImpl();
	public static LibraryDTOImpl getInstance(){
		return instance;
	}
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/board");
		return ds.getConnection();
	}
	//로그인 체크
	public int loginCheck(String userid ,String password) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		int flag =-1;//-1 회원아님, 1:회원, 0:관리자, 2:비밀번호틀림
		
		try {
			con =getConnection();
			String sql = "select * from librarymember where userid ='"+userid+"'";
			
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				if(rs.getString("password").equals(password)) {
					flag = rs.getInt("admin");
				}else {
					flag=2;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection(con, st, rs);
		}
		return flag;
	}
	@Override //회원추가
	public void libraryinsert(LibraryDTO library) {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = getConnection();  
			String sql ="insert into librarymember values(?,?,?,?,?,?)";
			System.out.println(sql);
			ps = con.prepareStatement(sql);
			
			ps.setString(1, library.getName());
			ps.setString(2, library.getUserid());
			ps.setString(3, library.getPassword());
			ps.setString(4, library.getTell());
			ps.setString(5, library.getAddr());
			ps.setInt(6,library.getAdmin());
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection(con, ps);
		}
		
	}
	public void bookinsert(BookDTO book) {
		Connection con =null;
		PreparedStatement ps =null;
		
		try {
			con = getConnection();
			String sql ="insert into book values(?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1,book.getWriter());
			ps.setString(2, book.getSubject());
			ps.setString(3,book.getSince());
			ps.executeUpdate();
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(con, ps);
		}
	}

	@Override//전체보기
	public ArrayList<LibraryDTO> libraryList() {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<LibraryDTO> arr = new ArrayList<>();
		StringBuilder sb = new StringBuilder();
		try {
			con = getConnection();
			String sql ="select * from librarymember";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				LibraryDTO dto = new LibraryDTO();
				dto.setAdmin(rs.getInt("admin"));
				dto.setName(rs.getString("name"));
				dto.setUserid(rs.getString("userid"));
				dto.setPassword(rs.getString("password"));
				dto.setTell(rs.getString("tell"));
				dto.setAddr(rs.getString("addr"));
				arr.add(dto);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection(con, st, rs);
		}
		return arr;
	}
	//book 전체보기
	public ArrayList<BookDTO> booklist(){
		Connection con = null;
		Statement st = null;
		ResultSet rs =null;
		ArrayList<BookDTO> arr =new ArrayList<>();
		StringBuilder bsb = new StringBuilder();
		try {
			con = getConnection();
			String sql ="select * from book";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			while (rs.next()) {
				BookDTO dto = new BookDTO();
				dto.setWriter(rs.getString("writer"));
				dto.setSubject(rs.getString("subject"));
				dto.setSince(rs.getString("since"));
				arr.add(dto);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(con, st, rs);
		}
		return arr;
	}
	@Override//전체보기 검색
		public ArrayList<LibraryDTO> librarySearch(String field, String word) {
			Connection con =null;
			Statement st = null;
			ResultSet rs = null;
			ArrayList<LibraryDTO>arr = new ArrayList<>();
			String sql="";
			try {
				con = getConnection();
				if(word.equals("")) {
					sql = "select * from librarymember";
				}else {
					sql="select * from librarymember where "+field+" like '%"+word+"%'";
				}
				
				System.out.println(sql);
				st = con.createStatement();
				rs = st.executeQuery(sql);
				while (rs.next()) {
					LibraryDTO dto = new LibraryDTO();
					dto.setAdmin(rs.getInt("admin"));
					dto.setName(rs.getString("name"));
					dto.setUserid(rs.getString("userid"));
					dto.setPassword(rs.getString("password"));
					dto.setTell(rs.getString("tell"));
					dto.setAddr(rs.getString("addr"));
					
					arr.add(dto);
					
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				closeConnection(con, st, rs);
			}
			return arr;
		}
	//book 전체보기 검색
	public ArrayList<BookDTO> booksearch(String bfield, String bword){
		Connection con =null;
		Statement st =null;
		ResultSet rs =null;
		ArrayList<BookDTO>arr = new ArrayList<>();
		String sql ="";
		try {
			con =getConnection();
				if(bword.equals("")) {
					sql = "select * from book";
				}else {
					sql ="select * from book where "+bfield+" like '%"+bword+"%'";
				}
				st = con.createStatement();
				rs = st.executeQuery(sql);
				while (rs.next()) {
					BookDTO dto = new BookDTO();
					dto.setWriter(rs.getString("writer"));
					dto.setSubject(rs.getString("subject"));
					dto.setSince(rs.getString("since"));
					
					arr.add(dto);
				
							
				}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(con, st, rs);
		}
		return arr;
	}
	
	
	@Override//개수검색x
	public int libraryCount() {
		Connection con = null;
		Statement st =null;
		ResultSet rs = null;
		int count =0;
		try {
			con = getConnection();
			
			String sql ="select count(*) from librarymember";
			st =con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			closeConnection(con, st, rs);
		}

		return count;
	}
	//book 개수검색x
		public int bookCount() {
			Connection con =null;
			Statement st =null;
			ResultSet rs = null;
			int bcount = 0;
			try {
				con = getConnection();
				String sql = "select count(*) from book";
				st = con.createStatement();
				rs = st.executeQuery(sql);
				if(rs.next()) {
					bcount = rs.getInt(1);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				closeConnection(con, st, rs);
			}
			return bcount;
		}
	@Override//검색개수
	public int libraryCount(String field, String word) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement st =null;
		ResultSet rs =null;
		int count = 0;
		String sql = "";
		
		try {
			con =getConnection();
			if(word.equals("")) {
				 sql = "select count(*) from librarymember";
			}else {
				 sql = "select count(*) from librarymember where "+field +" like '%"+word+"%'";
			}
			
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(con, st, rs);
		}
		return count;
	}
	//book 검색개수
	public int bookCount(String bfield, String bword) {
		Connection con =null;
		Statement st =null;
		ResultSet rs =null;
		int bcount = 0;
		String sql ="";
		
		try {
			con =getConnection();
			if(bword.equals("")) {
				sql = "select count(*) from book";
				
			}else {
				sql = "select count(*) from book where "+bfield +" like '%"+bword+"%'"; 
				
			}
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				bcount = rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			closeConnection(con, st, rs);
		}
		return bcount;
	}

	//닫기
		private void closeConnection(Connection con, PreparedStatement ps) {
			try {
				if(ps!=null) ps.close();
				if(con!=null) con.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		private void closeConnection(Connection con, Statement st, ResultSet rs) {
			try {
				if(rs!=null) rs.close();
				if(st!=null) st.close();
				if(con!=null) con.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
		}
	
		
	

}
