package semi.travelready.model.vo;

import java.sql.Timestamp;

public class SeoulImageFile {
	private int imageN0;
	private String imageName;
	private String afterImageName;
	private String imagePath;
	private Timestamp imageUploadTime;
	private long imageFileSize;
	private String title;
	private String imageViewPath;
	
	
	public String getImageViewPath() {
		return imageViewPath;
	}
	public void setImageViewPath(String imageViewPath) {
		this.imageViewPath = imageViewPath;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getImageN0() {
		return imageN0;
	}
	public void setImageN0(int imageN0) {
		this.imageN0 = imageN0;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getAfterImageName() {
		return afterImageName;
	}
	public void setAfterImageName(String afterImageName) {
		this.afterImageName = afterImageName;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public Timestamp getImageUploadTime() {
		return imageUploadTime;
	}
	public void setImageUploadTime(Timestamp imageUploadTime) {
		this.imageUploadTime = imageUploadTime;
	}
	public long getImageFileSize() {
		return imageFileSize;
	}
	public void setImageFileSize(long imageFileSize) {
		this.imageFileSize = imageFileSize;
	}
	
	
	
}
