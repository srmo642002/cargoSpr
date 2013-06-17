<%@ page import="cargo.freight.RailFreight" %>



<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="railFreight.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${railFreightInstance?.shipment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'placeOfLoading', 'error')} required">
	<label for="placeOfLoading">
		<g:message code="railFreight.placeOfLoading.label" default="Place Of Loading" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfLoading" name="placeOfLoading.id" from="${cargo.City.list()}" optionKey="id" required="" value="${railFreightInstance?.placeOfLoading?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'placeOfDischarge', 'error')} required">
	<label for="placeOfDischarge">
		<g:message code="railFreight.placeOfDischarge.label" default="Place Of Discharge" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfDischarge" name="placeOfDischarge.id" from="${cargo.City.list()}" optionKey="id" required="" value="${railFreightInstance?.placeOfDischarge?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'placeOfDelivery', 'error')} required">
	<label for="placeOfDelivery">
		<g:message code="railFreight.placeOfDelivery.label" default="Place Of Delivery" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfDelivery" name="placeOfDelivery.id" from="${cargo.City.list()}" optionKey="id" required="" value="${railFreightInstance?.placeOfDelivery?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'placeOfReceipt', 'error')} required">
	<label for="placeOfReceipt">
		<g:message code="railFreight.placeOfReceipt.label" default="Place Of Receipt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfReceipt" name="placeOfReceipt.id" from="${cargo.City.list()}" optionKey="id" required="" value="${railFreightInstance?.placeOfReceipt?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'freightPayableAt', 'error')} ">
	<label for="freightPayableAt">
		<g:message code="railFreight.freightPayableAt.label" default="Freight Payable At" />
		
	</label>
	<g:textField name="freightPayableAt" value="${railFreightInstance?.freightPayableAt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'placeOfIssue', 'error')} required">
	<label for="placeOfIssue">
		<g:message code="railFreight.placeOfIssue.label" default="Place Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfIssue" name="placeOfIssue.id" from="${cargo.City.list()}" optionKey="id" required="" value="${railFreightInstance?.placeOfIssue?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'dateOfIssue', 'error')} required">
	<label for="dateOfIssue">
		<g:message code="railFreight.dateOfIssue.label" default="Date Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfIssue" precision="day"  value="${railFreightInstance?.dateOfIssue}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'numberOfBills', 'error')} required">
	<label for="numberOfBills">
		<g:message code="railFreight.numberOfBills.label" default="Number Of Bills" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numberOfBills" required="" value="${railFreightInstance.numberOfBills}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'signature', 'error')} ">
	<label for="signature">
		<g:message code="railFreight.signature.label" default="Signature" />
		
	</label>
	<g:textArea name="signature" cols="40" rows="5" maxlength="512" value="${railFreightInstance?.signature}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'signedAs', 'error')} ">
	<label for="signedAs">
		<g:message code="railFreight.signedAs.label" default="Signed As" />
		
	</label>
	<g:select name="signedAs" from="${railFreightInstance.constraints.signedAs.inList}" value="${railFreightInstance?.signedAs}" valueMessagePrefix="railFreight.signedAs" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'railWayCo', 'error')} ">
	<label for="railWayCo">
		<g:message code="railFreight.railWayCo.label" default="Rail Way Co" />
		
	</label>
	<g:textField name="railWayCo" value="${railFreightInstance?.railWayCo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'SMGSNO', 'error')} required">
	<label for="SMGSNO">
		<g:message code="railFreight.SMGSNO.label" default="SMGSNO" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="SMGSNO" step="any" required="" value="${railFreightInstance.SMGSNO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'stationCode', 'error')} required">
	<label for="stationCode">
		<g:message code="railFreight.stationCode.label" default="Station Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="stationCode" step="any" required="" value="${railFreightInstance.stationCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'cargoItem', 'error')} ">
	<label for="cargoItem">
		<g:message code="railFreight.cargoItem.label" default="Cargo Item" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${railFreightInstance?.cargoItem?}" var="c">
    <li><g:link controller="railCargoItem" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="railCargoItem" action="create" params="['railFreight.id': railFreightInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'railCargoItem.label', default: 'RailCargoItem')])}</g:link>
</li>
</ul>

</div>

