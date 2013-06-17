<%@ page import="cargo.cargoItem.RailCargoItem" %>



<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'wagonType', 'error')} ">
	<label for="wagonType">
		<g:message code="railCargoItem.wagonType.label" default="Wagon Type" />
		
	</label>
	<g:select name="wagonType" from="${railCargoItemInstance.constraints.wagonType.inList}" value="${railCargoItemInstance?.wagonType}" valueMessagePrefix="railCargoItem.wagonType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'wagonNum', 'error')} required">
	<label for="wagonNum">
		<g:message code="railCargoItem.wagonNum.label" default="Wagon Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="wagonNum" step="any" required="" value="${railCargoItemInstance.wagonNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'wagonStatus', 'error')} ">
	<label for="wagonStatus">
		<g:message code="railCargoItem.wagonStatus.label" default="Wagon Status" />
		
	</label>
	<g:select name="wagonStatus" from="${railCargoItemInstance.constraints.wagonStatus.inList}" value="${railCargoItemInstance?.wagonStatus}" valueMessagePrefix="railCargoItem.wagonStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'loadingDate', 'error')} required">
	<label for="loadingDate">
		<g:message code="railCargoItem.loadingDate.label" default="Loading Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="loadingDate" precision="day"  value="${railCargoItemInstance?.loadingDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'etaDate', 'error')} required">
	<label for="etaDate">
		<g:message code="railCargoItem.etaDate.label" default="Eta Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="etaDate" precision="day"  value="${railCargoItemInstance?.etaDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'arrivalDate', 'error')} required">
	<label for="arrivalDate">
		<g:message code="railCargoItem.arrivalDate.label" default="Arrival Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="arrivalDate" precision="day"  value="${railCargoItemInstance?.arrivalDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'deliveryOrderDate', 'error')} required">
	<label for="deliveryOrderDate">
		<g:message code="railCargoItem.deliveryOrderDate.label" default="Delivery Order Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="deliveryOrderDate" precision="day"  value="${railCargoItemInstance?.deliveryOrderDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'cargoItem', 'error')} required">
	<label for="cargoItem">
		<g:message code="railCargoItem.cargoItem.label" default="Cargo Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cargoItem" name="cargoItem.id" from="${cargo.cargoItem.CargoItem.list()}" optionKey="id" required="" value="${railCargoItemInstance?.cargoItem?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: railCargoItemInstance, field: 'railFreight', 'error')} required">
	<label for="railFreight">
		<g:message code="railCargoItem.railFreight.label" default="Rail Freight" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="railFreight" name="railFreight.id" from="${cargo.freight.RailFreight.list()}" optionKey="id" required="" value="${railCargoItemInstance?.railFreight?.id}" class="many-to-one"/>
</div>

