<%@ page import="cargo.freight.AirFreight" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'airFreight.label', default: 'AirFreight')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-airFreight" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-airFreight" ng-controller="airFreightController" class="content scaffold-list" role="main">
    <rg:criteria inline="true" id="AirFreightCriteria">
        <rg:nest name='airportDeparture'>
            <rg:like name="title" label="airportDeparture"/>
        </rg:nest>
        <rg:nest name='airportDestination'>
            <rg:like name="title" label="airportDestination"/>
        </rg:nest>
        <rg:filterGrid name='AirFreightGrid' grid="AirFreightGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_AirFreightCriteria').find("input[type=text]").val('')
                $('#criteria_AirFreightCriteria').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.freight.AirFreight}" caption="" width="800px" maxColumns="15">
    </rg:grid>
    <rg:dialog id="airFreight" title="AirFreight Dialog">
        <rg:fields bean="${new cargo.freight.AirFreight()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.AirFreight}" conroller="airFreight" action="saveAirFreight"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head Shipment Creator,Shipment Creator">
        <input type="button" ng-click="openAirFreightCreateDialog()" value="Create AirFreight"/>
        <input type="button" ng-click="openAirFreightEditDialog()" value="Edit AirFreight"/>
    </sec:ifAnyGranted>
</div>
</body>
</html>
