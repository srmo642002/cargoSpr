<%@ page import="cargo.CostEstimation" %>



<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'rateDate', 'error')} required">
	<label for="rateDate">
		<g:message code="costEstimation.rateDate.label" default="Rate Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="rateDate" precision="day"  value="${costEstimationInstance?.rateDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'originCnt', 'error')} required">
	<label for="originCnt">
		<g:message code="costEstimation.originCnt.label" default="Origin Cnt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="originCnt" name="originCnt.id" from="${cargo.Country.list()}" optionKey="id" required="" value="${costEstimationInstance?.originCnt?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'originCty', 'error')} required">
	<label for="originCty">
		<g:message code="costEstimation.originCty.label" default="Origin Cty" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="originCty" name="originCty.id" from="${cargo.City.list()}" optionKey="id" required="" value="${costEstimationInstance?.originCty?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'destinationCnt', 'error')} required">
	<label for="destinationCnt">
		<g:message code="costEstimation.destinationCnt.label" default="Destination Cnt" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destinationCnt" name="destinationCnt.id" from="${cargo.Country.list()}" optionKey="id" required="" value="${costEstimationInstance?.destinationCnt?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'destinationCty', 'error')} required">
	<label for="destinationCty">
		<g:message code="costEstimation.destinationCty.label" default="Destination Cty" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="destinationCty" name="destinationCty.id" from="${cargo.City.list()}" optionKey="id" required="" value="${costEstimationInstance?.destinationCty?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'truck', 'error')} ">
	<label for="truck">
		<g:message code="costEstimation.truck.label" default="Truck" />
		
	</label>
	<g:select name="truck" from="${costEstimationInstance.constraints.truck.inList}" value="${costEstimationInstance?.truck}" valueMessagePrefix="costEstimation.truck" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'containerType', 'error')} ">
	<label for="containerType">
		<g:message code="costEstimation.containerType.label" default="Container Type" />
		
	</label>
	<g:select name="containerType" from="${costEstimationInstance.constraints.containerType.inList}" value="${costEstimationInstance?.containerType}" valueMessagePrefix="costEstimation.containerType" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'ftl', 'error')} ">
	<label for="ftl">
		<g:message code="costEstimation.ftl.label" default="Ftl" />
		
	</label>
	<g:checkBox name="ftl" value="${costEstimationInstance?.ftl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'ltl', 'error')} ">
	<label for="ltl">
		<g:message code="costEstimation.ltl.label" default="Ltl" />
		
	</label>
	<g:checkBox name="ltl" value="${costEstimationInstance?.ltl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'rate', 'error')} required">
	<label for="rate">
		<g:message code="costEstimation.rate.label" default="Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rate" step="any" required="" value="${costEstimationInstance.rate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'remark', 'error')} ">
	<label for="remark">
		<g:message code="costEstimation.remark.label" default="Remark" />
		
	</label>
	<g:textArea name="remark" cols="40" rows="5" maxlength="5000" value="${costEstimationInstance?.remark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'deprecated', 'error')} ">
	<label for="deprecated">
		<g:message code="costEstimation.deprecated.label" default="Deprecated" />
		
	</label>
	<g:checkBox name="deprecated" value="${costEstimationInstance?.deprecated}" />
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="costEstimation.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="weight" step="any" required="" value="${costEstimationInstance.weight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'overWeight', 'error')} ">
	<label for="overWeight">
		<g:message code="costEstimation.overWeight.label" default="Over Weight" />
		
	</label>
	<g:field type="number" name="overWeight" step="any" value="${costEstimationInstance.overWeight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'route', 'error')} ">
	<label for="route">
		<g:message code="costEstimation.route.label" default="Route" />
		
	</label>
	<g:textField name="route" value="${costEstimationInstance?.route}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'day', 'error')} ">
	<label for="day">
		<g:message code="costEstimation.day.label" default="Day" />
		
	</label>
	<g:field type="number" name="day" value="${costEstimationInstance.day}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'hour', 'error')} ">
	<label for="hour">
		<g:message code="costEstimation.hour.label" default="Hour" />
		
	</label>
	<g:field type="number" name="hour" value="${costEstimationInstance.hour}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'observation', 'error')} ">
	<label for="observation">
		<g:message code="costEstimation.observation.label" default="Observation" />
		
	</label>
	<g:textArea name="observation" cols="40" rows="5" maxlength="5000" value="${costEstimationInstance?.observation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'currency', 'error')} ">
	<label for="currency">
		<g:message code="costEstimation.currency.label" default="Currency" />
		
	</label>
	<g:textField name="currency" value="${costEstimationInstance?.currency}"/>
</div>

