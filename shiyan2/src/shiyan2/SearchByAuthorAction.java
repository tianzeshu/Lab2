package shiyan2;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;

public class SearchByAuthorAction extends ActionSupport {
	private String ID;
	private String AuthorID;
	private String Name;
	private String Age;
	private String Country;
	private String Allbook;
	
	public String getAllbook() {
		return Allbook;
	}

	public void setAllbook(String Allbook) {
		this.Allbook = Allbook;
	}
	
	public String getID() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
	}
	
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
		String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_tianzeshu?useUnicode=true&characterEncoding=utf8&useSSL=true"; //数据库ip地址、端口号、数据库名称
		String user = "mjx3jx32zo"; //用户名
		String psw = "4w2kmy025jjj3zh5lijym4kwykwlzkj4k3w1z2xj"; //密码
		conn = DriverManager.getConnection(url, user, psw); //建立连接
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from book where AuthorID = '" + ID + "'");
		while (rs.next()) {
			Allbook += rs.getString("ISBN")+",";
			Allbook += rs.getString("Title")+",";
			Allbook += rs.getString("AuthorID")+",";
			Allbook += rs.getString("Publisher")+",";
			Allbook += rs.getString("PublishDate")+",";
			Allbook += rs.getString("Price")+";";
			}
		if(Allbook!=null)
			Allbook = Allbook.substring(4);
		rs = stmt.executeQuery("select * from author where AuthorID =" +'"' + ID + '"');
		while (rs.next()) {
			AuthorID = rs.getString("AuthorID");
			Name = rs.getString("Name");
			Age = rs.getString("Age");
			Country = rs.getString("Country");
			}
		
		return SUCCESS;
	}
}