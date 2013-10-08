<%@ page import="cargo.SeaCostEstimation" %>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'rateDate', 'error')} required">
	<label for="rateDate">
		<g:message code="seaCostEstimation.rateDate.label" default="Rate Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="rateDate" precision="day"  value="${seaCostEstimationInstance?.rateDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'portOfLoading', 'error')} required">
	<label for="portOfLoading">
		<g:message code="seaCostEstimation.portOfLoading.label" default="Port Of Loading" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="portOfLoading" name="portOfLoading.id" from="${cargo.City.list()}" optionKey="id" required="" value="${seaCostEstimationInstance?.portOfLoading?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'portOfDischarge', 'error')} required">
	<label for="portOfDischarge">
		<g:message code="seaCostEstimation.portOfDischarge.label" default="Port Of Discharge" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="portOfDischarge" name="portOfDischarge.id" from="${cargo.City.list()}" optionKey="id" required="" value="${seaCostEstimationInstance?.portOfDischarge?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'container', 'error')} ">
	<label for="container">
		<g:message code="seaCostEstimation.container.label" default="Container" />
		
	</label>
	<g:checkBox name="container" value="${seaCostEstimationInstance?.container}" />
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'containers', 'error')} ">
	<label for="containers">
		<g:message code="seaCostEstimation.containers.label" default="" />
		
	</label>
	<g:select name="containers" from="${cargo.ContainerSeaBulkEstimation.list()}" multiple="multiple" optionKey="id" size="5" value="${seaCostEstimationInstance?.containers*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'bulk', 'error')} ">
	<label for="bulk">
		<g:message code="seaCostEstimation.bulk.label" default="Bulk" />
		
	</label>
	<g:checkBox name="bulk" value="${seaCostEstimationInstance?.bulk}" />
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'weight', 'error')} ">
	<label for="weight">
		<g:message code="seaCostEstimation.weight.label" default="Weight" />
		
	</label>
	<g:field type="number" name="weight" step="any" value="${seaCostEstimationInstance.weight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'measurment', 'error')} ">
	<label for="measurment">
		<g:message code="seaCostEstimation.measurment.label" default="Measurment" />
		
	</label>
	<g:field type="number" name="measurment" step="any" value="${seaCostEstimationInstance.measurment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'freightTon', 'error')} ">
	<label for="freightTon">
		<g:message code="seaCostEstimation.freightTon.label" default="Freight Ton" />
		
	</label>
	<g:field type="number" name="freightTon" step="any" value="${seaCostEstimationInstance.freightTon}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'rate', 'error')} required">
	<label for="rate">
		<g:message code="seaCostEstimation.rate.label" default="Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rate" step="any" required="" value="${seaCostEstimationInstance.rate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'currency', 'error')} ">
	<label for="currency">
		<g:message code="seaCostEstimation.currency.label" default="Currency" />
		
	</label>
	<g:select name="currency" from="${seaCostEstimationInstance.constraints.currency.inList}" value="${seaCostEstimationInstance?.currency}" valueMessagePrefix="seaCostEstimation.currency" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'day', 'error')} ">
	<label for="day">
		<g:message code="seaCostEstimation.day.label" default="Day" />
		
	</label>
	<g:field type="number" name="day"  value="${seaCostEstimationInstance.day}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'route', 'error')}">
	<label for="route" id="route">
		<g:message code="seaCostEstimation.route.label" default="Route" />
		
	</label>
	<g:textField name="route" value="${seaCostEstimationInstance?.route}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="seaCostEstimation.remark.label" default="Remark" />
		
	</label>
	<g:textArea name="remark" cols="40" rows="5" maxlength="5000" value="${seaCostEstimationInstance?.remark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'additionals', 'error')} ">
	<label for="additionals">
		<g:message code="seaCostEstimation.additionals.label" default="additionals" />
		
	</label>
	<g:textField name="additionals" value="${seaCostEstimationInstance?.additionals}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: seaCostEstimationInstance, field: 'deprecated', 'error')} ">
	<label for="deprecated">
		<g:message code="seaCostEstimation.deprecated.label" default="Deprecated" />
		
	</label>
	<g:checkBox name="deprecated" value="${seaCostEstimationInstance?.deprecated}" />
</div>

