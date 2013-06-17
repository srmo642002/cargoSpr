<%@ page import="cargo.insuranceCertificate.CustomsOperations" %>



<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'operationType', 'error')} ">
	<label for="operationType">
		<g:message code="customsOperations.operationType.label" default="Operation Type" />
		
	</label>
	<g:select name="operationType" from="${customsOperationsInstance.constraints.operationType.inList}" value="${customsOperationsInstance?.operationType}" valueMessagePrefix="customsOperations.operationType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'licenceNum', 'error')} required">
	<label for="licenceNum">
		<g:message code="customsOperations.licenceNum.label" default="Licence Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="licenceNum" required="" value="${customsOperationsInstance.licenceNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'customsDate', 'error')} required">
	<label for="customsDate">
		<g:message code="customsOperations.customsDate.label" default="Customs Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="customsDate" precision="day"  value="${customsOperationsInstance?.customsDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'kutazhNum', 'error')} required">
	<label for="kutazhNum">
		<g:message code="customsOperations.kutazhNum.label" default="Kutazh Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="kutazhNum" required="" value="${customsOperationsInstance.kutazhNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'rowNum', 'error')} required">
	<label for="rowNum">
		<g:message code="customsOperations.rowNum.label" default="Row Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rowNum" required="" value="${customsOperationsInstance.rowNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'origin', 'error')} required">
	<label for="origin">
		<g:message code="customsOperations.origin.label" default="Origin" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="origin" name="origin.id" from="${cargo.City.list()}" optionKey="id" required="" value="${customsOperationsInstance?.origin?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'destination', 'error')} required">
	<label for="destination">
		<g:message code="customsOperations.destination.label" default="Destination" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destination" name="destination.id" from="${cargo.City.list()}" optionKey="id" required="" value="${customsOperationsInstance?.destination?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'oneSheetInsurance', 'error')} ">
	<label for="oneSheetInsurance">
		<g:message code="customsOperations.oneSheetInsurance.label" default="One Sheet Insurance" />
		
	</label>
	<g:checkBox name="oneSheetInsurance" value="${customsOperationsInstance?.oneSheetInsurance}" />
</div>

<div class="fieldcontain ${hasErrors(bean: customsOperationsInstance, field: 'multiSheetInsurance', 'error')} ">
	<label for="multiSheetInsurance">
		<g:message code="customsOperations.multiSheetInsurance.label" default="Multi Sheet Insurance" />
		
	</label>
	<g:checkBox name="multiSheetInsurance" value="${customsOperationsInstance?.multiSheetInsurance}" />
</div>

