<%@ page import="cargo.insuranceCertificate.InsuranceCert" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'insuranceCert.label', default: 'Insurance Specification')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-insuranceCert" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-insuranceCert" ng-controller="insuranceCertController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
<g:each in="${exps}" var="exp">
    <div class="message" role="status" style="font-family: times;font-size: medium;text-decoration-color: #b22222">${exp.code}</div>
</g:each>
    <rg:grid domainClass="${cargo.insuranceCertificate.InsuranceCert}" columns="${[[name: "code"],[name: "expireDate"],[name: "couponNumFrom",formatter:'Integer'],[name: "couponNumTo",formatter:'Integer'],[name: "totalCount",formatter:'Integer'],[name: "serialNumFrom",formatter:'Integer'],[name: "serialNumTo",formatter:'Integer'],[name: "remainedCount",formatter:'Integer']]}">
    </rg:grid>
    <rg:dialog id="insuranceCert" title="Insurance Specification Dialog">
        <rg:fields bean="${new cargo.insuranceCertificate.InsuranceCert()}">
            <rg:modify>
                <rg:ignoreField field="status"/>
                <rg:ignoreField field="remainedCount"/>
                <rg:ignoreField field="code"/>
                <rg:ignoreField field="expireDate"/>
                <rg:ignoreField field="assignedInsuranceCert"/>
                <rg:ignoreField field="usedInsuranceCert"/>
            </rg:modify>
            <input type="hidden" name="status" id="status" value="inactive">
            <input type="hidden" name="remainedCount">
            <input type="hidden" name="code">
            <input type="hidden" name="expireDate">
        </rg:fields>
        <rg:saveButton conroller="insuranceCert" action="save" domainClass="${cargo.insuranceCertificate.InsuranceCert}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Set PurchasedInsurSheet,Set AssignedInsurSheet">
        <input type="button" ng-click="openInsuranceCertCreateDialog()" value="Create Insurance Specification"/>
        <input type="button" ng-click="openInsuranceCertEditDialog()" value="Edit Insurance Specification"/>
    </sec:ifAnyGranted>

    <g:javascript>
        $("#insuranceCert").find("#couponNumFrom,#couponNumTo").keyup(function () {
            var couponNumTo = parseInt($("#insuranceCert").find("#couponNumTo").val())
            var couponNumFrom = parseInt($("#insuranceCert").find("#couponNumFrom").val())
            var tc = $("#insuranceCert").find("#totalCount").val(couponNumTo-couponNumFrom+1)
        })
        var exps='';
    <g:each in="${exps}" var="exp">
        exps+='${exp.code} ';
    </g:each>
        alert('Expiration Date Alarm for Purchase Code: '+exps)

    </g:javascript>
</div>

</body>
</html>
