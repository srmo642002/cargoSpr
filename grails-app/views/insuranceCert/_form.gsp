<%@ page import="cargo.insuranceCertificate.InsuranceCert" %>



<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'insuranceCo', 'error')} ">
    <label for="insuranceCo">
        <g:message code="insuranceCert.insuranceCo.label" default="Insurance Co"/>

    </label>
    <g:textField name="insuranceCo" value="${insuranceCertInstance?.insuranceCo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'purchaseDate', 'error')} required">
    <label for="purchaseDate">
        <g:message code="insuranceCert.purchaseDate.label" default="Purchase Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="purchaseDate" precision="day" value="${insuranceCertInstance?.purchaseDate}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'totalCount', 'error')} required">
    <label for="totalCount">
        <g:message code="insuranceCert.totalCount.label" default="Total Count"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="totalCount" required="" value="${insuranceCertInstance.totalCount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'serialNumFrom', 'error')} required">
    <label for="serialNumFrom">
        <g:message code="insuranceCert.serialNumFrom.label" default="Serial Num From"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="serialNumFrom" required="" value="${insuranceCertInstance.serialNumFrom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: insuranceCertInstance, field: 'serialNumTo', 'error')} required">
    <label for="serialNumTo">
        <g:message code="insuranceCert.serialNumTo.label" default="Serial Num To"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="serialNumTo" required="" value="${insuranceCertInstance.serialNumTo}"/>
</div>

