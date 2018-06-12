package semi.travelready.model.vo;

public class GuideBookDown {
	private int guideNo;
	private String guideName;
	private String guideBookImagePath;
	private String guidePDFPath;
	private String fileSize;
	private String guideBookName;
	public String getGuideBookName() {
		return guideBookName;
	}
	public void setGuideBookName(String guideBookName) {
		this.guideBookName = guideBookName;
	}
	public int getGuideNo() {
		return guideNo;
	}
	public void setGuideNo(int guideNo) {
		this.guideNo = guideNo;
	}
	public String getGuideName() {
		return guideName;
	}
	public void setGuideName(String guideName) {
		this.guideName = guideName;
	}
	public String getGuideBookImagePath() {
		return guideBookImagePath;
	}
	public void setGuideBookImagePath(String guideBookImagePath) {
		this.guideBookImagePath = guideBookImagePath;
	}
	public String getGuidePDFPath() {
		return guidePDFPath;
	}
	public void setGuidePDFPath(String guidePDFPath) {
		this.guidePDFPath = guidePDFPath;
	}
	public String getFileSize() {
		return fileSize;
	}
	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}
}
