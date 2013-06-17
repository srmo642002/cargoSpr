<%@ page import="cargo.insuranceCertificate.UsedInsuranceCert" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'usedInsuranceCert.label', default: 'Used Insurance Specification')}"/>
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

<div id="list-usedInsuranceCert" ng-controller="usedInsuranceCertController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
<<<<<<< HEAD
    <rg:grid domainClass="${cargo.insuranceCertificate.UsedInsuranceCert}" columns="${[[name: "assignedInsuranceCert"],[name: "usedDate"],[name: "shipment"],[name: "transitFrom"],[name: "transitTo"],[name: "serialNumFrom",formatter:'Integer'],[name: "serialNumTo",formatter:'Integer'],[name: "totalCount",formatter:'Integer'],[name: "totalCost",formatter:'Integer']]}">
=======
    <rg:grid domainClass="${cargo.insuranceCertificate.UsedInsuranceCert}" columns="${[[name: "assignedInsuranceCert"],[name: "usedDate"],[name: "shipment"],[name: "transitFrom"],[name: "transitTo"],[name: "serialNumFrom",formatter:'Integer'],[name: "serialNumTo",formatter:'Integer'],[name: "totalCount",formatter:'Integer'],[name: "totalCost"]]}">
>>>>>>> June
    </rg:grid>
    <rg:dialog id="usedInsuranceCert" title="Used Insurance Specification Dialog">
        <rg:fields bean="${new cargo.insuranceCertificate.UsedInsuranceCert()}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.insuranceCertificate.UsedInsuranceCert}" action="saveUsed" conroller="usedInsuranceCert"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Agent">
        <input type="button" ng-click="openUsedInsuranceCertCreateDialog()" value="Create Used Insurance Specification"/>
        <input type="button" ng-click="openUsedInsuranceCertEditDialog()" value="Edit Used Insurance Specification"/>
    </sec:ifAnyGranted>
</div>

</body>
</html>
