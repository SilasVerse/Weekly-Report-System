<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>Manage Users</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <h3>Users</h3>
  <s:action name="manageUsers" />
  <table class="table table-striped">
    <thead><tr><th>ID</th><th>Username</th><th>Full Name</th><th>Role</th></tr></thead>
    <tbody>
      <s:iterator value="users">
        <tr>
          <td><s:property value="id"/></td>
          <td><s:property value="username"/></td>
          <td><s:property value="fullName"/></td>
          <td><s:property value="role"/></td>
        </tr>
      </s:iterator>
    </tbody>
  </table>
  <p><a href="../dashboard.action">Back to Dashboard</a></p>
</div>
</body>
</html>
