package semi.travelready.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import common.MyFileRenamePolicy;
import semi.travelready.model.service.SeoulImageService;
import semi.travelready.model.vo.SeoulImageFile;

/**
 * Servlet implementation class SeoulImageUploadServlet
 */
@WebServlet(name = "SeoulImageUpload", urlPatterns = { "/seoulImageUpload" })
public class SeoulImageUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeoulImageUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		int FileSizeLimit=1024*1021*5;
		
		String uploadFilePath=getServletContext().getRealPath("/")+"image/travelReady/seoulupload";
		
		String encType="utf-8";
		
		MultipartRequest multi=new MultipartRequest(request,
													uploadFilePath,
													FileSizeLimit,
													encType,
													new MyFileRenamePolicy());
		String title=multi.getParameter("title");
		
		String beforeFileName=multi.getOriginalFileName("upfile");
		String afterFileName=multi.getFilesystemName("upfile");
		
		String fullFilePath=uploadFilePath+"\\"+afterFileName;
		
	
		
		
		File file=new File(fullFilePath);
		long fileSize=file.length();
		
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");
		Timestamp uploadTime=null;
		uploadTime=Timestamp.valueOf(formatter.format(Calendar.getInstance().getTimeInMillis()));
		
		SeoulImageFile sif=new SeoulImageFile();
		sif.setImageName(beforeFileName);
		sif.setAfterImageName(afterFileName);
		sif.setImagePath(fullFilePath);
		sif.setImageFileSize(fileSize);
		sif.setImageUploadTime(uploadTime);
		sif.setTitle(title);
		sif.setImageViewPath("/image/travelReady/seoulupload/"+afterFileName);
		
		int result=new SeoulImageService().imageUpload(sif);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
