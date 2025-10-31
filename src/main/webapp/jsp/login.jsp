<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login - Weekly Report System</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link 
    rel="stylesheet" 
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .login-container {
      margin-top: 100px;
    }
    .panel {
      border-radius: 10px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }
    .panel-heading {
      background-color: #337ab7 !important;
      color: #fff !important;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
    }
    .btn-primary {
      background-color: #337ab7;
      border: none;
    }
    .btn-primary:hover {
      background-color: #286090;
    }
    .text-error {
      color: #d9534f;
      margin-top: 10px;
    }
  </style>
</head>
<body>

<div class="container login-container">
  <div class="row">
    <div class="col-md-4 col-md-offset-4">
      <div class="panel panel-default">
        <div class="panel-heading text-center">
          <h3>Weekly Report System</h3>
        </div>
        <div class="panel-body">
          
          <!-- Struts Form -->
          <s:form action="login" method="post" theme="simple">
            <div class="form-group">
              <label for="username">Username</label>
              <s:textfield name="username" id="username" cssClass="form-control" placeholder="Enter username" required="true"/>
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <s:password name="password" id="password" cssClass="form-control" placeholder="Enter password" required="true"/>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Login</button>
          </s:form>
          
          <!-- Display action errors -->
          <s:actionerror cssClass="text-error"/>
          <s:actionmessage cssClass="text-success"/>

        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
