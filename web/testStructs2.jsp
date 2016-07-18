<%--
  Created by IntelliJ IDEA.
  User: HAPPY
  Date: 07/07/2016
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Test structs</title>
</head>
<body>

<s:if test="argumentEntityList.size() > 0">
  <table border="1px" cellpadding="8px">
    <tr>
      <th>Id</th>
      <th>Topic</th>
    </tr>
    <s:iterator value="argumentEntityList" status="userStatus">
      <tr>
        <td><s:property value="aid" /></td>
        <td><s:property value="topic" /></td>
      </tr>
    </s:iterator>
  </table>
</s:if>

</body>
</html>
