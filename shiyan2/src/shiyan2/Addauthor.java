package shiyan2;

import java.sql.*;
import com.opensymphony.xwork2.ActionSupport;
//hello
public class Addauthor extends ActionSupport {
	private String AuthorID;
	private String Name;
	private String Age;
	private String Country;

	public String getAuthorID() {
		return AuthorID;
	}

	public void setAuthorID(String AuthorID) {
		this.AuthorID = AuthorID;
	}
	
	public String getName() {
		return Name;
	}

	public void setName(String Name) {
		this.Name = Name;
	}
	
	public String getAge() {
		return Age;
	}

	public void setAge(String Age) {
		this.Age = Age;
	}
	
	public String getCountry() {
		return Country;
	}

	public void setCountry(String Country) {
		this.Country = Country;
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
		String exe  = "INSERT IGNORE INTO author (AuthorID,Name,Age,Country) VALUES ("+'"'+AuthorID+'"'+","+'"'+Name+'"'+","+'"'+Age+'"'+","+'"'+Country+'"'+")";
		stmt.executeUpdate(exe);
		return SUCCESS;
	}
}