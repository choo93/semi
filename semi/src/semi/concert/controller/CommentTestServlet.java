package semi.concert.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import semi.concert.model.service.ConcertService;
import semi.enjoy.model.vo.CommentData;
import semi.enjoy.model.vo.EnjoyComment;

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
		
		/*
		다른 방법
		JSONObject result = new JSONObject();	// JSON 객체 생성
		// JSON 객체는 MAP 형태로 사용 (키,값)
		
		for(int i=0;i<cd.getCommentList().size();i++) {
			result.put("userId"+i, cd.getCommentList().get(i).getUSER_ID());
			result.put("date"+i, cd.getCommentList().get(i).getWrite_Date().toString());
			result.put("content"+i, cd.getCommentList().get(i).getUSER_COMMNET());
		}
		result.put("size", cd.getCommentList().size());
		result.put("pageNavi", cd.getPageNavi());
		
		response.setContentType("application/json");
		// json객체를 전송하려면 타입을 변경해주어야 함
		
		response.setCharacterEncoding("utf-8");	// 인코딩 작업
		response.getWriter().print(result);
		//System.out.println(result.get("userId0"));
		
		response.getWriter().close();
		*/
		
		JSONArray resultArray = new JSONArray();
		
		for(EnjoyComment comment : cd.getCommentList()) {
			JSONObject result = new JSONObject();
			result.put("userId", comment.getUSER_ID());
			result.put("date", comment.getWrite_Date().toString());
			result.put("content", comment.getUSER_COMMNET());
			result.put("navi", cd.getPageNavi());
			
			resultArray.add(result);
		}
		
		
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		response.getWriter().print(resultArray);
		response.getWriter().close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
