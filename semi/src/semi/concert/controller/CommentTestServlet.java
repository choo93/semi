package semi.concert.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import semi.concert.model.service.ConcertService;
import semi.enjoy.model.vo.CommentData;

@WebServlet(name = "CommentTest", urlPatterns = { "/commentTest" })
public class CommentTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CommentTestServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		int indexNo = Integer.parseInt(request.getParameter("indexNo"));
		
		CommentData cd = new ConcertService().getListCommentData(currentPage,indexNo);
		
		JSONObject result = new JSONObject();	// JSON 객체 생성
		// JSON 객체는 MAP 형태로 사용 (키,값)
		
		
			result.put("userId", cd.getCommentList().get(0).getUSER_ID());
			result.put("date", cd.getCommentList().get(0).getWrite_Date());
			result.put("content", cd.getCommentList().get(0).getUSER_COMMNET());
		
		
		result.put("pageNavi", cd.getPageNavi());
		
		response.setContentType("application/json");
		// json객체를 전송하려면 타입을 변경해주어야 함
		
		response.setCharacterEncoding("utf-8");	// 인코딩 작업
		response.getWriter().print(result);
		//System.out.println(result.get("userId0"));
		
		response.getWriter().close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
