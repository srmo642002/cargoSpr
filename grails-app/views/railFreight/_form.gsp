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

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'numberOfBills', 'error')} ">
	<label for="numberOfBills">
		<g:message code="railFreight.numberOfBills.label" default="Number Of Bills" />
		
	</label>
	<g:field type="number" name="numberOfBills" value="${railFreightInstance.numberOfBills}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'signedAs', 'error')} ">
	<label for="signedAs">
		<g:message code="railFreight.signedAs.label" default="Signed As" />
		
	</label>
	<g:select name="signedAs" from="${railFreightInstance.constraints.signedAs.inList}" value="${railFreightInstance?.signedAs}" valueMessagePrefix="railFreight.signedAs" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'freightAction', 'error')} ">
	<label for="freightAction">
		<g:message code="railFreight.freightAction.label" default="" />
		
	</label>
	<g:select name="freightAction" from="${railFreightInstance.constraints.freightAction.inList}" value="${railFreightInstance?.freightAction}" valueMessagePrefix="railFreight.freightAction" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'signature', 'error')} ">
	<label for="signature">
		<g:message code="railFreight.signature.label" default="Signature" />
		
	</label>
	<g:textArea name="signature" cols="40" rows="5" maxlength="512" value="${railFreightInstance?.signature}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'railWayCo', 'error')} ">
	<label for="railWayCo">
		<g:message code="railFreight.railWayCo.label" default="Rail Way Co" />
		
	</label>
	<g:textField name="railWayCo" value="${railFreightInstance?.railWayCo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'sMGSNO', 'error')} required">
	<label for="sMGSNO">
		<g:message code="railFreight.sMGSNO.label" default="SMGSNO" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="sMGSNO" step="any" required="" value="${railFreightInstance.sMGSNO}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'stationCode', 'error')} required">
	<label for="stationCode">
		<g:message code="railFreight.stationCode.label" default="Station Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="stationCode" step="any" required="" value="${railFreightInstance.stationCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'totalCollect', 'error')} ">
	<label for="totalCollect">
		<g:message code="railFreight.totalCollect.label" default="Total Collect" />
		
	</label>
	<g:field type="number" name="totalCollect" step="any" value="${railFreightInstance.totalCollect}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'totalPrepaid', 'error')} ">
	<label for="totalPrepaid">
		<g:message code="railFreight.totalPrepaid.label" default="Total Prepaid" />
		
	</label>
	<g:field type="number" name="totalPrepaid" step="any" value="${railFreightInstance.totalPrepaid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railFreightInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="railFreight.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cargo.User.list()}" optionKey="id" required="" value="${railFreightInstance?.user?.id}" class="many-to-one"/>
</div>

