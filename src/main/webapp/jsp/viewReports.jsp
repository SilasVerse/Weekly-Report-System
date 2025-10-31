<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>View Reports</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <style>
    .table-responsive { margin-top: 20px; }
    .status-submitted { color: #31708f; }
    .status-approved { color: #3c763d; }
    .status-rejected { color: #a94442; }
  </style>
</head>
<body>
<div class="container">
  <div class="page-header">
    <h3>All Weekly Reports</h3>
    <a href="addReport.action" class="btn btn-success">Add New Report</a>
    <a href="dashboard.action" class="btn btn-default">Back to Dashboard</a>
  </div>
  
  <s:actionmessage/>
  <s:actionerror/>
  
  <div class="table-responsive">
    <table class="table table-bordered table-striped table-hover">
      <thead>
        <tr class="info">
          <th>ID</th>
          <th>User ID</th>
          <th>Week Period</th>
          <th>Summary</th>
          <th>Status</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <s:if test="reports != null && !reports.isEmpty()">
          <s:iterator value="reports">
            <tr>
              <td><s:property value="id"/></td>
              <td><s:property value="userId"/></td>
              <td>
                <s:property value="weekStart"/> 
                <br/><small>to</small><br/>
                <s:property value="weekEnd"/>
              </td>
              <td>
                <strong><s:property value="summary"/></strong>
                <s:if test="accomplishments != null && !accomplishments.isEmpty()">
                  <br/><small><s:property value="accomplishments"/></small>
                </s:if>
              </td>
              <td>
                <span class="status-<s:property value="status"/>">
                  <s:property value="status"/>
                </span>
              </td>
              <td>
                <div class="btn-group btn-group-xs">
                  <button class="btn btn-default">View</button>
                  <button class="btn btn-default">Edit</button>
                </div>
              </td>
            </tr>
          </s:iterator>
        </s:if>
        <s:else>
          <tr>
            <td colspan="6" class="text-center text-muted">
              <em>No reports found. <a href="addReport.action">Create the first report</a></em>
            </td>
          </tr>
        </s:else>
      </tbody>
    </table>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>