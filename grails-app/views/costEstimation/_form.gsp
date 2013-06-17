<%@ page import="cargo.CostEstimation" %>



<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'rateDate', 'error')} required">
	<label for="rateDate">
		<g:message code="costEstimation.rateDate.label" default="Rate Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="rateDate" precision="day"  value="${costEstimationInstance?.rateDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'desCountry', 'error')} required">
	<label for="desCountry">
		<g:message code="costEstimation.desCountry.label" default="Des Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="desCountry" name="desCountry.id" from="${cargo.Country.list()}" optionKey="id" required="" value="${costEstimationInstance?.desCountry?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'desCity', 'error')} required">
	<label for="desCity">
		<g:message code="costEstimation.desCity.label" default="Des City" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="desCity" name="desCity.id" from="${cargo.City.list()}" optionKey="id" required="" value="${costEstimationInstance?.desCity?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'containerType', 'error')} ">
	<label for="containerType">
		<g:message code="costEstimation.containerType.label" default="Container Type" />
		
	</label>
	<g:select name="containerType" from="${costEstimationInstance.constraints.containerType.inList}" value="${costEstimationInstance?.containerType}" valueMessagePrefix="costEstimation.containerType" noSelection="['': '']"/>
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

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'weight', 'error')} required">
	<label for="weight">
		<g:message code="costEstimation.weight.label" default="Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="weight" step="any" required="" value="${costEstimationInstance.weight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'overWeight', 'error')} required">
	<label for="overWeight">
		<g:message code="costEstimation.overWeight.label" default="Over Weight" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="overWeight" step="any" required="" value="${costEstimationInstance.overWeight}"/>
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

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'week', 'error')} ">
	<label for="week">
		<g:message code="costEstimation.week.label" default="Week" />
		
	</label>
	<g:field type="number" name="week" value="${costEstimationInstance.week}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'month', 'error')} ">
	<label for="month">
		<g:message code="costEstimation.month.label" default="Month" />
		
	</label>
	<g:field type="number" name="month" value="${costEstimationInstance.month}"/>
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

<div class="fieldcontain ${hasErrors(bean: costEstimationInstance, field: 'deprecated', 'error')} ">
    <label for="deprecated">
        <g:message code="costEstimation.deprecated.label" default="Deprecated" />

    </label>
    <g:checkBox name="deprecated" value="${costEstimationInstance?.deprecated}" />
</div>

