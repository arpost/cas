<%--
  #%L
  CAS Server
  %%
  Copyright (C) 2016 Emory University
  %%
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
  
       http://www.apache.org/licenses/LICENSE-2.0
  
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  #L%
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/tlds/template.tld" prefix="template" %>

<template:insert template="/templates/cas_main.jsp">
	<template:content name="content">
		<h3>Password Expiration</h3>
		<c:choose>
			<c:when test="${param.firstLogin}">
				<p>Welcome! Please replace the default password with your own below:</p>
			</c:when>
			<c:otherwise>
				<p>Your password has expired. Enter a new one below:</p>
			</c:otherwise>
		</c:choose>

		<form id="passwordExpirationfrm" action="#" method="post" role="form" class="form-horizontal">
			<div class="form-group">
				<label for="oldExpPassword" class="control-label col-sm-3">Old Password</label>
				<div class="col-sm-3">
					<input type="password" name="oldExpPassword" id="oldExpPassword" class="form-control"/>
				</div>
				<span class="col-sm-6 help-inline"></span>                               
			</div>
			<div class="form-group">
				<label for="newExpPassword" class="control-label col-sm-3">New Password</label>
				<div class="col-sm-3">
					<input type="password" name="newExpPassword" id="newExpPassword" class="form-control"/>
				</div>
				<span class="col-sm-6 help-inline"></span>
			</div>
			<div class="form-group">
				<label for="verifyExpPassword" class="control-label col-sm-3">Re-enter New Password</label>
				<div class="col-sm-3">
					<input type="password" name="verifyExpPassword" id="verifyExpPassword" class="form-control"/>
				</div>
				<span class="col-sm-6 help-inline"></span>
			</div>

			<div class="form-group">
				<div class="col-sm-1 col-sm-offset-3 text-center">
					<input type="hidden" name="targetURL" id="targetURL" value="/eureka-webapp/protected/login"/>
					<input type="submit" value="Save" id="saveAcctBtnExp" class="btn btn-primary"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12">
					<div id="passwordChangeComplete"></div>
				</div>
			</div>
		</form>
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.validate.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/eureka.password.js"></script>
		<script>var ctx = "https://localhost:8443/eurekaclinical-user-webapp"</script>
                <script type="text/javascript">
			eureka.password.setup('#passwordExpirationfrm');
		</script>
	</template:content>
</template:insert>
