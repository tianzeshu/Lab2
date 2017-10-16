<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<title>index</title>
</head>
<body>
	<form action="AllBook">
      <input type="submit" value="前往主页面"/>
    </form>
	<form action="author">
      <label>按作者ID寻找作者</label><br/>
      <input type="text" name="ID"/>
      <input type="submit" value="确认"/>
	</form>
	<form action="ISBN">
      <label>按书的ISBN寻找书</label><br/>
      <input type="text" name="ID"/>
      <input type="submit" value="确认"/>
    </form>  
</body>
</html>