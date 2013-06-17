<%@ page import="cargo.DocumentType" %>



<div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="documentType.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="50" required="" value="${documentTypeInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'persianTitle', 'error')} required">
	<label for="persianTitle">
		<g:message code="documentType.persianTitle.label" default="Persian Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="persianTitle" maxlength="50" required="" value="${documentTypeInstance?.persianTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'fileName', 'error')} ">
	<label for="fileName">
		<g:message code="documentType.fileName.label" default="File Name" />
		
	</label>
	<g:textField name="fileName" value="${documentTypeInstance?.fileName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'critical', 'error')} ">
	<label for="critical">
		<g:message code="documentType.critical.label" default="Critical" />
		
	</label>
	<g:checkBox name="critical" value="${documentTypeInstance?.critical}" />
</div>

<div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'bytes', 'error')} required">
	<label for="bytes">
		<g:message code="documentType.bytes.label" default="Bytes" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="bytes" name="bytes" />
</div>

<div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="documentType.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${documentTypeInstance?.shipment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentTypeInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="documentType.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cargo.User.list()}" optionKey="id" required="" value="${documentTypeInstance?.user?.id}" class="many-to-one"/>
</div>



