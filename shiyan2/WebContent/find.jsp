<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>find</title>
  <script type="text/javascript">
		function check1(){  
          var nameValue1=window.document.getElementById("name").value;
          if (!nameValue1) // 或者是!nameValue  
          {  
              window.alert("不能为空!");  
              return false;  
          }
          return true;  
      } 
		function check2(){  
	          var nameValue1=window.document.getElementById("ID").value;
	          if (!nameValue1) // 或者是!nameValue  
	          {  
	              window.alert("不能为空!");  
	              return false;  
	          }
	          return true;  
	      } 
    </script> 
</head>
<body>
	<form action="ISBN" onsubmit = "return check1()">
      <label>Please enter the ISBN of book</label><br/>
      <input type="text" name="name"/>
      <input type="submit" value="enter"/>
    </form>
    <form action="author" onsubmit="return check2()">
      <label>Please enter the ID of author</label><br/>
      <input type="text" name="ID"/>
      <input type="submit" value="enter"/>
    </form>
    
</body>
</html>