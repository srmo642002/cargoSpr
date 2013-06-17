
<%@ page import="cargo.DocumentType" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'documentType.label', default: 'DocumentType')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-documentType" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-documentType" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list documentType">
			
				<g:if test="${documentTypeInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="documentType.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${documentTypeInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentTypeInstance?.persianTitle}">
				<li class="fieldcontain">
					<span id="persianTitle-label" class="property-label"><g:message code="documentType.persianTitle.label" default="Persian Title" /></span>
					
						<span class="property-value" aria-labelledby="persianTitle-label"><g:fieldValue bean="${documentTypeInstance}" field="persianTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentTypeInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="documentType.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${documentTypeInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentTypeInstance?.critical}">
				<li class="fieldcontain">
					<span id="critical-label" class="property-label"><g:message code="documentType.critical.label" default="Critical" /></span>
					
						<span class="property-value" aria-labelledby="critical-label"><g:formatBoolean boolean="${documentTypeInstance?.critical}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentTypeInstance?.bytes}">
				<li class="fieldcontain">
					<span id="bytes-label" class="property-label"><g:message code="documentType.bytes.label" default="Bytes" /></span>
                    <g:link action="getDocument" id="${documentTypeInstance?.id}">download</g:link>
					
				</li>
				</g:if>
			
				<g:if test="${documentTypeInstance?.shipment}">
				<li class="fieldcontain">
					<span id="shipment-label" class="property-label"><g:message code="documentType.shipment.label" default="Shipment" /></span>
					
						<span class="property-value" aria-labelledby="shipment-label"><g:link controller="shipment" action="show" id="${documentTypeInstance?.shipment?.id}">${documentTypeInstance?.shipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${documentTypeInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="documentType.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${documentTypeInstance?.user?.id}">${documentTypeInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${documentTypeInstance?.id}" />
					<g:link class="edit" action="edit" id="${documentTypeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
