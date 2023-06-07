package controller.book;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.book.BookDAO;
import biz.book.BookVO;
import controller.Controller;

public class BookSearchController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("total");

        BookVO vo = new BookVO();
        vo.setName(name);
        vo.setWriter(name);
        vo.setPublisher(name);

        BookDAO dao = new BookDAO();
        List<String> nameResults = dao.searchName(vo);
        List<String> writerResults = dao.searchWriter(vo);
        List<String> publisherResults = dao.searchPublisher(vo);

        request.setAttribute("name", nameResults);
        request.setAttribute("writer", writerResults);
        request.setAttribute("publisher", publisherResults);

        return "/totalSearch.jsp";
    }
}
