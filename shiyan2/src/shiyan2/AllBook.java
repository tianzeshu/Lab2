package shiyan2;

import java.sql.*;

import com.opensymphony.xwork2.ActionSupport;
//hello!!!!
public class AllBook extends ActionSupport {
	private String ID;
	public String getID() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
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
		rs = stmt.executeQuery("select * from book");
		while (rs.next()) {
			ID += rs.getString("ISBN")+",";
			ID += rs.getString("Title")+",";
			ID += rs.getString("AuthorID")+",";
			ID += rs.getString("Publisher")+",";
			ID += rs.getString("PublishDate")+",";
			ID += rs.getString("Price")+";";
			}
		if(ID!=null)
			ID = ID.substring(4);
		return SUCCESS;
	}
}