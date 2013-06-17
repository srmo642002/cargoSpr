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
    <rg:grid domainClass="${cargo.insuranceCertificate.InsuranceCert}" columns="${[[name: "insuranceCo"],[name: "purchaseDate"],[name: "serialNumFrom",formatter:'Integer'],[name: "serialNumTo",formatter:'Integer'],[name: "totalCount",formatter:'Integer']]}">

    </rg:grid>
    <rg:dialog id="insuranceCert" title="Insurance Specification Dialog">
        <rg:fields bean="${new cargo.insuranceCertificate.InsuranceCert()}"></rg:fields>
        <rg:saveButton domainClass="${cargo.insuranceCertificate.InsuranceCert}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Secretary">
        <input type="button" ng-click="openInsuranceCertCreateDialog()" value="Create Insurance Specification"/>
        <input type="button" ng-click="openInsuranceCertEditDialog()" value="Edit Insurance Specification"/>
    </sec:ifAnyGranted>
</div>

</body>
</html>
