<%@ page import="cargo.cargoItem.AirCargoItem" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'airCargoItem.label', default: 'AirCargoItem')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-airCargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                   default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-airCargoItem" ng-controller="airCargoItemController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:like name='aircraft'/>
        <rg:like name='flightNum'/>
        <rg:filterGrid name='AirCargoItemGrid' grid="AirCargoItemGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.cargoItem.AirCargoItem}" caption="" width="1000px" maxColumns="15">
    </rg:grid>
    <rg:dialog id="airCargoItem" title="AirCargoItem Dialog">
        <rg:fields bean="${new cargo.cargoItem.AirCargoItem()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.cargoItem.AirCargoItem}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head Shipment Creator,Shipment Creator">
        <input type="button" ng-click="openAirCargoItemCreateDialog()" value="Create AirCargoItem"/>
        <input type="button" ng-click="openAirCargoItemEditDialog()" value="Edit AirCargoItem"/>
    </sec:ifAnyGranted>


</div>
</body>
</html>
