<%@ page import="cargo.Truck" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'truck.label', default: 'Truck')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-truck" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-truck" ng-controller="truckController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <rg:criteria inline="true">
        <rg:like name='typeOfVehicle'/>
        <rg:like name='trademark'/>
        <rg:like name='trailerNumber'/>
        <rg:filterGrid name='TruckGrid' grid="TruckGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.Truck}"></rg:grid>
    <rg:dialog id="truck" title="Truck Dialog">
        <rg:fields bean="${new cargo.Truck()}"></rg:fields>
        <rg:saveButton domainClass="${cargo.Truck}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head BasicInfo,BasicInfo Operator">
        <input type="button" ng-click="openTruckCreateDialog()" value="Create Truck"/>
        <input type="button" ng-click="openTruckEditDialog()" value="Edit Truck"/>
    </sec:ifAnyGranted>
</div>
</body>
</html>
