
<%@ page import="cargo.User; cargo.Role" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>

				<g:if test="${userInstance?.level}">
				<li class="fieldcontain">
					<span id="level-label" class="property-label"><g:message code="user.level.label" default="Level" /></span>
					
						<span class="property-value" aria-labelledby="level-label"><g:fieldValue bean="${userInstance}" field="level"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.groups}">
				<li class="fieldcontain">
					<span id="groups-label" class="property-label"><g:message code="user.groups.label" default="Groups" /></span>
					
						<span class="property-value" aria-labelledby="groups-label"><g:link controller="userGroup" action="show" id="${userInstance?.groups?.id}">${userInstance?.groups?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="user.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${userInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			</ol>
            <br>
            <p style="font-family: times;color: #00008b;font-size:large;text-align: left">
                Please check the proper roles for current user
            </p>
            <br>
        <sec:ifAnyGranted roles="Admin,Create User,Assign Roles">
			<g:form style="font-size: 18px;font-family: times;text-align: left;border: #FEFEFE;border-style: inset;background-color: #FEFEFE;display: compact" controller="userRole" action="saveUserRoles" >
                <g:hiddenField name="user.id" value="${userInstance?.id}"/>
                <rg:checkBoxList name="rolesId" from="${cargo.Role.findAll()}" optionKey="id" value="${userInstance?.authorities?.collect{it.id}}"/>
                <br>
                <div class= button style="margin-left: 540px;margin-bottom: 10px;font-family: times">
                    <p >
                        <g:submitButton name="AssignRoles" value="Assign Roles"/>
                    </p>
                </div>
			</g:form>
        </sec:ifAnyGranted>
		</div>
	</body>
</html>
