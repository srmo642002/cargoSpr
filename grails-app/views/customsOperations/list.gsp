<%@ page import="cargo.insuranceCertificate.CustomsOperations" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'customsOperations.label', default: 'Customs Operations')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-customsOperations" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                    default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-customsOperations" ng-controller="customsOperationsController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:nest name='destination'>
            <rg:like name="title" label="Destination"/>
        </rg:nest>
        <rg:eq name='permitsNum' lable="Permit Num"/>
        <rg:filterGrid name='CustomsOperationsGrid' grid="CustomsOperationsGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.insuranceCertificate.CustomsOperations}"  columns="${[[name: "shipment"],[name: "transitType"],[name: "customsDate"],[name: "commodity"],[name: "transitMode"],[name: "permitsNum",formatter:'Integer'],[name: "kutazhNum",formatter:'Integer'],[name: "rowNum",formatter:'Integer'],[name: "origin"],[name: "destination"],[name: "oneSheetInsurance"],[name: "multiSheetInsurance"],[name: "receipt"]]}">
        <rg:criteria>
            <rg:eq name='shipment.id' value='${shipmentid}'/>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="customsOperations" title="Customs Operations Dialog">
        <rg:fields bean="${new cargo.insuranceCertificate.CustomsOperations()}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.insuranceCertificate.CustomsOperations}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create Shipment,Edit Shipment,Set MultiSheetInsur,Set OneSheetInsur,Set CustomsOperation">
        <input type="button" ng-click="openCustomsOperationsCreateDialog()" value="Create Customs Operations"/>
        <input type="button" ng-click="openCustomsOperationsEditDialog()" value="Edit Customs Operations"/>
    </sec:ifAnyGranted>
</div>

</body>
</html>
