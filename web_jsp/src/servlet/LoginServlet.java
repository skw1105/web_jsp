package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */ // 포워드 방식
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("\n\n== LoginServlet doGet() 진입 ==\n\n");
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("10_loginForm.jsp");
		// 이 경로는 서버가 해석하는 경로임. 서버는 루트(context path)가 어딘지 알고 있으므로 그 이후의 경로만 써주면 된다.
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */ // 리다이렉트 방식
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// POST
		// 요청했다가 응답 받으면 연결이 끊김
		// 따라서 리다이렉트 페이지에 일반적으로 데이터 값을 넘길 수 없다.
		// 그래서 URL을 통해 데이터를 넘긴다.
		// POST로 성공했을 때는 리다이렉트로 하는게 원칙
		// 새로고침을 했을 때의 문제: 게시글 등록의 경우 forward로 하면 다시 등록됨
		// sendRedirect에서는 URL에 request못보냄(request scope)때문에
		
		System.out.println("\n\n=========== LoginServlet doPost() 진입 ===========\\n\\n");
		
		//doGet(request, response);
		String id = "pinksung";
		String pwd = "1234";
		String name = "성윤정";
		
		String target = request.getParameter("target");
		HttpSession session = request.getSession();
		
		if (id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))) {
			// 리다이렉트할 때는 브라우저가 보는 것임. 브라우저가 해석하는 경로이므로 context path까지 적어줘야한다.
			
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			
			if (target.isEmpty()) {
				System.out.println("\n\n=========== target.isEmpty() true ===========\\n\\n");
				response.sendRedirect("10_main.jsp"); //실패하면 원래 페이지로 가는듯
			} else {
				System.out.println("\n\n=========== target.isEmpty() false ===========\\n\\n");
				response.sendRedirect(target);
			}
			System.out.println("\n\n=========== 로그인 성공 ===========\\n\\n");
		} else {
			System.out.println("\n\n=========== 로그인 실패 ===========\\n\\n");
			
			request.setAttribute("target", target);
			request.setAttribute("error", "아이디또는 비밀번호가 일치하지 않습니다.");
			doGet(request, response);
		}
	}

}
