package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.UserDAO;
import biz.user.UserVO;
import controller.Controller;

public class LoginController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		
		UserDAO dao = new UserDAO();
		UserVO user = dao.getUser(vo);
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			session.removeAttribute("error"); // 세션에서 오류 메시지 제거
			return "/homepage.jsp";
		} else if(id != null && password != null){
			HttpSession req = request.getSession();
			request.setAttribute("error", "아이디(로그인 전용 아이디) 또는 비밀번호를 잘못 입력했습니다."+ "<br>" +"입력하신 내용을 다시 확인해주세요.");
			return "/login.jsp";
		} else
			return "/login.jsp";
		
	}

	
	
}
