<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>main</title>
  <script type="text/javascript">
      var data;//在实际中的数据可能从数据库查询 
      if('<s:property value="ID" />'!=null)
    	  data = '<s:property value="ID" />';
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
     
      function check1(){  
          var nameValue1=window.document.getElementById("ISBN").value;
          var nameValue2=window.document.getElementById("Title").value;
          var nameValue3=window.document.getElementById("AuthorID").value;
          var nameValue4=window.document.getElementById("Publisher").value;
          var nameValue5=window.document.getElementById("PublishDate").value;
          var nameValue6=window.document.getElementById("Price").value;
          if (nameValue1 == "") // 或者是!nameValue  
          {  
              window.alert("ISBN不能为空!");  
              return false;  
          }
          if (nameValue2 == "") // 或者是!nameValue  
          {  
              window.alert("书名不能为空!");  
              return false;  
          }  
          if (nameValue3 == "") // 或者是!nameValue  
          {  
              window.alert("作者ID不能为空!");  
              return false;  
          }  
          if (nameValue4 == "") // 或者是!nameValue  
          {  
              window.alert("出版商不能为空!");  
              return false;  
          }  
          if (nameValue5 == "") // 或者是!nameValue  
          {  
              window.alert("出版时间不能为空!");  
              return false;  
          }  
          if (nameValue6 == "") // 或者是!nameValue  
          {  
              window.alert("价格不能为空!");  
              return false;  
          }  
          return true;  
      }
      /*
      function check2(){  
          var nameValue1=window.document.getElementById("AuthorID").value;
          var nameValue2=window.document.getElementById("Name").value;
          var nameValue3=window.document.getElementById("Age").value;
          var nameValue4=window.document.getElementById("Country").value;
          if (nameValue1 == "") // 或者是!nameValue  
          {  
              window.alert("作者ID不能为空!");  
              return false;  
          }
          if (nameValue2 == "") // 或者是!nameValue  
          {  
              window.alert("作者名字不能为空!");  
              return false;  
          }  
          if (nameValue3 == "") // 或者是!nameValue  
          {  
              window.alert("作者年龄不能为空!");  
              return false;  
          }  
          if (nameValue4 == "") // 或者是!nameValue  
          {  
              window.alert("作者国籍不能为空!");  
              return false;  
          }  
          return true;  
      } */
      function check3(){  
          var nameValue1=window.document.getElementById("Delete").value;

          if (nameValue1 == "") // 或者是!nameValue  
          {  
              window.alert("不能为空!");  
              return false;  
          }
          return true;  
      } 
    </script>  
 </head>
 
<body >
  <input type="button" name="btnGo" value="查看书籍" onclick="toTable(datInfo.length-1,6,datInfo);"/>
  <br />
  <p id="testTable"></p>
  <form action="delete"onsubmit="return check3()">
      <label>请输入你想删除的书籍的ISBN</label><br/>
      <input type="text" name="Delete"/>
      <input type="submit" value="enter"/>
	</form>
	<form action="addbook" onsubmit="return check1()">
      <label>请输入你想添加的书籍的信息</label><br/>
      <label>ISBN</label><br/>
      <input type="text" name="ISBN"/><br/>
      <label>书名</label><br/>
      <input type="text" name="Title"/><br/>
      <label>作者ID</label><br/>
      <input type="text" name="AuthorID"/><br/>
      <label>出版商</label><br/>
      <input type="text" name="Publisher"/><br/>
      <label>出版时间</label><br/>
      <input type="text" name="PublishDate"/><br/>
      <label>价格</label><br/>
      <input type="text" name="Price"/><br/>
      <input type="submit" value="确认"/><br/>
      <label>(注:插入重复的ISBN书籍会被忽略)</label><br/>
	</form>
	<form action="addauthor" onsubmit="return check2()">
      <label>请输入你想添加的作者的信息</label><br/>
      <label>作者ID</label><br/>
      <input type="text" name="AuthorID"/><br/>
      <label>作者名字</label><br/>
      <input type="text" name="Name"/><br/>
      <label>作者年龄</label><br/>
      <input type="text" name="Age"/><br/>
      <label>作者国籍</label><br/>
      <input type="text" name="Country"/><br/>
      <input type="submit" value="确认"/><br/>
      <label>(注:插入重复ID的作者会被忽略)</label><br/>
	</form>
	<INPUT name="pclog" type="button" value="跳转到查询页面" onClick="location.href='index.jsp'">
</body>
</html>