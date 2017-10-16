<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>author</title>
  <script type="text/javascript">
      var data = '<s:property value="Allbook" />';//在实际中的数据可能从数据库查询 
      var datInfo = data.split(";");//分隔一次，变成一个一维数组
      function onmouse(row){
        row.bgColor = "#F5DEB3";//改变选中的那一行的背景色
      }
      
      function outmouse(row){
          row.bgColor = "#FFFFFF";//改变选中的那一行的背景色
       }
      
      function toTable(rowCounts,colCounts,datInfo){
        var textHTML = '<table cellpadding="0" cellspacing="0" border="1" width="98%">';
        textHTML+='<tr align="center"><th align="center">ISBN</th><th align="center">Title</th><th>AuthorID</th><th>Publisher</th><th>PublishDate</th><th>Price</th></tr>';
        for(var i=0; i<rowCounts; i++){
            textHTML += '<tr align="center" height="30" onmouseover="onmouse(this)" onmouseout="outmouse(this)">';//为每一行添加点击事件
            for(var j=0; j<colCounts; j++){
              textHTML += "<td>" + (datInfo[i].split(","))[j] + "</td>";
            }
        }
        textHTML += "</tr></table>";
        document.getElementById("testTable").innerHTML = textHTML;
      }
 </script>
 </head>
 
<body>
<table border="1" width="98%" align="center">
 
<tr>
<th>AuthorID</th>
<th>Name</th>
<th>Age</th>
<th>Country</th>
</tr>
<tr>
<td align="center" height="30" ><s:property value="AuthorID" /></td>
<td align="center" height="30" ><s:property value="Name" /></td>
<td align="center" height="30" ><s:property value="Age" /></td>
<td align="center" height="30" ><s:property value="Country" /></td>
</tr>
</table>
<input type="button" name="kk" value="查看该作者的全部书籍" onclick="toTable(datInfo.length-1,6,datInfo);"/>
<br />
<p id="testTable"></p>
<INPUT name="pclossg" type="button" value="跳转到查询页面" onClick="location.href='index.jsp'">
</body>
</html>