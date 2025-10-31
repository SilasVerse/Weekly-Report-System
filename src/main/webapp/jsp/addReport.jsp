<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <title>Add Report</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <style>
    .form-container { max-width: 800px; margin: 0 auto; }
  </style>
</head>
<body>
<div class="container">
  <div class="page-header">
    <h3>Add Weekly Report</h3>
    <a href="viewReports.action" class="btn btn-default">Back to Reports</a>
  </div>
  
  <s:actionmessage/>
  <s:actionerror/>
  
  <div class="form-container">
    <s:form action="addReport" theme="simple" cssClass="form-horizontal">
      
      <div class="form-group">
        <label class="col-sm-3 control-label">Week Start Date</label>
        <div class="col-sm-9">
          <s:textfield name="report.weekStart" placeholder="YYYY-MM-DD" cssClass="form-control" required="true"/>
          <span class="help-block">Format: YYYY-MM-DD (e.g., 2024-01-15)</span>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label">Week End Date</label>
        <div class="col-sm-9">
          <s:textfield name="report.weekEnd" placeholder="YYYY-MM-DD" cssClass="form-control" required="true"/>
          <span class="help-block">Format: YYYY-MM-DD (e.g., 2024-01-19)</span>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label">Weekly Summary *</label>
        <div class="col-sm-9">
          <s:textarea name="report.summary" cssClass="form-control" rows="3" placeholder="Enter a brief summary of your week..." required="true"/>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label">Accomplishments</label>
        <div class="col-sm-9">
          <s:textarea name="report.accomplishments" cssClass="form-control" rows="3" placeholder="List your key accomplishments for the week..."/>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label">Next Week's Plan</label>
        <div class="col-sm-9">
          <s:textarea name="report.nextPlan" cssClass="form-control" rows="2" placeholder="What are your plans for next week?"/>
        </div>
      </div>
      
      <div class="form-group">
        <label class="col-sm-3 control-label">Issues/Challenges</label>
        <div class="col-sm-9">
          <s:textarea name="report.issues" cssClass="form-control" rows="2" placeholder="Any issues or challenges faced?"/>
        </div>
      </div>
      
      <div class="form-group">
        <div class="col-sm-offset-3 col-sm-9">
          <button type="submit" class="btn btn-primary">Submit Report</button>
          <a href="viewReports.action" class="btn btn-default">Cancel</a>
        </div>
      </div>
      
    </s:form>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>