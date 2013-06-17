<%@ page import="cargo.freight.RoadFreight" %>



<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="roadFreight.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${roadFreightInstance?.shipment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'placeOfLoading', 'error')} required">
	<label for="placeOfLoading">
		<g:message code="roadFreight.placeOfLoading.label" default="Place Of Loading" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfLoading" name="placeOfLoading.id" from="${cargo.City.list()}" optionKey="id" required="" value="${roadFreightInstance?.placeOfLoading?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'placeOfDischarge', 'error')} required">
	<label for="placeOfDischarge">
		<g:message code="roadFreight.placeOfDischarge.label" default="Place Of Discharge" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfDischarge" name="placeOfDischarge.id" from="${cargo.City.list()}" optionKey="id" required="" value="${roadFreightInstance?.placeOfDischarge?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'placeOfDelivery', 'error')} required">
	<label for="placeOfDelivery">
		<g:message code="roadFreight.placeOfDelivery.label" default="Place Of Delivery" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfDelivery" name="placeOfDelivery.id" from="${cargo.City.list()}" optionKey="id" required="" value="${roadFreightInstance?.placeOfDelivery?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'placeOfReceipt', 'error')} required">
	<label for="placeOfReceipt">
		<g:message code="roadFreight.placeOfReceipt.label" default="Place Of Receipt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfReceipt" name="placeOfReceipt.id" from="${cargo.City.list()}" optionKey="id" required="" value="${roadFreightInstance?.placeOfReceipt?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'freightPayableAt', 'error')} ">
	<label for="freightPayableAt">
		<g:message code="roadFreight.freightPayableAt.label" default="Freight Payable At" />
		
	</label>
	<g:textField name="freightPayableAt" value="${roadFreightInstance?.freightPayableAt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'placeOfIssue', 'error')} required">
	<label for="placeOfIssue">
		<g:message code="roadFreight.placeOfIssue.label" default="Place Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfIssue" name="placeOfIssue.id" from="${cargo.City.list()}" optionKey="id" required="" value="${roadFreightInstance?.placeOfIssue?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'dateOfIssue', 'error')} required">
	<label for="dateOfIssue">
		<g:message code="roadFreight.dateOfIssue.label" default="Date Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfIssue" precision="day"  value="${roadFreightInstance?.dateOfIssue}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'numberOfBills', 'error')} ">
	<label for="numberOfBills">
		<g:message code="roadFreight.numberOfBills.label" default="Number Of Bills" />
		
	</label>
	<g:field type="number" name="numberOfBills" value="${roadFreightInstance.numberOfBills}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'signedAs', 'error')} ">
	<label for="signedAs">
		<g:message code="roadFreight.signedAs.label" default="Signed As" />
		
	</label>
	<g:select name="signedAs" from="${roadFreightInstance.constraints.signedAs.inList}" value="${roadFreightInstance?.signedAs}" valueMessagePrefix="roadFreight.signedAs" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'signature', 'error')} ">
	<label for="signature">
		<g:message code="roadFreight.signature.label" default="Signature" />
		
	</label>
	<g:textArea name="signature" cols="40" rows="5" maxlength="512" value="${roadFreightInstance?.signature}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'CMR', 'error')} ">
	<label for="CMR">
		<g:message code="roadFreight.CMR.label" default="CMR" />
		
	</label>
	<g:textField name="CMR" value="${roadFreightInstance?.CMR}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'totalCollect', 'error')} ">
	<label for="totalCollect">
		<g:message code="roadFreight.totalCollect.label" default="Total Collect" />
		
	</label>
	<g:field type="number" name="totalCollect" step="any" value="${roadFreightInstance.totalCollect}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadFreightInstance, field: 'totalPrepaid', 'error')} ">
	<label for="totalPrepaid">
		<g:message code="roadFreight.totalPrepaid.label" default="Total Prepaid" />
		
	</label>
	<g:field type="number" name="totalPrepaid" step="any" value="${roadFreightInstance.totalPrepaid}"/>
</div>

