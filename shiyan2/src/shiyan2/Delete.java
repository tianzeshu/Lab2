package shiyan2;

import java.sql.*;

import com.opensymphony.xwork2.ActionSupport;

public class Delete extends ActionSupport {

	private String Delete;
	public String getDelete() {
		return Delete;
	}

	public void setDelete(String Delete) {
		this.Delete = Delete;
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
		stmt.execute("delete from book where ISBN="+'"' + Delete + '"');
		return SUCCESS;
	}
}