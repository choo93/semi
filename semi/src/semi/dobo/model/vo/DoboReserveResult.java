package semi.dobo.model.vo;

public class DoboReserveResult {
	private int result;
	private int noUserReserveNo;
	
	public DoboReserveResult() {
		super();
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public int getNoUserReserveNo() {
		return noUserReserveNo;
	}
	public void setNoUserReserveNo(int noUserReserveNo) {
		this.noUserReserveNo = noUserReserveNo;
	}
	@Override
	public String toString() {
		return "result=" + result + ", noUserReserveNo=" + noUserReserveNo;
	}
	
	
}
