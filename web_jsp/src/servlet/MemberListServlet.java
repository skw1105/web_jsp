package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Member;
import domain.PageInfo;
import service.MemberService;
import service.MemberServiceImpl;
import util.ParseUtil;

/**
 * Servlet implementation class MemberListServlet
 */
@WebServlet("/member/list")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberService service;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberListServlet() {
        super();
        service = MemberServiceImpl.getInstance();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
//		int page = 1;
//		String strPage = request.getParameter("page");
//		if (strPage != null) {
//			Integer.parseInt(strPage);
//		}
		
//		String strPage = request.getParameter("page");
//		int page = (strPage == null) ? 1 : Integer.parseInt(strPage);
//		System.out.println("page: " + page);
		
		int page = ParseUtil.parseInt(request.getParameter("page"));
		
		PageInfo<Member> pageInfo = service.getPage(page);
		
		request.setAttribute("pageInfo", pageInfo);
		//request.setAttribute("memberList", pageInfo.getList());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/member/list.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
