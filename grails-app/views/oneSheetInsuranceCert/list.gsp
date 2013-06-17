<%@ page import="cargo.insuranceCertificate.OneSheetInsuranceCert" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'OneSheetInsuranceCert.label', default: 'One Sheet Insurance Specification')}"/>
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

<div id="list-oneSheetInsuranceCert" ng-controller="oneSheetInsuranceCertController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <rg:grid domainClass="${cargo.insuranceCertificate.OneSheetInsuranceCert}" columns="${[[name: "insuranceNum",formatter:'Integer'],[name: "issueDate"],[name: "shipment"],[name: "transitFrom"],[name: "transitTo"],[name: "totalCost",formatter:'Integer']]}">
    </rg:grid>
    <rg:dialog id="oneSheetInsuranceCert" title="One Sheet Insurance Specification Dialog">
        <rg:fields bean="${new cargo.insuranceCertificate.OneSheetInsuranceCert()}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.insuranceCertificate.OneSheetInsuranceCert}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Agent">
        <input type="button" ng-click="openOneSheetInsuranceCertCreateDialog()" value="Create One Sheet Insurance Specification"/>
        <input type="button" ng-click="openOneSheetInsuranceCertEditDialog()" value="Edit One Sheet Insurance Specification"/>
    </sec:ifAnyGranted>
</div>

</body>
</html>
