<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page language="java" import="java.util.* ,java.awt.*" errorPage="jsps/error.jsp" pageEncoding="UTF-8"%>
<html>
<body>
<table border="1" width="98%" align="center">
<tr>
<th>ISBN</th>
<th>Title</th>
<th>AuthorID</th>
<th>Publisher</th>
<th>PublishDate</th>
<th>Price</th>
</tr>
<tr>
<td align="center" height="30" ><s:property value="ISBN" /></td>
<td align="center" height="30" ><s:property value="Title" /></td>
<td align="center" height="30" ><s:property value="AuthorID" /></td>
<td align="center" height="30" ><s:property value="Publisher" /></td>
<td align="center" height="30" ><s:property value="PublishDate" /></td>
<td align="center" height="30" ><s:property value="Price" /></td>
</tr>
</table>
<INPUT name="pclsog" type="button" value="跳转到查询页面" onClick="location.href='index.jsp'">
</body>
</html>