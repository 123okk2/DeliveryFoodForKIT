package DFK;

public class userInfo {
	private String ID;
	private String PW;
	private String tell;

	public userInfo(String ID,String PW,String tell) {
		this.ID=ID;
		this.PW=PW;
		this.tell=tell;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPW() {
		return PW;
	}

	public void setPW(String pW) {
		PW = pW;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}
	
}
