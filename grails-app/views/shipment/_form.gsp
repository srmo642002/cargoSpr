<%@ page import="cargo.Shipment" %>



<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'referenceCode', 'error')} required">
	<label for="referenceCode">
		<g:message code="shipment.referenceCode.label" default="Reference Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="referenceCode" required="" value="${shipmentInstance?.referenceCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'dateIndex', 'error')} ">
	<label for="dateIndex">
		<g:message code="shipment.dateIndex.label" default="Date Index" />
		
	</label>
	<g:textField name="dateIndex" value="${shipmentInstance?.dateIndex}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="shipment.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${shipmentInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'blWb', 'error')} ">
	<label for="blWb">
		<g:message code="shipment.blWb.label" default="" />
		
	</label>
	<g:textField name="blWb" value="${shipmentInstance?.blWb}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="shipment.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1024" value="${shipmentInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'originCnt', 'error')} required">
	<label for="originCnt">
		<g:message code="shipment.originCnt.label" default="Origin Cnt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="originCnt" name="originCnt.id" from="${cargo.Country.list()}" optionKey="id" required="" value="${shipmentInstance?.originCnt?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'originCty', 'error')} required">
	<label for="originCty">
		<g:message code="shipment.originCty.label" default="Origin Cty" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="originCty" name="originCty.id" from="${cargo.City.list()}" optionKey="id" required="" value="${shipmentInstance?.originCty?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'destinationCnt', 'error')} required">
	<label for="destinationCnt">
		<g:message code="shipment.destinationCnt.label" default="Destination Cnt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destinationCnt" name="destinationCnt.id" from="${cargo.Country.list()}" optionKey="id" required="" value="${shipmentInstance?.destinationCnt?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'destinationCty', 'error')} required">
	<label for="destinationCty">
		<g:message code="shipment.destinationCty.label" default="Destination Cty" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destinationCty" name="destinationCty.id" from="${cargo.City.list()}" optionKey="id" required="" value="${shipmentInstance?.destinationCty?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'freightCharge', 'error')} ">
	<label for="freightCharge">
		<g:message code="shipment.freightCharge.label" default="Freight Charge" />
		
	</label>
	<g:select name="freightCharge" from="${shipmentInstance.constraints.freightCharge.inList}" value="${shipmentInstance?.freightCharge}" valueMessagePrefix="shipment.freightCharge" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'charge', 'error')} ">
	<label for="charge">
		<g:message code="shipment.charge.label" default="Charge" />
		
	</label>
	<g:field type="number" name="charge" step="any" value="${shipmentInstance.charge}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'currency', 'error')} ">
	<label for="currency">
		<g:message code="shipment.currency.label" default="Currency" />
		
	</label>
	<g:select name="currency" from="${shipmentInstance.constraints.currency.inList}" value="${shipmentInstance?.currency}" valueMessagePrefix="shipment.currency" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'shipper', 'error')} ">
	<label for="shipper">
		<g:message code="shipment.shipper.label" default="Shipper" />
		
	</label>
	<g:select id="shipper" name="shipper.id" from="${cargo.ForwardingReference.list()}" optionKey="id" value="${shipmentInstance?.shipper?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'consignee', 'error')} ">
	<label for="consignee">
		<g:message code="shipment.consignee.label" default="Consignee" />
		
	</label>
	<g:select id="consignee" name="consignee.id" from="${cargo.ForwardingReference.list()}" optionKey="id" value="${shipmentInstance?.consignee?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'notifyParty', 'error')} ">
	<label for="notifyParty">
		<g:message code="shipment.notifyParty.label" default="Notify Party" />
		
	</label>
	<g:select id="notifyParty" name="notifyParty.id" from="${cargo.ForwardingReference.list()}" optionKey="id" value="${shipmentInstance?.notifyParty?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'agent', 'error')} ">
	<label for="agent">
		<g:message code="shipment.agent.label" default="Agent" />
		
	</label>
	<g:select id="agent" name="agent.id" from="${cargo.ForwardingReference.list()}" optionKey="id" value="${shipmentInstance?.agent?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'cargoItems', 'error')} ">
	<label for="cargoItems">
		<g:message code="shipment.cargoItems.label" default="Cargo Items" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${shipmentInstance?.cargoItems?}" var="c">
    <li><g:link controller="cargoItem" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cargoItem" action="create" params="['shipment.id': shipmentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cargoItem.label', default: 'CargoItem')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'frieghts', 'error')} ">
	<label for="frieghts">
		<g:message code="shipment.frieghts.label" default="Frieghts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${shipmentInstance?.frieghts?}" var="f">
    <li><g:link controller="freight" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="freight" action="create" params="['shipment.id': shipmentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'freight.label', default: 'Freight')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: shipmentInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="shipment.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cargo.User.list()}" optionKey="id" required="" value="${shipmentInstance?.user?.id}" class="many-to-one"/>
</div>

