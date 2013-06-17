
<%@ page import="cargo.ForwardingReference" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'forwardingReference.label', default: 'ForwardingReference')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-forwardingReference" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-forwardingReference" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list forwardingReference">
			
				<g:if test="${forwardingReferenceInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="forwardingReference.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${forwardingReferenceInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="forwardingReference.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${forwardingReferenceInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="forwardingReference.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${forwardingReferenceInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.fax}">
				<li class="fieldcontain">
					<span id="fax-label" class="property-label"><g:message code="forwardingReference.fax.label" default="Fax" /></span>
					
						<span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${forwardingReferenceInstance}" field="fax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.webSite}">
				<li class="fieldcontain">
					<span id="webSite-label" class="property-label"><g:message code="forwardingReference.webSite.label" default="Web Site" /></span>
					
						<span class="property-value" aria-labelledby="webSite-label"><g:fieldValue bean="${forwardingReferenceInstance}" field="webSite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.contactPerson}">
				<li class="fieldcontain">
					<span id="contactPerson-label" class="property-label"><g:message code="forwardingReference.contactPerson.label" default="Contact Person" /></span>
					
						<span class="property-value" aria-labelledby="contactPerson-label"><g:fieldValue bean="${forwardingReferenceInstance}" field="contactPerson"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.asAShipper}">
				<li class="fieldcontain">
					<span id="asAShipper-label" class="property-label"><g:message code="forwardingReference.asAShipper.label" default="As AS hipper" /></span>
					
						<span class="property-value" aria-labelledby="asAShipper-label"><g:formatBoolean boolean="${forwardingReferenceInstance?.asAShipper}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.asAConsignee}">
				<li class="fieldcontain">
					<span id="asAConsignee-label" class="property-label"><g:message code="forwardingReference.asAConsignee.label" default="As AC onsignee" /></span>
					
						<span class="property-value" aria-labelledby="asAConsignee-label"><g:formatBoolean boolean="${forwardingReferenceInstance?.asAConsignee}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.asANotifyParty}">
				<li class="fieldcontain">
					<span id="asANotifyParty-label" class="property-label"><g:message code="forwardingReference.asANotifyParty.label" default="As AN otify Party" /></span>
					
						<span class="property-value" aria-labelledby="asANotifyParty-label"><g:formatBoolean boolean="${forwardingReferenceInstance?.asANotifyParty}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.asAnAgent}">
				<li class="fieldcontain">
					<span id="asAnAgent-label" class="property-label"><g:message code="forwardingReference.asAnAgent.label" default="As An Agent" /></span>
					
						<span class="property-value" aria-labelledby="asAnAgent-label"><g:formatBoolean boolean="${forwardingReferenceInstance?.asAnAgent}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${forwardingReferenceInstance?.asACarrier}">
				<li class="fieldcontain">
					<span id="asACarrier-label" class="property-label"><g:message code="forwardingReference.asACarrier.label" default="As AC arrier" /></span>
					
						<span class="property-value" aria-labelledby="asACarrier-label"><g:formatBoolean boolean="${forwardingReferenceInstance?.asACarrier}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${forwardingReferenceInstance?.id}" />
					<g:link class="edit" action="edit" id="${forwardingReferenceInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
