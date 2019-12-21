package DFK;

public class replyReview {
	private int ID;
	private String resName;
	private String author;
	private int reviewID;
	private String reply;
   	private String date;
	
	replyReview(int ID, String author, int reviewID, String reply, String date, String resName) {
		this.ID = ID;
		this.resName = resName;
		this.author = author;
		this.reviewID = reviewID;
		this.reply = reply;
		this.date = date;
	}
	replyReview(){}
	
	public int getID() {
		return ID;
	}

	public void setID(int ID) {
		this.ID = ID;
	}
	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getReviewID() {
		return reviewID;
	}

	public void setReviewID(int reviewID) {
		this.reviewID = reviewID;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	

}
