<%@ page import="cargo.freight.OceanFreight" %>



<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'shipment', 'error')} required">
	<label for="shipment">
		<g:message code="oceanFreight.shipment.label" default="Shipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="shipment" name="shipment.id" from="${cargo.Shipment.list()}" optionKey="id" required="" value="${oceanFreightInstance?.shipment?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'placeOfLoading', 'error')} required">
	<label for="placeOfLoading">
		<g:message code="oceanFreight.placeOfLoading.label" default="Place Of Loading" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfLoading" name="placeOfLoading.id" from="${cargo.City.list()}" optionKey="id" required="" value="${oceanFreightInstance?.placeOfLoading?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'placeOfDischarge', 'error')} required">
	<label for="placeOfDischarge">
		<g:message code="oceanFreight.placeOfDischarge.label" default="Place Of Discharge" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfDischarge" name="placeOfDischarge.id" from="${cargo.City.list()}" optionKey="id" required="" value="${oceanFreightInstance?.placeOfDischarge?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'placeOfDelivery', 'error')} required">
	<label for="placeOfDelivery">
		<g:message code="oceanFreight.placeOfDelivery.label" default="Place Of Delivery" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfDelivery" name="placeOfDelivery.id" from="${cargo.City.list()}" optionKey="id" required="" value="${oceanFreightInstance?.placeOfDelivery?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'placeOfReceipt', 'error')} required">
	<label for="placeOfReceipt">
		<g:message code="oceanFreight.placeOfReceipt.label" default="Place Of Receipt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfReceipt" name="placeOfReceipt.id" from="${cargo.City.list()}" optionKey="id" required="" value="${oceanFreightInstance?.placeOfReceipt?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'freightPayableAt', 'error')} ">
	<label for="freightPayableAt">
		<g:message code="oceanFreight.freightPayableAt.label" default="Freight Payable At" />
		
	</label>
	<g:textField name="freightPayableAt" value="${oceanFreightInstance?.freightPayableAt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'placeOfIssue', 'error')} required">
	<label for="placeOfIssue">
		<g:message code="oceanFreight.placeOfIssue.label" default="Place Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placeOfIssue" name="placeOfIssue.id" from="${cargo.City.list()}" optionKey="id" required="" value="${oceanFreightInstance?.placeOfIssue?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'dateOfIssue', 'error')} required">
	<label for="dateOfIssue">
		<g:message code="oceanFreight.dateOfIssue.label" default="Date Of Issue" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfIssue" precision="day"  value="${oceanFreightInstance?.dateOfIssue}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'numberOfBills', 'error')} ">
	<label for="numberOfBills">
		<g:message code="oceanFreight.numberOfBills.label" default="Number Of Bills" />
		
	</label>
	<g:field type="number" name="numberOfBills" value="${oceanFreightInstance.numberOfBills}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'signedAs', 'error')} ">
	<label for="signedAs">
		<g:message code="oceanFreight.signedAs.label" default="Signed As" />
		
	</label>
	<g:select name="signedAs" from="${oceanFreightInstance.constraints.signedAs.inList}" value="${oceanFreightInstance?.signedAs}" valueMessagePrefix="oceanFreight.signedAs" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'signature', 'error')} ">
	<label for="signature">
		<g:message code="oceanFreight.signature.label" default="Signature" />
		
	</label>
	<g:textArea name="signature" cols="40" rows="5" maxlength="512" value="${oceanFreightInstance?.signature}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'shippingCo', 'error')} ">
	<label for="shippingCo">
		<g:message code="oceanFreight.shippingCo.label" default="Shipping Co" />
		
	</label>
	<g:textField name="shippingCo" value="${oceanFreightInstance?.shippingCo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'MBL', 'error')} ">
	<label for="MBL">
		<g:message code="oceanFreight.MBL.label" default="MBL" />
		
	</label>
	<g:textField name="MBL" value="${oceanFreightInstance?.MBL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'vesselName', 'error')} ">
	<label for="vesselName">
		<g:message code="oceanFreight.vesselName.label" default="Vessel Name" />
		
	</label>
	<g:textField name="vesselName" value="${oceanFreightInstance?.vesselName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'vesselVoyNo', 'error')} required">
	<label for="vesselVoyNo">
		<g:message code="oceanFreight.vesselVoyNo.label" default="Vessel Voy No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="vesselVoyNo" step="any" required="" value="${oceanFreightInstance.vesselVoyNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'totalCollect', 'error')} ">
	<label for="totalCollect">
		<g:message code="oceanFreight.totalCollect.label" default="Total Collect" />
		
	</label>
	<g:field type="number" name="totalCollect" step="any" value="${oceanFreightInstance.totalCollect}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: oceanFreightInstance, field: 'totalPrepaid', 'error')} ">
	<label for="totalPrepaid">
		<g:message code="oceanFreight.totalPrepaid.label" default="Total Prepaid" />
		
	</label>
	<g:field type="number" name="totalPrepaid" step="any" value="${oceanFreightInstance.totalPrepaid}"/>
</div>

