
<%@ page import="cargo.Driver" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'driver.label', default: 'Driver')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-driver" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-driver" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list driver">
			
				<g:if test="${driverInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="driver.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${driverInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.family}">
				<li class="fieldcontain">
					<span id="family-label" class="property-label"><g:message code="driver.family.label" default="Family" /></span>
					
						<span class="property-value" aria-labelledby="family-label"><g:fieldValue bean="${driverInstance}" field="family"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.fatherName}">
				<li class="fieldcontain">
					<span id="fatherName-label" class="property-label"><g:message code="driver.fatherName.label" default="Father Name" /></span>
					
						<span class="property-value" aria-labelledby="fatherName-label"><g:fieldValue bean="${driverInstance}" field="fatherName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.idNumber}">
				<li class="fieldcontain">
					<span id="idNumber-label" class="property-label"><g:message code="driver.idNumber.label" default="Id Number" /></span>
					
						<span class="property-value" aria-labelledby="idNumber-label"><g:fieldValue bean="${driverInstance}" field="idNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="driver.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${driverInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.placeOfBirth}">
				<li class="fieldcontain">
					<span id="placeOfBirth-label" class="property-label"><g:message code="driver.placeOfBirth.label" default="Place Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="placeOfBirth-label"><g:fieldValue bean="${driverInstance}" field="placeOfBirth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="driver.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${driverInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.homeTel}">
				<li class="fieldcontain">
					<span id="homeTel-label" class="property-label"><g:message code="driver.homeTel.label" default="Home Tel" /></span>
					
						<span class="property-value" aria-labelledby="homeTel-label"><g:fieldValue bean="${driverInstance}" field="homeTel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="driver.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${driverInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.passportNumber}">
				<li class="fieldcontain">
					<span id="passportNumber-label" class="property-label"><g:message code="driver.passportNumber.label" default="Passport Number" /></span>
					
						<span class="property-value" aria-labelledby="passportNumber-label"><g:fieldValue bean="${driverInstance}" field="passportNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.passportDateOfIssure}">
				<li class="fieldcontain">
					<span id="passportDateOfIssure-label" class="property-label"><g:message code="driver.passportDateOfIssure.label" default="Passport Date Of Issure" /></span>
					
						<span class="property-value" aria-labelledby="passportDateOfIssure-label"><g:formatDate date="${driverInstance?.passportDateOfIssure}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.passportValidity}">
				<li class="fieldcontain">
					<span id="passportValidity-label" class="property-label"><g:message code="driver.passportValidity.label" default="Passport Validity" /></span>
					
						<span class="property-value" aria-labelledby="passportValidity-label"><g:formatDate date="${driverInstance?.passportValidity}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.exitPermissionNumber}">
				<li class="fieldcontain">
					<span id="exitPermissionNumber-label" class="property-label"><g:message code="driver.exitPermissionNumber.label" default="Exit Permission Number" /></span>
					
						<span class="property-value" aria-labelledby="exitPermissionNumber-label"><g:fieldValue bean="${driverInstance}" field="exitPermissionNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.exitPermissionDateOfIssue}">
				<li class="fieldcontain">
					<span id="exitPermissionDateOfIssue-label" class="property-label"><g:message code="driver.exitPermissionDateOfIssue.label" default="Exit Permission Date Of Issue" /></span>
					
						<span class="property-value" aria-labelledby="exitPermissionDateOfIssue-label"><g:formatDate date="${driverInstance?.exitPermissionDateOfIssue}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${driverInstance?.exitPermissionValidity}">
				<li class="fieldcontain">
					<span id="exitPermissionValidity-label" class="property-label"><g:message code="driver.exitPermissionValidity.label" default="Exit Permission Validity" /></span>
					
						<span class="property-value" aria-labelledby="exitPermissionValidity-label"><g:formatDate date="${driverInstance?.exitPermissionValidity}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${driverInstance?.id}" />
					<g:link class="edit" action="edit" id="${driverInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
