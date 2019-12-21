package DFK;

public class resReview {
   	private int ID;
   	private String resName;
   	private String author;
   	private String menu;
   	private String title;
   	private String date;
   	private int score;
   	private String describe;
   	private int good;
   	
   	public resReview(int ID, String author, String menu, String title, String date, int score, String describe, int good) {
   		this.ID=ID;
   		this.author=author;
   		this.menu=menu;
   		this.title=title;
   		this.date=date;
   		this.score=score;
   		this.describe=describe;
   		this.good=good;
   	}
   	resReview(){}
	public int getID() {
		return ID;
	}
	public void setID(int ID) {
		this.ID = ID;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public int getGood() {
		return good;
	}
	public void setGood(int good) {
		this.good = good;
	}
   
}