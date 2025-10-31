<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>Dashboard - Weekly Report System</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <style>
    .panel { min-height: 200px; }
    .btn-dashboard { min-width: 150px; margin: 5px; }
  </style>
</head>
<body>
<div class="container">
  <div class="page-header">
    <h2>Weekly Report System 
      <small>Dashboard</small>
      <a href="logout.action" class="btn btn-warning pull-right">Logout</a>
    </h2>
    <s:if test="#session.user != null">
      <p class="text-muted">Welcome, <strong><s:property value="#session.user.fullName"/></strong> 
        (<s:property value="#session.user.role"/>)</p>
    </s:if>
  </div>
  
  <s:actionmessage/>
  <s:actionerror/>
  
  <div class="row">
    <div class="col-md-6">
      <div class="panel panel-primary">
        <div class="panel-heading">
          <h3 class="panel-title">Report Management</h3>
        </div>
        <div class="panel-body text-center">
          <div class="btn-group-vertical">
            <a href="addReport.action" class="btn btn-success btn-lg btn-dashboard">Add New Report</a>
            <a href="viewReports.action" class="btn btn-info btn-lg btn-dashboard">View All Reports</a>
          </div>
        </div>
      </div>
    </div>
    
    <s:if test="#session.user.role == 'admin'">
    <div class="col-md-6">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3 class="panel-title">Administration</h3>
        </div>
        <div class="panel-body text-center">
          <div class="btn-group-vertical">
            <a href="manageUsers.action" class="btn btn-default btn-lg btn-dashboard">Manage Users</a>
          </div>
        </div>
      </div>
    </div>
    </s:if>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>