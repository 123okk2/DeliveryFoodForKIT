package DFK;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.UUID;

import DFK.resReview;

public class dao {
	// 알아서 쿼리문 만드셈
	String url = "jdbc:mysql://localhost:3306/dfk?serverTimezone=Asia/Seoul&characterEncoding=utf8";
	String id = "root";
	String pwd = "3652";
	Connection conn = null;
	Statement stmt = null;

	private void openDB() throws SQLException {

		conn = DriverManager.getConnection(url, id, pwd); // 각자 MySQL의

		stmt = conn.createStatement();

		System.out.println("접속 성공");

	}

	public void closeDB() throws SQLException {

		conn.close();

	}

	public int loginCheck(String id, String pw) {
		String PW = ""; // db에서 꺼낸 비밀번호를 담을 변수
		int x = -1;

		try {
			openDB();
			// 쿼리 - 먼저 입력된 아이디로 DB에서 비밀번호를 조회한다.
			ResultSet rs = stmt.executeQuery("select * from user_info where ID='" + id + "'");
			if (rs.next()) // 입려된 아이디에 해당하는 비번 있을경우
			{
				PW = rs.getString("PW"); // 비번을 변수에 넣는다.

				if (PW.equals(pw)) {
					x = 1; // 넘겨받은 비번과 꺼내온 비번 비교. 같으면 인증성공
				} else {
					x = 0; // DB의 비밀번호와 입력받은 비밀번호 다름, 인증실패
				}
			} else {
				x = -1; // 해당 아이디가 없을 경우
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}

	public void regUser(String id, String pw, String tell) {
		try {
			openDB();
			// 입력된 정보 DB에 등록
			stmt.executeUpdate("insert into user_info values('" + id + "','" + pw + "','" + tell + "');");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void regReview(String resName, String author, String menu, String title, int score, String describe) {
		try {
			String date = "2019-06-21";
			int good = 0;
			int ID = 1;

			openDB();
			ResultSet rs = stmt.executeQuery("select ID from res_review order by ID desc limit 1"); // DB에서 맨마지막 ID값 가져옴
			if (rs.next()) {
				ID = rs.getInt("ID") + 1; // DB의 마지막 ID값에서 +1 해준값을 ID로 설정
			}

			// 입력된 정보 DB에 등록
			stmt.executeUpdate("insert into res_review (ID, author, menu, title, date, score, describee, good, resName) values(" + ID + ",'" + author + "','" + menu + "','" + title
					+ "','" + date + "','" + score + "','" + describe + "','" + good + "','" + resName + "');");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateReview(int ID,String resName, String author, String menu, String title, int score, String describe) {
		try {


			
			openDB();
			ResultSet rs = stmt
					.executeQuery("select * from res_review where ID = '" + ID + "'");
			if (rs.next()) {
				stmt.executeUpdate("update res_review set menu='" + menu + "', title='" + title + "', score='" + score + "', describee='" + describe + "'where ID= '" + ID +"'");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public int delReview(int ID) {
		int x=0;
		try {
			openDB();
			ResultSet rs = stmt.executeQuery("select * from res_review where ID='" + ID + "'");
			if (rs.next()) // 입려된 아이디에 해당하는 글이 있을경우
			{
				stmt.executeUpdate("delete from res_review where ID = '"+ID+"';");
				x = 1;
			} 
			else {
				x = -1; // 해당 아이디가 없을 경우
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
	
	public void regReply(int ID, String resName, String author, String reply) {
		try {
			String date = "2019-06-21";
			int reviewID = 1;

			openDB();
			ResultSet rs = stmt.executeQuery("select reviewID from reply_review order by reviewID desc limit 1");
			if (rs.next()) {
				reviewID = rs.getInt("reviewID") + 1; // DB의 마지막 ID값에서 +1 해준값을 ID로 설정
			}
			// 입력된 정보 DB에 등록
			stmt.executeUpdate("insert into reply_review values('" + ID + "','" + author +  "','" + reviewID + "','"
					+ reply + "','" + date + "','" + resName +"');");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void updateReply(int reviewID,String reply) {
		try {
			openDB();
			ResultSet rs = stmt
					.executeQuery("select * from reply_review where reviewID = '" + reviewID + "'");
			if (rs.next()) {
				stmt.executeUpdate("update reply_review set reply='" + reply + "'where reviewID= '" + reviewID +"'");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public int delReply(int reviewID) {
		int x=0;
		try {
			openDB();
			ResultSet rs = stmt.executeQuery("select * from reply_review where reviewID='" + reviewID + "'");
			if (rs.next()) // 입려된 아이디에 해당하는 글이 있을경우
			{
				x = 1;
				stmt.executeUpdate("delete from reply_review where reviewID = '"+reviewID+"';");
			} 
			else {
				x = -1; // 해당 아이디가 없을 경우
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
	public ArrayList<resReview> getList(String resName) {
		ArrayList<resReview> ar = new ArrayList<resReview>();

		try {
			openDB();
			ResultSet rs = stmt.executeQuery("select * from res_review where resName= '" + resName + "'");
			int i = 0;
			while (rs.next()) {
				ar.add(new resReview());
				ar.get(i).setID(rs.getInt("ID"));
				ar.get(i).setAuthor(rs.getString("author"));
				ar.get(i).setMenu(rs.getString("menu"));
				ar.get(i).setTitle(rs.getString("title"));
				ar.get(i).setDate(rs.getString("date"));
				ar.get(i).setScore(rs.getInt("score"));
				ar.get(i).setDescribe(rs.getString("describee"));
				ar.get(i).setGood(rs.getInt("good"));
				i++;
			}
			closeDB();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ar;
	}

	public ArrayList<resReview> getList(String resName, String search) {
		ArrayList<resReview> ar = new ArrayList<resReview>();

		try {
			openDB();
			ResultSet rs = stmt.executeQuery(
					"select * from res_review where resName= '" + resName + "' AND title= '" + search + "'");
			int i = 0;
			while (rs.next()) {
				ar.add(new resReview());
				ar.get(i).setID(rs.getInt("ID"));
				ar.get(i).setAuthor(rs.getString("author"));
				ar.get(i).setMenu(rs.getString("menu"));
				ar.get(i).setTitle(rs.getString("title"));
				ar.get(i).setDate(rs.getString("date"));
				ar.get(i).setScore(rs.getInt("score"));
				ar.get(i).setDescribe(rs.getString("describee"));
				ar.get(i).setGood(rs.getInt("good"));
				i++;
			}
			closeDB();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return ar;
	}

	public int getVisit() {
		int visit = 0;
		try {
			openDB();
			ResultSet rs = stmt.executeQuery("select * from visit");

			if (rs.next()) {
				visit = rs.getInt("visitor");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return visit;
	}
	
	public double getScore(String resName) {
		double score = 0;
		double i=0;
		try {
			openDB();
			ResultSet rs = stmt.executeQuery("select score from res_review where resName='" +resName+"'");

			while (rs.next()) {
				score = rs.getInt("score")+score;
				i++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		score = score/i;
		return score;
	}

	public void setVisit() {
		int visit = 0;
		try {
			openDB();

			ResultSet rs = stmt.executeQuery("select * from visit");
			if (rs.next()) {
				visit = rs.getInt("visitor") + 1;
				stmt.executeUpdate("update visit set visitor='" + visit + "';");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public resReview getResReview(int ID, String resName) {
		int id = 0, score = 0, good = 0;
		String author = "", menu = "", title = "", date = "", describe = "";
		try {
			openDB();
			ResultSet rs = stmt
					.executeQuery("select * from res_review where resName= '" + resName + "' AND ID= '" + ID + "'");

			if (rs.next()) {
				id = rs.getInt("ID");
				author = rs.getString("author");
				menu = rs.getString("menu");
				title = rs.getString("title");
				date = rs.getString("date");
				score = rs.getInt("score");
				describe = rs.getString("describee");
				good = rs.getInt("good");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		resReview r = new resReview(id, author, menu, title, date, score, describe, good);
		return r;
	}

	public ArrayList<replyReview> getReplyList(int id) {
		ArrayList<replyReview> rr = new ArrayList<replyReview>();

		// rr.add(new replyReview(0, "이민우", 1, "씨맹은 최고의 돼지입니다.", "2019-01-01"));
		// rr.add(new replyReview(1, "이민우", 1, "씨맹이 최고예요.", "2019-01-02"));
		// rr.add(new replyReview(2, "이민우", 0, "ㅋ", "2019-01-03"));
		try {
			openDB();
			ResultSet rs = stmt.executeQuery("select * from reply_review where ID= '" + id + "'");
			int i = 0;
			while (rs.next()) {
				rr.add(new replyReview());
				rr.get(i).setID(rs.getInt("ID"));
				rr.get(i).setAuthor(rs.getString("author"));
				rr.get(i).setReviewID(rs.getInt("reviewID"));
				rr.get(i).setReply(rs.getString("reply"));
				rr.get(i).setDate(rs.getString("date"));
				rr.get(i).setResName(rs.getString("resName"));
				i++;
			}
			closeDB();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rr;
	}

	public void increseGood(int reviewID) {
		// 저 reviewID랑 일치하는 게시물 찾아서 수천수 올려
	}

	public replyReview getReplyReview(int ID) {
		int id = 0, reviewID = 0;
		String author = "", reply = "", resName = "", date="";
		try {
			openDB();
			ResultSet rs = stmt
					.executeQuery("select * from reply_review where ID= '" + ID + "'");

			if (rs.next()) {
				id = rs.getInt("ID");
				author = rs.getString("author");
				reviewID = rs.getInt("reviewID");
				reply = rs.getString("reply");
				reply = rs.getString("reply");
				resName = rs.getString("resName");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		replyReview r = new replyReview(ID, author, reviewID, reply, date, resName);
		return r;
	}
}
