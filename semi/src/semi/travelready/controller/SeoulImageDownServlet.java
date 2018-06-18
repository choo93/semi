package semi.travelready.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi.travelready.model.service.SeoulImageService;
import semi.travelready.model.vo.SeoulImageFile;

/**
 * Servlet implementation class SeoulImageDownServlet
 */
@WebServlet(name = "SeoulImageDown", urlPatterns = { "/seoulImageDown" })
public class SeoulImageDownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulImageDownServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int imageNo=Integer.parseInt(request.getParameter("imageNo"));
		
		SeoulImageFile sif=new SeoulImageService().imageDown(imageNo);
		
		if(sif!=null)
		{
			File file=new File(sif.getImagePath());		
			
			String encFileName=new String(sif.getImageName().getBytes(),"iso-8859-1");
		
			response.setContentType("application/octet-stream");
			response.setContentLengthLong(file.length());
			response.setHeader("Content-Disposition", "attachment;filename="+encFileName);
			
		
			FileInputStream fileIn=new FileInputStream(file);
		
			ServletOutputStream out=response.getOutputStream();
			
			byte[] outputByte=new byte[4096];
			
			while(fileIn.read(outputByte,0,4096)!=-1) {
				out.write(outputByte,0,4096);
			}
			fileIn.close();
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
