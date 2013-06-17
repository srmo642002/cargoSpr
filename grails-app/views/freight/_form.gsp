<%@ page import="cargo.freight.Freight" %>



<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="freight.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${freightInstance?.shipment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'placeOfLoading', 'error')} required">
	<label for="placeOfLoading">
		<g:message code="freight.placeOfLoading.label" default="Place Of Loading" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfLoading" name="placeOfLoading.id" from="${cargo.City.list()}" optionKey="id" required="" value="${freightInstance?.placeOfLoading?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'placeOfDischarge', 'error')} required">
	<label for="placeOfDischarge">
		<g:message code="freight.placeOfDischarge.label" default="Place Of Discharge" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfDischarge" name="placeOfDischarge.id" from="${cargo.City.list()}" optionKey="id" required="" value="${freightInstance?.placeOfDischarge?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'placeOfDelivery', 'error')} required">
	<label for="placeOfDelivery">
		<g:message code="freight.placeOfDelivery.label" default="Place Of Delivery" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfDelivery" name="placeOfDelivery.id" from="${cargo.City.list()}" optionKey="id" required="" value="${freightInstance?.placeOfDelivery?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'placeOfReceipt', 'error')} required">
	<label for="placeOfReceipt">
		<g:message code="freight.placeOfReceipt.label" default="Place Of Receipt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfReceipt" name="placeOfReceipt.id" from="${cargo.City.list()}" optionKey="id" required="" value="${freightInstance?.placeOfReceipt?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'freightPayableAt', 'error')} ">
	<label for="freightPayableAt">
		<g:message code="freight.freightPayableAt.label" default="Freight Payable At" />
		
	</label>
	<g:textField name="freightPayableAt" value="${freightInstance?.freightPayableAt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'placeOfIssue', 'error')} required">
	<label for="placeOfIssue">
		<g:message code="freight.placeOfIssue.label" default="Place Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfIssue" name="placeOfIssue.id" from="${cargo.City.list()}" optionKey="id" required="" value="${freightInstance?.placeOfIssue?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'dateOfIssue', 'error')} required">
	<label for="dateOfIssue">
		<g:message code="freight.dateOfIssue.label" default="Date Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfIssue" precision="day"  value="${freightInstance?.dateOfIssue}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'numberOfBills', 'error')} ">
	<label for="numberOfBills">
		<g:message code="freight.numberOfBills.label" default="Number Of Bills" />
		
	</label>
	<g:field type="number" name="numberOfBills" value="${freightInstance.numberOfBills}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'signedAs', 'error')} ">
	<label for="signedAs">
		<g:message code="freight.signedAs.label" default="Signed As" />
		
	</label>
	<g:select name="signedAs" from="${freightInstance.constraints.signedAs.inList}" value="${freightInstance?.signedAs}" valueMessagePrefix="freight.signedAs" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'freightAction', 'error')} ">
	<label for="freightAction">
		<g:message code="freight.freightAction.label" default="Freight Action" />
		
	</label>
	<g:select name="freightAction" from="${freightInstance.constraints.freightAction.inList}" value="${freightInstance?.freightAction}" valueMessagePrefix="freight.freightAction" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'signature', 'error')} ">
	<label for="signature">
		<g:message code="freight.signature.label" default="Signature" />
		
	</label>
	<g:textArea name="signature" cols="40" rows="5" maxlength="512" value="${freightInstance?.signature}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: freightInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="freight.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cargo.User.list()}" optionKey="id" required="" value="${freightInstance?.user?.id}" class="many-to-one"/>
</div>

