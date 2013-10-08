<%@ page import="cargo.cargoItem.RoadCargoItem" %>



<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'truck', 'error')} ">
	<label for="truck">
		<g:message code="roadCargoItem.truck.label" default="Truck" />
		
	</label>
	<g:select name="truck" from="${roadCargoItemInstance.constraints.truck.inList}" value="${roadCargoItemInstance?.truck}" valueMessagePrefix="roadCargoItem.truck" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'plateNo', 'error')} ">
	<label for="plateNo">
		<g:message code="roadCargoItem.plateNo.label" default="Plate No" />
		
	</label>
	<g:textField name="plateNo" value="${roadCargoItemInstance?.plateNo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'containerType', 'error')} ">
	<label for="containerType">
		<g:message code="roadCargoItem.containerType.label" default="Container Type" />
		
	</label>
	<g:select name="containerType" from="${roadCargoItemInstance.constraints.containerType.inList}" value="${roadCargoItemInstance?.containerType}" valueMessagePrefix="roadCargoItem.containerType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'containerNum', 'error')} ">
	<label for="containerNum">
		<g:message code="roadCargoItem.containerNum.label" default="Container Num" />
		
	</label>
	<g:field type="number" name="containerNum" value="${roadCargoItemInstance.containerNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'ftl', 'error')} ">
	<label for="ftl">
		<g:message code="roadCargoItem.ftl.label" default="Ftl" />
		
	</label>
	<g:checkBox name="ftl" value="${roadCargoItemInstance?.ftl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'ltl', 'error')} ">
	<label for="ltl">
		<g:message code="roadCargoItem.ltl.label" default="Ltl" />
		
	</label>
	<g:checkBox name="ltl" value="${roadCargoItemInstance?.ltl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'border', 'error')} ">
	<label for="border">
		<g:message code="roadCargoItem.border.label" default="Border" />
		
	</label>
	<g:textField name="border" value="${roadCargoItemInstance?.border}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'driver', 'error')} ">
	<label for="driver">
		<g:message code="roadCargoItem.driver.label" default="Driver" />
		
	</label>
	<g:textField name="driver" value="${roadCargoItemInstance?.driver}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'loadingDate', 'error')} required">
	<label for="loadingDate">
		<g:message code="roadCargoItem.loadingDate.label" default="Loading Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="loadingDate" precision="day"  value="${roadCargoItemInstance?.loadingDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'etaDate', 'error')} required">
	<label for="etaDate">
		<g:message code="roadCargoItem.etaDate.label" default="Eta Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="etaDate" precision="day"  value="${roadCargoItemInstance?.etaDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'borderPass', 'error')} ">
	<label for="borderPass">
		<g:message code="roadCargoItem.borderPass.label" default="Border Pass" />
		
	</label>
	<g:datePicker name="borderPass" precision="day"  value="${roadCargoItemInstance?.borderPass}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'arrivalDate', 'error')} ">
	<label for="arrivalDate">
		<g:message code="roadCargoItem.arrivalDate.label" default="Arrival Date" />
		
	</label>
	<g:datePicker name="arrivalDate" precision="day"  value="${roadCargoItemInstance?.arrivalDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'deliveryDate', 'error')} ">
	<label for="deliveryDate">
		<g:message code="roadCargoItem.deliveryDate.label" default="Delivery Date" />
		
	</label>
	<g:datePicker name="deliveryDate" precision="day"  value="${roadCargoItemInstance?.deliveryDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'cargoItem', 'error')} required">
	<label for="cargoItem">
		<g:message code="roadCargoItem.cargoItem.label" default="Cargo Item" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cargoItem" name="cargoItem.id" from="${cargo.cargoItem.CargoItem.list()}" optionKey="id" required="" value="${roadCargoItemInstance?.cargoItem?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'roadFreight', 'error')} required">
	<label for="roadFreight">
		<g:message code="roadCargoItem.roadFreight.label" default="Road Freight" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roadFreight" name="roadFreight.id" from="${cargo.freight.RoadFreight.list()}" optionKey="id" required="" value="${roadCargoItemInstance?.roadFreight?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roadCargoItemInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="roadCargoItem.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${cargo.User.list()}" optionKey="id" required="" value="${roadCargoItemInstance?.user?.id}" class="many-to-one"/>
</div>

