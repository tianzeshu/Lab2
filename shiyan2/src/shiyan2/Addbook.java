package shiyan2;

import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;

public class Addbook extends ActionSupport {
	private String ISBN, Title, AuthorID, Publisher, PublishDate, Price;
	
	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String ISBN) {
		this.ISBN = ISBN;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String Title) {
		this.Title = Title;
	}
	public String getAuthorID() {
		return AuthorID;
	}

	public void setAuthorID(String AuthorID) {
		this.AuthorID = AuthorID;
	}
	public String getPublisher() {
		return Publisher;
	}

	public void setPublisher(String Publisher) {
		this.Publisher = Publisher;
	}
	public String getPublishDate() {
		return PublishDate;
	}

	public void setPublishDate(String PublishDate) {
		this.PublishDate = PublishDate;
	}
	public String getPrice() {
		return Price;
	}

	public void setPrice(String Price) {
		this.Price = Price;
	}
	
	public String execute() throws Exception{
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_tianzeshu?useUnicode=true&characterEncoding=utf8&useSSL=true"; //���ݿ�ip��ַ���˿ںš����ݿ�����
		String user = "mjx3jx32zo"; //�û���
		String psw = "4w2kmy025jjj3zh5lijym4kwykwlzkj4k3w1z2xj"; //����
		conn = DriverManager.getConnection(url, user, psw); //��������
		stmt = conn.createStatement();
		String exe  = "INSERT IGNORE INTO book (ISBN,Title,AuthorID,Publisher,PublishDate,Price) VALUES ("+'"'+ISBN+'"'+","+'"'+Title+'"'+","+'"'+AuthorID+'"'+","+'"'+Publisher+'"'+","+'"'+PublishDate+'"'+","+'"'+Price+'"'+")";
		stmt.executeUpdate(exe);
		return SUCCESS;
	}
}