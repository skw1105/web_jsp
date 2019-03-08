package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Member;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chapter05/10_joinForm.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member member = map(request);
		System.out.println(member);
		
		// 회원 가입을 위한 유효성 검사, 실패로 가정
	}
	
	private Member map(HttpServletRequest request) {
		
		Member member = new Member();
		member.setUserId(request.getParameter("userId"));
		member.setPassword(request.getParameter("password"));
		member.setName(request.getParameter("name"));
		member.setEmail(request.getParameter("email"));
		member.setPhone(request.getParameter("phone"));
		member.setGender(request.getParameter("gender"));
		
		return member;
	}

}







